package com.ruoyi.library.qywxlogin.controller;

import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.security.utils.SecurityUtils;
import com.ruoyi.library.qywxlogin.tool.HttpInvoker;
import com.ruoyi.library.qywxlogin.tool.WeChatUtils;
import com.ruoyi.system.api.domain.SysUser;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;


import com.ruoyi.library.qywxlogin.tool.WeChatAccessTokenUtils;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 基本信息Controller
 * 
 * @author yinhe
 * @date 2023-01-28
 */
@RestController
@RequestMapping("/qywx")
public class QywxLoginController extends BaseController
{
    //@Autowired
    //private SysUserServiceImpl userService;

    @PostMapping("/authLogin/{code}")
    public AjaxResult getAccessToken(@PathVariable  String code) throws IOException {

        //服务是写死的
        //SysUserServiceImpl userService = new SysUserServiceImpl();
        //SysLoginService loginService = new SysLoginService();

        // String code_list[] = code.split("=");
        // code = code_list[1];

        // 接收参数
        System.out.println("code: "+code);

        AjaxResult ajax = null;
        //基础定义
        String corpid = "ww3c8d31017de5aa90";
        String corpsecret = "RYETl8kUJI8Nec1aWAGh9Q5wnRCC42UzaCuCq4aN5EQ";

        //获取参数
        //-------------------------------start------------------------------------------

        if(!(code==null||code.equals(""))){
            // 获取access_token json字符串
            String token = WeChatAccessTokenUtils.getAccessToken(corpid, corpsecret);
            System.out.println("token:"+token);
            String userId = "";
            // 根据access_token和code获取用户基本信息
            if (!(token==null||token.equals(""))) {
                // 获取用户基本信息url,code只能用一次,一次之后就会失效
                String userid_url = WeChatUtils.QY_WEIXIN_USERID_URL
                        .replace("ACCESS_TOKEN", token)
                        .replace("CODE", code);
                // 获取用户信息
                JSONObject userJson = HttpInvoker.exec(userid_url, "GET", null);
                System.out.println("userJson"+userJson);
                if(!(userJson==null||userJson.equals(""))) {
                    // 企业微信返回的json中有UserId参数
                    userId = String.valueOf(userJson.get("UserId"));
                    System.out.println("userid:"+userId);
                    // 该判断是为了兼容,容错
                    if (userId == null && userJson.containsKey("userId")) {
                        userId = userJson.getString("userId");

                    }
                }
            }
            //----------------------------------end---------------------------------------

            if(!(userId==null||userId.equals("")||userId.equals("null"))){//获取企业微信userId成功，登录系统
                SysUser user = new SysUser();
                user.setUserId(Long.valueOf(userId));
                user.setUserName(userId);//工号
                //-------------------------------start------------------------------------------

                // 微信认证地址,该地址会获取一个code,并且该地址只能在微信客户端中打开
                String userInfoUrl = WeChatUtils.QY_WEIXIN_USERINFO_URL
                        .replace("USERID", userId)
                        .replace("ACCESS_TOKEN", token);

                // 获取用户信息
                JSONObject userJson = HttpInvoker.exec(userInfoUrl, "GET", null);
                String name = userJson.getString("name");
                user.setNickName(name);//姓名

                //----------------------------------end---------------------------------------
                System.out.println("bug"+userId);
                //SysUser queryUser = userService.selectUserByUserName(userId);

/*                if (queryUser == null) {
                    //具体信息待补充
                    //SecurityUtils.encryptPassword("111111");
                    String password_str = SecurityUtils.encryptPassword("123456@bhu");
                    user.setPassword(password_str);
                    //user.setNickName("用户1");
                    Long[] roldids = {(long)1};
                    user.setRoleIds(roldids);
                    *//*user.setRoleId((long) 4);*//*
                    user.setDeptId((long)103);
                    userService.insertUser(user);//插入用户
                    System.out.println("插入用户成功");
                }*/

                // -----------------------------------------------------------
                //SysUser queryUser1 = userService.selectUserByUserName(userId);

                ajax = AjaxResult.success();
                // queryUser1.getPassword();
                // 生成令牌
                //String tokenNew = loginService.login(userId,  "123456@bhu");
                //ajax.put(Constants.TOKEN, tokenNew);
                ajax.put("username", userId);
                ajax.put("password", "123456@bhu");
                ajax.put("msg", "登录成功");

            }
        }
        return ajax;
    }

    //企业微信扫码登录后台，获取code
    @GetMapping("/getCode")
    public AjaxResult getCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //System.out.println(111115);
        //基础定义
        String corpid = "ww3c8d31017de5aa90";
        String redirectURI = "http://spsbyy.bhu.edu.cn/";		//重定向地址
        // 重定向的地址,需要是一个可以信任的域名,不然提示域名不可信
        String redirect_uri = "";
        try {
            // redirect_uri
            redirect_uri = URLEncoder.encode(redirectURI, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            System.out.println("错误！");
        }

        // 微信认证地址,该地址会获取一个code,并且该地址只能在微信客户端中打开
        String oauthUrl = WeChatUtils.QY_WEIXIN_OAUTH_URL
                .replace("CORPID", corpid)
                .replace("REDIRECT_URI", redirect_uri);
        // 需要把该地址复制到微信客户端中打开链接, 微信会根据redirect_uri参数自动跳转地址

        // 重定向,该地址一定要在微信客户端里才能打开
        //System.out.println(1111);
        response.sendRedirect(oauthUrl);
        //writeFile("./log.txt","Time"+new Date());
        JSONObject userJson = HttpInvoker.exec(oauthUrl, "GET", null);
        String code = (String) userJson.get("code");
//        response.sendRedirect("/");
        return success("succ");
    }

}
