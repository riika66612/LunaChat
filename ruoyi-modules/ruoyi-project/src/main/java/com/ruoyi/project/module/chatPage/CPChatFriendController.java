package com.ruoyi.project.module.chatPage;

import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.page.TableDataInfo;
import com.ruoyi.project.domain.ChatFriend;
import com.ruoyi.project.domain.ChatHistory;
import com.ruoyi.project.domain.ChatUser;
import com.ruoyi.project.module.chatPage.vo.SpecialUser;
import com.ruoyi.project.service.IChatFriendService;
import com.ruoyi.project.service.IChatHistoryService;
import com.ruoyi.project.service.IChatUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 好友关系Controller
 *
 * @author kokor
 * @date 2023-09-20
 */
@RestController
@RequestMapping("/cp/friend")
public class CPChatFriendController extends BaseController {
    @Autowired
    private IChatFriendService chatFriendService;
    @Autowired
    private IChatUserService sysUserService;
    @Autowired
    private IChatHistoryService chatHistoryService;

    /**
     * 查询好友关系列表
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/list")
    public TableDataInfo list(ChatFriend chatFriend) {
        List<ChatFriend> list = chatFriendService.selectChatFriendList(chatFriend);
        List<ChatUser> userList = new ArrayList<>();
        for (ChatFriend friend : list) {
            // 交叉查询
            ChatFriend chatFriend1 = new ChatFriend();
            chatFriend1.setUserId(friend.getFriendId());
            chatFriend1.setFriendId(friend.getUserId());
            // 两个人是好友
            if (chatFriendService.selectChatFriendList(chatFriend1).size() > 0) {
                // 获取该用户信息
                ChatUser user = sysUserService.selectUserById(friend.getFriendId());
                // 设置该好友有备注
                if (!friend.getFriendName().equals("")) {
                    // 设置备注
                    user.setNickName(friend.getFriendName());
                }
                // 将该用户的信息添加到列表
                userList.add(user);
            }
        }
        return getDataTable(userList);
    }

    /**
     * 查询好友关系列表 手机版
     */
    //@RequiresPermissions("project:friend:list")
    @GetMapping("/list/phone")
    public TableDataInfo listPhoneVersion(ChatUser chatUser) {
        ChatFriend chatFriend = new ChatFriend();
        chatFriend.setUserId(chatUser.getUserId());
        List<ChatFriend> list = chatFriendService.selectChatFriendList(chatFriend);
        List<SpecialUser> userList = new ArrayList<>();
        for (ChatFriend friend : list) {
            // 交叉查询
            ChatFriend chatFriend1 = new ChatFriend();
            chatFriend1.setUserId(friend.getFriendId());
            chatFriend1.setFriendId(friend.getUserId());
            // 两个人是好友
            if (chatFriendService.selectChatFriendList(chatFriend1).size() > 0) {
                chatUser.setUserId(friend.getFriendId());
                // 获取该用户信息
                List<ChatUser> chatUserList = sysUserService.selectUserListByPhone(chatUser);
                if (chatUserList.size() > 0) {
                    for (ChatUser user : chatUserList) {
                        // 设置该好友有备注
                        if (!friend.getFriendName().equals("")) {
                            // 设置备注
                            user.setNickName(friend.getFriendName());
                        }
                        // 新的特殊用户对象
                        SpecialUser specialUser = new SpecialUser();
                        specialUser.setUserId(user.getUserId());
                        specialUser.setUserName(user.getUserName());
                        specialUser.setNickName(user.getNickName());
                        specialUser.setEmail(user.getEmail());
                        specialUser.setPhonenumber(user.getPhonenumber());
                        specialUser.setAvatar(user.getAvatar());
                        // 查询两个人之间最后一条消息
                        ChatHistory chatHistory = new ChatHistory();
                        chatHistory.setUserId(friend.getUserId());
                        chatHistory.setReceiveId(friend.getFriendId());
                        List<ChatHistory> historyList = chatHistoryService.selectChatHistoryListTwoUserByDesc(chatHistory);
                        if (historyList.size() > 0) {
                            ChatHistory history = historyList.get(0);
                            specialUser.setLastMsg(history.getChatContent());
                            specialUser.setLastTime(changeTime(history.getChatTime()));
                        } else {
                            specialUser.setLastMsg("");
                            specialUser.setLastTime(null);
                        }
                        // 将该用户的信息添加到列表
                        userList.add(specialUser);
                    }
                }
            }
        }
        return getDataTable(userList);
    }

    public String changeTime(Date time){
        long timestampe = time.getTime();
        timestampe = timestampe + 8 * 60 * 60 * 1000;
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        return formatter.format(timestampe);
    }
}
