package com.ruoyi.library.msg.ws.server;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.nacos.shaded.com.google.gson.JsonObject;
import com.alibaba.nacos.shaded.com.google.gson.JsonParser;
import com.ruoyi.library.msg.ws.domain.MsgBody;
import com.ruoyi.library.msg.ws.service.WebSocketService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @Description : websocket服务
 * @Author : young
 * @Date : 2022-07-22 23:22
 * @Version : 1.0
 **/
@ServerEndpoint("/wsService/{userId}")
@Component
public class WebSocketServer {

    private static final Logger log = LoggerFactory.getLogger(WebSocketServer.class);

    // 存储设备唯一标识与session
    private static ConcurrentHashMap<String, WebSocketServer> map = new ConcurrentHashMap<>();

    private Session session;

    private String userId = "";

    private static WebSocketService webSocketService;

    static {
        log.info("websocket初始化");
    }

    @Autowired
    public void setWebSocketService(WebSocketService webSocketService) {
        this.webSocketService = webSocketService;
    }

    @OnOpen
    public void onOpen(Session session, @PathParam("userId") String userId) {
        this.session = session;
        this.userId = userId;
        System.out.println(session.toString());

        map.put(userId, this);

        log.info("用户" + userId + "连接，当前在线的用户数为" + map.size());

        // 向用户发送当前未读消息数
        webSocketService.PushUnreadMsg(userId);
    }

    @OnClose
    public void onClose() {
        map.remove(userId);
        log.info("用户" + userId + "连接关闭，当前在线的用户数为" + map.size());
    }

    //@OnMessage
    public void onMessage(String message, Session session) throws IOException {
        log.info("收到来自会话{}的消息{}", session, message);
        session.getBasicRemote().sendText(message);
    }

    @OnError
    public void onError(Session session, Throwable error) {
        log.error("用户" + this.userId + "错误,原因:" + error.getMessage());
        error.printStackTrace();
    }

    // 服务器发送消息
    public void sendMsg(String message) throws IOException {
        log.info("发送消息到用户:" + userId + ",消息内容:" + message);
        //this.session.getBasicRemote().sendText(message);
    }

    // 群发 -> 定点发送
    @OnMessage
    public void sendMessageToALL(String message) {
        //for (SendDeviceStatesWebSocket item : webSocketSet) {
        //    try {
        //
        //        item.sendMessage(message);
        //
        //    } catch (IOException e) {
        //        e.printStackTrace();
        //        continue;
        //    }
        //}
        System.out.println(message);
        // 使用JsonParser解析JSON字符串
        JsonParser jsonParser = new JsonParser();
        JsonObject jsonObject = jsonParser.parse(message).getAsJsonObject();
        //System.out.println(jsonObject);

        // 现在你可以访问JSON对象的属性
        String targetUser = jsonObject.get("userId").getAsString();
        System.out.println(targetUser);

        System.out.println(map.get(targetUser));
        if (map.get(targetUser) != null) {
            try {
                this.onMessage(message, map.get(targetUser).session);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        //for (Map.Entry<String, WebSocketServer> entry : map.entrySet()) {
        //    if (entry.getValue().getUserId().equals(targetUser)) {
        //        try {
        //            this.onMessage(message, entry.getValue().getSession());
        //        } catch (IOException e) {
        //            e.printStackTrace();
        //        }
        //        break;
        //    }
        //}
    }

    // 向用户推送json消息
    public static void sendMsgToUsers(List<String> userIds, MsgBody msgBody) {
        // json到string的转换
        String msg = JSONObject.toJSONString(msgBody);
        for (String userId : userIds) {
            if (map.containsKey(userId)) {
                WebSocketServer webSocketServer = map.get(userId);
                try {
                    webSocketServer.sendMsg(msg);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                // 用户不在线
                log.info("用户{}不在线", userId);
            }
        }
    }

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
