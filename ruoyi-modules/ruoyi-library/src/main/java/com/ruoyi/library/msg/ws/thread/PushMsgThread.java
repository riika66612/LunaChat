package com.ruoyi.library.msg.ws.thread;

//import com.yinhe.common.utils.StringUtils;
import com.ruoyi.common.core.utils.StringUtils;
import com.ruoyi.library.msg.common.CommonDefine;
import com.ruoyi.library.msg.mssage.domain.YhMsgInner;
import com.ruoyi.library.msg.mssage.domain.YhMsgRecord;
import com.ruoyi.library.msg.mssage.service.IYhMsgInnerService;
import com.ruoyi.library.msg.mssage.service.IYhMsgRecordService;
import com.ruoyi.library.msg.ws.domain.MsgBody;
import com.ruoyi.library.msg.ws.server.WebSocketServer;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * @Description : 推送消息线程
 * @Author : young
 * @Date : 2022-11-07 11:43
 * @Version : 1.0
 **/
public class PushMsgThread implements Runnable{

    private IYhMsgInnerService msgInnerService;

    private IYhMsgRecordService msgRecordService;

    private YhMsgInner msg;

    private List<String> receiveNames;

    public PushMsgThread(YhMsgInner msg, List<String> receiveNames, IYhMsgInnerService msgInnerService, IYhMsgRecordService msgRecordService) {
        this.msg = msg;
        this.receiveNames = receiveNames;
        this.msgInnerService = msgInnerService;
        this.msgRecordService = msgRecordService;
    }

    @Override
    @Transactional
    public void run() {
        // 1.消息体校验
        if (!checkMsg(msg) || Objects.isNull(receiveNames)) {
            try {
                throw new Exception("消息数据异常");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // 2.增加时间
        Date date = new Date();
        msg.setSendDate(date);

        // 3.数据库存储
        // 存inner表
        msgInnerService.insertYhMsgInner(msg);
        // 存record表
        for (String receive : receiveNames) {
            YhMsgRecord msgRecord = new YhMsgRecord();
            msgRecord.setMsgInnerId(msg.getId());
            msgRecord.setReadStatus(CommonDefine.UNREAD);
            msgRecord.setReceiveUserName(receive);
            msgRecordService.insertYhMsgRecord(msgRecord);
        }

        // 4.消息通知
        String msgTitle = msg.getMsgTitle();
        String msgContent = msg.getMsgContent();

        // 组合消息体
        MsgBody msgBody = new MsgBody();
        msgBody.setMsgType(CommonDefine.PUSH_MSG);
        msgBody.setMsgTitle(msgTitle);
        msgBody.setMsgContent(msgContent);

        WebSocketServer.sendMsgToUsers(receiveNames, msgBody);
    }

    private boolean checkMsg(YhMsgInner msg) {
        if (Objects.isNull(msg)) {
            return false;
        }
        if (StringUtils.isEmpty(msg.getMsgTitle()) || StringUtils.isEmpty(msg.getMsgContent())
                || StringUtils.isEmpty(msg.getSendUserName())) {
            return false;
        }
        return true;
    }
}
