package com.ruoyi.library.msg.ws.service.impl;

import com.ruoyi.library.msg.common.CommonDefine;
import com.ruoyi.library.msg.mssage.domain.YhMsgInner;
import com.ruoyi.library.msg.mssage.service.IYhMsgInnerService;
import com.ruoyi.library.msg.mssage.service.IYhMsgRecordService;
import com.ruoyi.library.msg.mssage.service.MsgService;
import com.ruoyi.library.msg.ws.domain.MsgBody;
import com.ruoyi.library.msg.ws.server.WebSocketServer;
import com.ruoyi.library.msg.ws.service.WebSocketService;
import com.ruoyi.library.msg.ws.thread.PushMsgThread;
import com.ruoyi.library.msg.ws.thread.PushUnreadMsgThread;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description : WebSocketService实现类
 * @Author : young
 * @Date : 2022-07-30 9:43
 * @Version : 1.0
 **/
@Service
public class WebSocketServiceImpl implements WebSocketService {


    @Autowired
    private IYhMsgInnerService msgInnerService;

    @Autowired
    private IYhMsgRecordService msgRecordService;

    @Autowired
    private ThreadPoolTaskExecutor threadPoolTaskExecutor;

    @Autowired
    private MsgService msgService;

    @Override
    public void PushMsg(YhMsgInner msg, List<String> receiveNames) {
        // 由推送消息线程处理
        threadPoolTaskExecutor.submit(new PushMsgThread(msg, receiveNames, msgInnerService, msgRecordService));
    }

    @Override
    public void PushUnreadMsg(String userId) {
        // 由推送未读消息线程处理
        threadPoolTaskExecutor.submit(new PushUnreadMsgThread(msgService, userId));
    }

    @Override
    public void PushReadMsg(String userId){
        // 组合消息体
        MsgBody msgBody = new MsgBody();
        msgBody.setMsgType(CommonDefine.READ_MSG);

        // 发送消息
        List<String> receiveNames = new ArrayList<>();
        receiveNames.add(userId);
        WebSocketServer.sendMsgToUsers(receiveNames, msgBody);

    }
}
