package com.ruoyi.library.qywxlogin.tool;


/**
 * weixin url工具类
 * @author
 */
public class WeChatUtils { //是配置的企业微信授权URL

    // access_token获取地址
    public final static String QY_WEIXIN_ACCESS_TOKEN = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=CORPID&corpsecret=SECRECT";

    // 根据appid获取code
    public final static String QY_WEIXIN_OAUTH_URL = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=CORPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&agentid=AGENTID&state=STATE#wechat_redirect";

    // 根据access_token和code获取用户基本信息
    public final static String QY_WEIXIN_USERID_URL = "https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo?access_token=ACCESS_TOKEN&code=CODE";

    // 根据access_token和userid获取用户基本信息
    public final static String QY_WEIXIN_USERINFO_URL = "https://qyapi.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&userid=USERID";

    // 根据access_token推送消息
    public final static String QY_WEIXIN_MESSAGE_PUSH ="https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=ACCESS_TOKEN";

    // 拉取部门消息
    public final static String QY_WEIXIN_USERDEPT ="https://qyapi.weixin.qq.com/cgi-bin/department/list?access_token=ACCESS_TOKEN&id=ID";

}