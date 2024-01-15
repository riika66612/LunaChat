package com.ruoyi.project.module.chatPage.vo;

import java.util.Date;

public class SpecialUser {
    // 用户ID
    private Long userId;
    // 用户名称
    private String userName;
    // 用户昵称
    private String nickName;
    // 用户邮箱
    private String email;
    // 用户手机号
    private String phonenumber;
    // 用户头像
    private String avatar;
    // 最后一条消息
    private String lastMsg;
    // 最后一条消息时间
    private String lastTime;
    // 是否有未读消息
    private String haveMsg;

    public SpecialUser() {
    }

    public SpecialUser(Long userId, String userName, String nickName, String email, String phonenumber, String avatar, String lastMsg, String lastTime) {
        this.userId = userId;
        this.userName = userName;
        this.nickName = nickName;
        this.email = email;
        this.phonenumber = phonenumber;
        this.avatar = avatar;
        this.lastMsg = lastMsg;
        this.lastTime = lastTime;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getLastMsg() {
        return lastMsg;
    }

    public void setLastMsg(String lastMsg) {
        this.lastMsg = lastMsg;
    }

    public String getLastTime() {
        return lastTime;
    }

    public void setLastTime(String lastTime) {
        this.lastTime = lastTime;
    }

    @Override
    public String toString() {
        return "specialUser{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", nickName='" + nickName + '\'' +
                ", email='" + email + '\'' +
                ", phonenumber='" + phonenumber + '\'' +
                ", avatar='" + avatar + '\'' +
                ", lastMsg='" + lastMsg + '\'' +
                ", lastTime=" + lastTime +
                '}';
    }
}
