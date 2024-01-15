package com.ruoyi.project.module.friendManage;

import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.web.page.TableDataInfo;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.project.domain.ChatFriend;
import com.ruoyi.project.domain.ChatUser;
import com.ruoyi.project.service.IChatFriendService;
import com.ruoyi.project.service.IChatUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 好友关系Controller
 *
 * @author kokor
 * @date 2023-09-20
 */
@RestController
@RequestMapping("/fm/friend")
public class FMChatFriendController extends BaseController {
    @Autowired
    private IChatFriendService chatFriendService;

    @Autowired
    private IChatUserService sysUserService;

    /**
     * 查询好友申请列表
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/list/new")
    public TableDataInfo listNew(ChatFriend chatFriend) {
        List<ChatFriend> list = chatFriendService.selectChatFriendList(chatFriend);
        // 请求列表
        List<ChatUser> userList = new ArrayList<>();
        for (ChatFriend friend : list) {
            // 交换查询
            ChatFriend cF = new ChatFriend();
            cF.setUserId(friend.getFriendId());
            cF.setFriendId(friend.getUserId());
            // 已是好友
            if (chatFriendService.selectChatFriendList(cF).size() > 0) {
                // 跳过
                continue;
            } else {
                // 否则，添加用户信息到列表
                userList.add(sysUserService.selectUserById(friend.getUserId()));
            }
        }
        // 返回请求列表
        return getDataTable(userList);
    }

    /**
     * 查询好友列表
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/list")
    public TableDataInfo list(ChatUser chatUser) {
        ChatFriend chatFriend = new ChatFriend();
        chatFriend.setUserId(chatUser.getUserId());
        // 好友列表
        List<ChatFriend> list = chatFriendService.selectChatFriendList(chatFriend);
        // 好友信息列表
        List<ChatUser> userList = new ArrayList<>();
        for (ChatFriend friend : list) {
            // 交换查询
            ChatFriend cF = new ChatFriend();
            cF.setUserId(friend.getFriendId());
            cF.setFriendId(friend.getUserId());
            // 已是好友
            if (chatFriendService.selectChatFriendList(cF).size() > 0) {
                chatUser.setUserId(friend.getFriendId());
                // 查到的好友信息列表
                List<ChatUser> users = sysUserService.selectUserList(chatUser);
                // 如果查到相关好友
                if (users.size() > 0) {
                    // 最多只有一条记录
                    ChatUser user = users.get(0);
                    // 判断这个人有没有备注
                    if (!friend.getFriendName().equals("")) {
                        // 有就把用户昵称设为备注
                        user.setNickName(friend.getFriendName());
                        // 添加到好友列表中
                        userList.add(user);
                    } else {
                        // 没有备注就直接添加到好友列表中
                        userList.add(user);
                    }
                } else {
                    // 如果没查到，直接添加用户信息到好友列表（添加空列表）
                    userList.addAll(users);
                }
            }
        }
        // 返回好友列表
        return getDataTable(userList);
    }

    /**
     * 查询好友列表 手机版
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/list/phone")
    public TableDataInfo listPhoneVersion(ChatUser chatUser) {
        ChatFriend chatFriend = new ChatFriend();
        chatFriend.setUserId(chatUser.getUserId());
        // 好友列表
        List<ChatFriend> list = chatFriendService.selectChatFriendList(chatFriend);
        // 好友信息列表
        List<ChatUser> userList = new ArrayList<>();
        for (ChatFriend friend : list) {
            // 交换查询
            ChatFriend cF = new ChatFriend();
            cF.setUserId(friend.getFriendId());
            cF.setFriendId(friend.getUserId());
            // 已是好友
            if (chatFriendService.selectChatFriendList(cF).size() > 0) {
                chatUser.setUserId(friend.getFriendId());
                // 查到的好友信息列表
                List<ChatUser> users = sysUserService.selectUserListByPhone(chatUser);
                // 如果查到相关好友
                if (users.size() > 0) {
                    // 最多只有一条记录
                    ChatUser user = users.get(0);
                    // 判断这个人有没有备注
                    if (!friend.getFriendName().equals("")) {
                        // 有就把用户昵称设为备注
                        user.setNickName(friend.getFriendName());
                        // 添加到好友列表中
                        userList.add(user);
                    } else {
                        // 没有备注就直接添加到好友列表中
                        userList.add(user);
                    }
                } else {
                    // 如果没查到，直接添加用户信息到好友列表（添加空列表）
                    userList.addAll(users);
                }
            }
        }
        // 返回好友列表
        return getDataTable(userList);
    }

    /**
     * 拒绝好友申请
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/refuse")
    public void refuse(ChatFriend chatFriend) {
        Long[] userId = new Long[1];
        // 获取好友请求记录的ID
        userId[0] = chatFriendService.selectChatFriendList(chatFriend).get(0).getId();
        // 删除该记录
        remove(userId);
    }

    /**
     * 删除好友关系
     */
    //@RequiresPermissions("project:friend:remove")
    @Log(title = "好友关系", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(chatFriendService.deleteChatFriendByIds(ids));
    }

    /**
     * 删除好友
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/delete")
    public void deleteFriend(ChatFriend chatFriend) {
        Long[] userId = new Long[2];
        // 获取其中一方的好友关系ID
        userId[0] = chatFriendService.selectChatFriendList(chatFriend).get(0).getId();
        // 交换ID
        Long friendId = chatFriend.getFriendId();
        chatFriend.setFriendId(chatFriend.getUserId());
        chatFriend.setUserId(friendId);
        // 获取另一方的好友关系ID
        userId[1] = chatFriendService.selectChatFriendList(chatFriend).get(0).getId();
        // 删除好友关系
        remove(userId);
    }

    /**
     * 新增好友关系
     */
    //@RequiresPermissions("project:friend:add")
    @Log(title = "好友关系", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChatFriend chatFriend) {
        return toAjax(chatFriendService.insertChatFriend(chatFriend));
    }

    /**
     * 修改好友备注
     */
    //@RequiresPermissions("project:friend:edit")
    @Log(title = "好友备注", businessType = BusinessType.UPDATE)
    @PutMapping("/noteName")
    public void changeName(@RequestBody ChatFriend chatFriend) {
        // 取出新备注
        String newFriendName = chatFriend.getFriendName();
        // 查询出对应关系
        chatFriend.setFriendName("");
        ChatFriend friend = chatFriendService.selectChatFriendList(chatFriend).get(0);
        // 设置新备注
        friend.setFriendName(newFriendName);
        // 更新库
        chatFriendService.updateChatFriend(friend);
    }
}
