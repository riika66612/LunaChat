package com.ruoyi.library.msg.ws.service;


import com.ruoyi.library.msg.mssage.domain.YhMsgInner;

import java.util.List;

public interface WebSocketService {

    /**
     *@Description : 推送消息
     *@Author : young
     *@Date : 2022-07-30 9:48
     *@Version : 1.0
     **/
    void PushMsg(YhMsgInner msg, List<String> receiveNames);

    /**
      * @Description: 推送未读消息
      * @Author: young
      * @Date: 2022-09-24 20:05
      **/
    void PushUnreadMsg(String userId);

    /**
      * @Description: 推送消息，表示已读一条
      * @Author: young
      * @Date: 2022-09-26 11:50
      **/
    void PushReadMsg(String userId);
}
