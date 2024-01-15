package com.ruoyi.library.msg.ws.domain;




import com.ruoyi.library.msg.mssage.domain.YhMsgInner;

import java.util.List;

/**
 * @Description : 推送的消息
 * @Author : young
 * @Date : 2022-07-30 9:36
 * @Version : 1.0
 **/
public class PushMsg {

    YhMsgInner msgInner;

    List<String> receiveNames;

    public YhMsgInner getMsgInner() {
        return msgInner;
    }

    public void setMsgInner(YhMsgInner msgInner) {
        this.msgInner = msgInner;
    }

    public List<String> getReceiveNames() {
        return receiveNames;
    }

    public void setReceiveNames(List<String> receiveNames) {
        this.receiveNames = receiveNames;
    }
}
