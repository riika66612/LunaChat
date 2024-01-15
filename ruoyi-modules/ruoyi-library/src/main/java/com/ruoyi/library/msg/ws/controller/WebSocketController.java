package com.ruoyi.library.msg.ws.controller;



import com.ruoyi.library.msg.mssage.domain.YhMsgInner;
import com.ruoyi.library.msg.ws.service.WebSocketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Description : 提供接口用以向用户推送消息
 * @Author : young
 * @Date : 2022-07-29 11:18
 * @Version : 1.0
 **/
@RestController
@RequestMapping("/yyg/ws")
public class WebSocketController {

    @Autowired
    public WebSocketService webSocketService;

    // 向用户推送消息
    @PostMapping(value = "/pushMsg")
    public void pushMsg(@RequestBody YhMsgInner msg, @RequestParam("receiveNames")  List<String> receiveNames) {
        // 1.组合消息体
        /*msg.setMsgTitle("1");
        msg.setMsgContent("1");
        msg.setSendUserName("admin");
        msg.setNote1("系统管理员");
        msg.setNote2("/demo/bills");
        msg.setMsgTitle("这里写标题");
        msg.setMsgContent("这里写内容");
        msg.setSendUserName("这里写发送者名字，填用户名就行");
        msg.setContentType("这里写内容类型，后续根据需要再确定");*/
        // 2.组合接收者列表
       //List<String> receiveNames = new ArrayList<>();
        // 这里根据需要添加你要通知的用户名 也就是user表的useName字段
        //receiveNames.add(receiveNames.get(0));
        //receiveNames.add("juzhang");
        // 3.调用服务
        webSocketService.PushMsg(msg, receiveNames);

        //webSocketService.PushMsg(pushMsg.getMsgInner(), pushMsg.getReceiveNames());
    }

}
