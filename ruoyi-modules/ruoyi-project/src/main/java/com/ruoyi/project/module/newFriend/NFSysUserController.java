package com.ruoyi.project.module.newFriend;

import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.page.TableDataInfo;
import com.ruoyi.project.domain.ChatUser;
import com.ruoyi.project.service.IChatUserService;
import com.ruoyi.system.api.model.LoginUser;
import com.ruoyi.project.domain.ChatFriend;
import com.ruoyi.project.service.IChatFriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

import static com.ruoyi.common.security.utils.SecurityUtils.getLoginUser;

/**
 * 用户信息
 *
 * @author kokor
 */
@RestController
@RequestMapping("/nf/user")
public class NFSysUserController extends BaseController {
    @Autowired
    private IChatUserService userService;

    @Autowired
    private IChatFriendService chatFriendService;

    /**
     * 获取用户列表
     */
    //@RequiresPermissions("system:user:list")
    @GetMapping("/list")
    public TableDataInfo list(ChatUser user) {
        // 分页
        //startPage();
        // 全体用户列表
        List<ChatUser> list = userService.selectUserList(user);
        // 好友ID列表
        List<Long> friendIdList = listFriend();
        List<ChatUser> userList = new ArrayList<>();
        for (ChatUser chatUser : list) {
            if (!friendIdList.contains(chatUser.getUserId())) {
                userList.add(chatUser);
            }
        }
        return getDataTable(userList);
    }

    /**
     * 获取用户列表 手机版
     */
    //@RequiresPermissions("system:user:list")
    @GetMapping("/list/phone")
    public TableDataInfo listPhoneVersion(ChatUser user) {
        // 分页
        //startPage();
        // 全体用户列表
        List<ChatUser> list = userService.selectUserListByPhone(user);
        // 好友ID列表
        List<Long> friendIdList = listFriend();
        List<ChatUser> userList = new ArrayList<>();
        for (ChatUser chatUser : list) {
            if (!friendIdList.contains(chatUser.getUserId())) {
                userList.add(chatUser);
            }
        }
        return getDataTable(userList);
    }

    // 获取添加过的用户列表
    public List<Long> listFriend() {
        // 获取当前登录用户id
        LoginUser loginUser = getLoginUser();
        Long userId = loginUser.getSysUser().getUserId();

        ChatFriend chatFriend = new ChatFriend();
        chatFriend.setUserId(userId);
        // 获取当前用户已添加过的好友（包括：已通过、已发送请求但对方未审核的）
        List<ChatFriend> list = chatFriendService.selectChatFriendList(chatFriend);
        // ID列表
        List<Long> idList = new ArrayList<>();
        for (ChatFriend friend : list) {
            idList.add(friend.getFriendId());
        }
        return idList;
    }
}
