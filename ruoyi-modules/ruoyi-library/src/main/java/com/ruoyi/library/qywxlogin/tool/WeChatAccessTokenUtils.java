package com.ruoyi.library.qywxlogin.tool;


import com.alibaba.fastjson2.JSONObject;

/**
 * 获取access_token工具类
 * @author
 *
 */
public class WeChatAccessTokenUtils {

    /**
     * @param corpid 企业号的标识
     * @param corpsecret 管理组凭证密钥
     * @return
     * @throws @description: 获取AccessToken
     * @author:
     * @date:
     */
    public static String getAccessTokenByCorp(String corpid, String corpsecret) {

        //获取当前时间戳
        long currentTimeMillis = System.currentTimeMillis();

        //获取路径,然后替换具体的参数
        String GET_ACCESS_TOKEN_URL = WeChatUtils.QY_WEIXIN_ACCESS_TOKEN;
        String requestUrl = GET_ACCESS_TOKEN_URL.replace("CORPID", corpid).replace("SECRECT", corpsecret);
        JSONObject json = HttpInvoker.exec(requestUrl, "GET", null);
        String token = null;
        if (json != null) {
            try {
                //设置到期时间
                json.put("expire_time", currentTimeMillis + 7200);
                //保存到文件access_token.json
                JsonUtils.saveDataToFile("access_token", json.toString());

                token = json.getString("access_token");
                // 打印消息
                String message = String.format("获取token成功  access token: %s, expire_in: %s", json.getString("access_token"),json.getInteger("expires_in"));
            } catch (Exception e) {
                String error = String.format("获取token失败    errcode: %s ,errmsg: %s", json.getInteger("errcode"),json.getString("errmsg"));
            }
        }

        return token;
    }

    /**
     * @return
     * @throws @description: 获取AccessToken
     * @author:
     * @date:
     */
    public static String getAccessToken(String corpid, String corpsecret) {

        String token = JsonUtils.getDatafromFile("access_token");
        if(token == null || token.length() == 0) {

            String message = String.format("获取文件access_token失败");
            return getAccessTokenByCorp(corpid, corpsecret);
        }
        JSONObject json = JSONObject.parseObject(token);
        if (json != null) {
            try {
                long expire_time = json.getLong("expire_time");
                if(expire_time > System.currentTimeMillis()) {
                    token = json.getString("access_token");
                    // 打印消息
                    String message = String.format("从文件获取token成功  access token: %s, expire_in: %s", json.getString("access_token"), json.getInteger("expires_in"));
                } else {
                    //已到期，重新获取
                    return getAccessTokenByCorp(corpid, corpsecret);
                }
            } catch (Exception e) {
                String error = String.format("从文件获取token失败    errcode: %s ,errmsg: %s", json.getInteger("errcode"),json.getString("errmsg"));
            }
        } else {
            String error = String.format("从文件获取token失败，json转换失败。json: %s", token);
            //重新获取
            return getAccessTokenByCorp(corpid, corpsecret);
        }

        return token;
    }
}
