package com.ruoyi.library.msg.ws.domain;

/**
 * @Description : 消息体内容
 * @Author : young
 * @Date : 2022-08-08 22:36
 * @Version : 1.0
 **/
public class MsgBody {

    /**
      * 消息类型
      **/
    private String msgType;

    private String msgTitle;

    private String msgContent;

    private String unreadNums;

    public MsgBody() {
    }

    public String getMsgTitle() {
        return msgTitle;
    }

    public void setMsgTitle(String msgTitle) {
        this.msgTitle = msgTitle;
    }

    public String getMsgContent() {
        return msgContent;
    }

    public void setMsgContent(String msgContent) {
        this.msgContent = msgContent;
    }

    public String getMsgType() {
        return msgType;
    }

    public void setMsgType(String msgType) {
        this.msgType = msgType;
    }

    public String getUnreadNums() {
        return unreadNums;
    }

    public void setUnreadNums(String unreadNums) {
        this.unreadNums = unreadNums;
    }
}
