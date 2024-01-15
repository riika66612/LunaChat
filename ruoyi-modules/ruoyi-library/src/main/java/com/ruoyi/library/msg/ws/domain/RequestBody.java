package com.ruoyi.library.msg.ws.domain;

/**
 * @Description : 客户端向服务器的请求body
 * @Author : young
 * @Date : 2022-09-21 17:23
 * @Version : 1.0
 **/
public class RequestBody {
    String type;

    String userId;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
