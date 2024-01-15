package com.ruoyi.project.module.newFriend;

import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.project.domain.ChatFriend;
import com.ruoyi.project.service.IChatFriendService;
import com.ruoyi.system.api.model.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static com.ruoyi.common.security.utils.SecurityUtils.getLoginUser;

/**
 * 好友关系Controller
 *
 * @author kokor
 * @date 2023-09-20
 */
@RestController
@RequestMapping("/nf/friend")
public class NFChatFriendController extends BaseController {
    @Autowired
    private IChatFriendService chatFriendService;

    /**
     * 新增好友关系
     */
    //@RequiresPermissions("project:friend:add")
    @Log(title = "好友关系", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChatFriend chatFriend) {
        return toAjax(chatFriendService.insertChatFriend(chatFriend));
    }

    // 检查是否已添加该用户
    @GetMapping("/check/{friendId}")
    public Boolean check(@PathVariable("friendId") Long friendId) {
        // 获取当前登录用户
        LoginUser loginUser = getLoginUser();
        // 获取用户id
        Long userId = loginUser.getUserid();

        ChatFriend chatFriend = new ChatFriend();
        chatFriend.setUserId(userId);
        chatFriend.setFriendId(friendId);
        // 判断是否已添加该用户
        return chatFriendService.selectChatFriendList(chatFriend).size() > 0;
    }
}
