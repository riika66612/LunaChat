package com.ruoyi.library.util;


import com.ruoyi.common.security.utils.SecurityUtils;
import com.ruoyi.system.api.model.LoginUser;
import org.springframework.stereotype.Component;

/**
 * 需要注入使用，获取当前用户id等信息
 */
@Component
public class tool {

    public LoginUser getLoginUser()
    {
        return SecurityUtils.getLoginUser();
    }
    /**
     * 获取登录用户id
     */
    public Long getUserId()
    {
        return getLoginUser().getUserid();
    }
}
