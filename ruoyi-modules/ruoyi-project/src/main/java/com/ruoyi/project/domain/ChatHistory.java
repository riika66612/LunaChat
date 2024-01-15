package com.ruoyi.project.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 聊天记录对象 chat_history
 * 
 * @author kokor
 * @date 2023-09-19
 */
public class ChatHistory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 发送人id */
    @Excel(name = "发送人id")
    private Long userId;

    /** 接收人id */
    @Excel(name = "接收人id")
    private Long receiveId;

    /** 发送内容 */
    @Excel(name = "发送内容")
    private String chatContent;

    /** 发送时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "发送时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date chatTime;

    /** 阅读状态 */
    @Excel(name = "阅读状态")
    private String readStatus;

    /** 阅读时间 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "阅读时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    private Date readTime;

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

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setReceiveId(Long receiveId) 
    {
        this.receiveId = receiveId;
    }

    public Long getReceiveId() 
    {
        return receiveId;
    }
    public void setChatContent(String chatContent) 
    {
        this.chatContent = chatContent;
    }

    public String getChatContent() 
    {
        return chatContent;
    }
    public void setChatTime(Date chatTime) 
    {
        this.chatTime = chatTime;
    }

    public Date getChatTime() 
    {
        return chatTime;
    }
    public void setReadStatus(String readStatus) 
    {
        this.readStatus = readStatus;
    }

    public String getReadStatus() 
    {
        return readStatus;
    }
    public void setReadTime(Date readTime) 
    {
        this.readTime = readTime;
    }

    public Date getReadTime() 
    {
        return readTime;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("receiveId", getReceiveId())
            .append("chatContent", getChatContent())
            .append("chatTime", getChatTime())
            .append("readStatus", getReadStatus())
            .append("readTime", getReadTime())
            .append("note1", getNote1())
            .append("note2", getNote2())
            .append("note3", getNote3())
            .append("note4", getNote4())
            .append("note5", getNote5())
            .toString();
    }
}
