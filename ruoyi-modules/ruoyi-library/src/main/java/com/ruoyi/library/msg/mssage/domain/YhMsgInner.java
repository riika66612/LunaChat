package com.ruoyi.library.msg.mssage.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
/*import com.yinhe.common.annotation.Excel;
import com.yinhe.common.core.domain.BaseEntity;*/
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 内部消息对象 yh_msg_inner
 * 
 * @author yinhe
 * @date 2022-08-06
 */
public class YhMsgInner extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 消息标题 */
    @Excel(name = "消息标题")
    private String msgTitle;

    /** 内容级别 */
    @Excel(name = "内容级别")
    private String contentLevel;

    /** 内容类型 */
    @Excel(name = "内容类型")
    private String contentType;

    /** 消息内容 */
    @Excel(name = "消息内容")
    private String msgContent;

    /** 接受者类型 */
    @Excel(name = "接受者类型")
    private String receiveType;

    /** 接受者字符串 */
    @Excel(name = "接受者字符串")
    private String receiveCodes;

    /** 接受者名称字符串 */
    @Excel(name = "接受者名称字符串")
    private String receiveNames;

    /** 发送者用户编码 */
    @Excel(name = "发送者用户编码")
    private String sendUserCode;

    /** 发送者用户姓名 */
    @Excel(name = "发送者用户姓名")
    private String sendUserName;

    /** 发送时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "发送时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date sendDate;

    /** 是否有附件 */
    @Excel(name = "是否有附件")
    private String isAttac;

    /** 通知类型 */
    @Excel(name = "通知类型")
    private String notifyTypes;

    /** 状态 */
    @Excel(name = "状态")
    private String status;

    /** 备注1 */
    @Excel(name = "备注")
    private String note;

    /** 备注1 */
    @Excel(name = "备注1")
    private String note1;

    /** 备注2 */
    @Excel(name = "备注2")
    private String note2;

    /** 备注3 */
    @Excel(name = "备注3")
    private String note3;

    /** 备注4 */
    @Excel(name = "备注4")
    private String note4;

    /** 备注5 */
    @Excel(name = "备注5")
    private String note5;

    /** 备注6 */
    @Excel(name = "备注6")
    private String note6;

    /** 备注7 */
    @Excel(name = "备注7")
    private String note7;

    /** 备注8 */
    @Excel(name = "备注8")
    private String note8;

    /** 备注9 */
    @Excel(name = "备注9")
    private String note9;

    /** 备注10 */
    @Excel(name = "备注10")
    private String note10;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setMsgTitle(String msgTitle) 
    {
        this.msgTitle = msgTitle;
    }

    public String getMsgTitle() 
    {
        return msgTitle;
    }
    public void setContentLevel(String contentLevel) 
    {
        this.contentLevel = contentLevel;
    }

    public String getContentLevel() 
    {
        return contentLevel;
    }
    public void setContentType(String contentType) 
    {
        this.contentType = contentType;
    }

    public String getContentType() 
    {
        return contentType;
    }
    public void setMsgContent(String msgContent) 
    {
        this.msgContent = msgContent;
    }

    public String getMsgContent() 
    {
        return msgContent;
    }
    public void setReceiveType(String receiveType) 
    {
        this.receiveType = receiveType;
    }

    public String getReceiveType() 
    {
        return receiveType;
    }
    public void setReceiveCodes(String receiveCodes) 
    {
        this.receiveCodes = receiveCodes;
    }

    public String getReceiveCodes() 
    {
        return receiveCodes;
    }
    public void setReceiveNames(String receiveNames) 
    {
        this.receiveNames = receiveNames;
    }

    public String getReceiveNames() 
    {
        return receiveNames;
    }
    public void setSendUserCode(String sendUserCode) 
    {
        this.sendUserCode = sendUserCode;
    }

    public String getSendUserCode() 
    {
        return sendUserCode;
    }
    public void setSendUserName(String sendUserName) 
    {
        this.sendUserName = sendUserName;
    }

    public String getSendUserName() 
    {
        return sendUserName;
    }
    public void setSendDate(Date sendDate) 
    {
        this.sendDate = sendDate;
    }

    public Date getSendDate() 
    {
        return sendDate;
    }
    public void setIsAttac(String isAttac) 
    {
        this.isAttac = isAttac;
    }

    public String getIsAttac() 
    {
        return isAttac;
    }
    public void setNotifyTypes(String notifyTypes) 
    {
        this.notifyTypes = notifyTypes;
    }

    public String getNotifyTypes() 
    {
        return notifyTypes;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setNote1(String note1) 
    {
        this.note1 = note1;
    }

    public String getNote1() 
    {
        return note1;
    }
    public void setNote2(String note2) 
    {
        this.note2 = note2;
    }

    public String getNote2() 
    {
        return note2;
    }
    public void setNote3(String note3) 
    {
        this.note3 = note3;
    }

    public String getNote3() 
    {
        return note3;
    }
    public void setNote4(String note4) 
    {
        this.note4 = note4;
    }

    public String getNote4() 
    {
        return note4;
    }
    public void setNote5(String note5) 
    {
        this.note5 = note5;
    }

    public String getNote5() 
    {
        return note5;
    }
    public void setNote6(String note6) 
    {
        this.note6 = note6;
    }

    public String getNote6() 
    {
        return note6;
    }
    public void setNote7(String note7) 
    {
        this.note7 = note7;
    }

    public String getNote7() 
    {
        return note7;
    }
    public void setNote8(String note8) 
    {
        this.note8 = note8;
    }

    public String getNote8() 
    {
        return note8;
    }
    public void setNote9(String note9) 
    {
        this.note9 = note9;
    }

    public String getNote9() 
    {
        return note9;
    }
    public void setNote10(String note10) 
    {
        this.note10 = note10;
    }

    public String getNote10() 
    {
        return note10;
    }


    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("msgTitle", getMsgTitle())
            .append("contentLevel", getContentLevel())
            .append("contentType", getContentType())
            .append("msgContent", getMsgContent())
            .append("receiveType", getReceiveType())
            .append("receiveCodes", getReceiveCodes())
            .append("receiveNames", getReceiveNames())
            .append("sendUserCode", getSendUserCode())
            .append("sendUserName", getSendUserName())
            .append("sendDate", getSendDate())
            .append("isAttac", getIsAttac())
            .append("notifyTypes", getNotifyTypes())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("note", getNote())
            .append("note1", getNote1())
            .append("note2", getNote2())
            .append("note3", getNote3())
            .append("note4", getNote4())
            .append("note5", getNote5())
            .append("note6", getNote6())
            .append("note7", getNote7())
            .append("note8", getNote8())
            .append("note9", getNote9())
            .append("note10", getNote10())
            .toString();
    }
}
