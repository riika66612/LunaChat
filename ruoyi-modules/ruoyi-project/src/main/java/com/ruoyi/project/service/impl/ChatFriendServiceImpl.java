package com.ruoyi.project.service.impl;

import com.ruoyi.project.domain.ChatFriend;
import com.ruoyi.project.mapper.ChatFriendMapper;
import com.ruoyi.project.service.IChatFriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 好友关系Service业务层处理
 *
 * @author kokor
 * @date 2023-09-20
 */
@Service
public class ChatFriendServiceImpl implements IChatFriendService {
    @Autowired
    private ChatFriendMapper chatFriendMapper;

    /**
     * 查询好友关系列表
     *
     * @param chatFriend 好友关系
     * @return 好友关系
     */
    @Override
    public List<ChatFriend> selectChatFriendList(ChatFriend chatFriend) {
        return chatFriendMapper.selectChatFriendList(chatFriend);
    }

    /**
     * 批量删除好友关系
     *
     * @param ids 需要删除的好友关系主键
     * @return 结果
     */
    @Override
    public int deleteChatFriendByIds(Long[] ids) {
        return chatFriendMapper.deleteChatFriendByIds(ids);
    }

    /**
     * 新增好友关系
     *
     * @param chatFriend 好友关系
     * @return 结果
     */
    @Override
    public int insertChatFriend(ChatFriend chatFriend) {
        return chatFriendMapper.insertChatFriend(chatFriend);
    }

    /**
     * 修改好友关系
     *
     * @param chatFriend 好友关系
     * @return 结果
     */
    @Override
    public int updateChatFriend(ChatFriend chatFriend) {
        return chatFriendMapper.updateChatFriend(chatFriend);
    }
}
