package com.ruoyi.library.msg.ws.thread;

import com.ruoyi.library.msg.common.CommonDefine;
import com.ruoyi.library.msg.mssage.domain.MsgDomain;
import com.ruoyi.library.msg.mssage.service.MsgService;
import com.ruoyi.library.msg.ws.domain.MsgBody;
import com.ruoyi.library.msg.ws.server.WebSocketServer;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description : 推送未读消息数线程
 * @Author : young
 * @Date : 2022-11-07 12:07
 * @Version : 1.0
 **/
public class PushUnreadMsgThread implements Runnable{
    private MsgService msgService;

    private String userId;

    public PushUnreadMsgThread(MsgService msgService, String userId) {
        this.msgService = msgService;
        this.userId = userId;
    }

    @Override
    public void run() {
        // 查询用户未读消息数
        MsgDomain msgDomain = new MsgDomain();
        msgDomain.setReceiveUserName(userId);
        msgDomain.setReadStatus(CommonDefine.UNREAD);
        List<MsgDomain> list = msgService.selectMsgList(msgDomain);
        int unreadNums = list.size();

        // 组合消息体
        MsgBody msgBody = new MsgBody();
        msgBody.setMsgType(CommonDefine.UNREAD_MSG);
        msgBody.setUnreadNums(String.valueOf(unreadNums));

        // 发送消息
        List<String> receiveNames = new ArrayList<>();
        receiveNames.add(userId);
        WebSocketServer.sendMsgToUsers(receiveNames, msgBody);
    }
}
