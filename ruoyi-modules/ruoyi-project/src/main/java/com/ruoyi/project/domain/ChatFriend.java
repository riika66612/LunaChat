package com.ruoyi.project.domain;

import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 好友关系对象 chat-friend
 * 
 * @author kokor
 * @date 2023-09-20
 */
public class ChatFriend extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 好友id */
    @Excel(name = "好友id")
    private Long friendId;

    /** 好友备注 */
    @Excel(name = "好友备注")
    private String friendName;

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
    public void setFriendId(Long friendId) 
    {
        this.friendId = friendId;
    }

    public Long getFriendId() 
    {
        return friendId;
    }
    public void setFriendName(String friendName) 
    {
        this.friendName = friendName;
    }

    public String getFriendName() 
    {
        return friendName;
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
            .append("friendId", getFriendId())
            .append("friendName", getFriendName())
            .append("note1", getNote1())
            .append("note2", getNote2())
            .append("note3", getNote3())
            .append("note4", getNote4())
            .append("note5", getNote5())
            .toString();
    }
}
