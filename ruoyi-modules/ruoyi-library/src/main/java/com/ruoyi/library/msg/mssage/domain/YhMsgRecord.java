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
 * 内部消息发送记录对象 yh_msg_record
 * 
 * @author yinhe
 * @date 2022-08-30
 */
public class YhMsgRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 所属消息 */
    @Excel(name = "所属消息")
    private Long msgInnerId;

    /** 接受者用户编码 */
    @Excel(name = "接受者用户编码")
    private String receiveUserCode;

    /** 接受者用户姓名 */
    @Excel(name = "接受者用户姓名")
    private String receiveUserName;

    /** 读取状态 */
    @Excel(name = "读取状态")
    private String readStatus;

    /** 阅读时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "阅读时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date readDate;

    /** 是否标星 */
    @Excel(name = "是否标星")
    private String isStar;

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
    public void setMsgInnerId(Long msgInnerId)
    {
        this.msgInnerId = msgInnerId;
    }

    public Long getMsgInnerId()
    {
        return msgInnerId;
    }
    public void setReceiveUserCode(String receiveUserCode) 
    {
        this.receiveUserCode = receiveUserCode;
    }

    public String getReceiveUserCode() 
    {
        return receiveUserCode;
    }
    public void setReceiveUserName(String receiveUserName) 
    {
        this.receiveUserName = receiveUserName;
    }

    public String getReceiveUserName() 
    {
        return receiveUserName;
    }
    public void setReadStatus(String readStatus) 
    {
        this.readStatus = readStatus;
    }

    public String getReadStatus() 
    {
        return readStatus;
    }
    public void setReadDate(Date readDate) 
    {
        this.readDate = readDate;
    }

    public Date getReadDate() 
    {
        return readDate;
    }
    public void setIsStar(String isStar) 
    {
        this.isStar = isStar;
    }

    public String getIsStar() 
    {
        return isStar;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("msgInnerId", getMsgInnerId())
            .append("receiveUserCode", getReceiveUserCode())
            .append("receiveUserName", getReceiveUserName())
            .append("readStatus", getReadStatus())
            .append("readDate", getReadDate())
            .append("isStar", getIsStar())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
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
