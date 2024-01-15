package com.ruoyi.library.qywxlogin.controller;

import com.ruoyi.library.qywxlogin.tool.HttpUtils;
import com.ruoyi.library.qywxlogin.tool.WeChatAccessTokenUtils;
import com.ruoyi.library.qywxlogin.tool.WeChatUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class WeChatMassage {

    // 修改这里：方法参数可以更加内容进行修改，userid是必备的
    public static void sendWeChatMassage(String userId) throws JSONException {

        System.out.println(userId);

        //基础企业信息和secret
        String corpid = "ww3c8d31017de5aa90";
        String corpsecret = "RYETl8kUJI8Nec1aWAGh9Q5wnRCC42UzaCuCq4aN5EQ";//设备预约系统，已经修改好

        // 获取access_token json字符串
        String accessToken = WeChatAccessTokenUtils.getAccessToken(corpid, corpsecret);
        // 发送应用消息
        String userid_url = WeChatUtils.QY_WEIXIN_MESSAGE_PUSH
                .replace("ACCESS_TOKEN", accessToken);

        JSONObject obj1 = new JSONObject();

        // 修改这里：可以根据userid查询用户其他信息，例如用姓名等 待完善

        // 修改这里：消息内容自己拼接

        // 接口文档地址：https://developer.work.weixin.qq.com/document/path/90236

        obj1.put("content", "【滨海座位预约系统消息】"+"这里写姓名getname()"+" ("+userId+") "+"你好，你离开座位时间过长，请尽快回到座位，谢谢合作");

        JSONObject obj = new JSONObject();

        obj.put("touser", userId);
        obj.put("msgtype", "text");
        obj.put("agentid", "1000185");//设备预约系统，已经修改好
        obj.put("text", obj1);

        // 执行消息推送
        HttpUtils.sendPost(userid_url, obj.toString());

    }
}
