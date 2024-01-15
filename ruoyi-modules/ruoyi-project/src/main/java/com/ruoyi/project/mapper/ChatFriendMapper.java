package com.ruoyi.project.mapper;

import com.ruoyi.project.domain.ChatFriend;

import java.util.List;

/**
 * 好友关系Mapper接口
 * 
 * @author kokor
 * @date 2023-09-20
 */
public interface ChatFriendMapper 
{
    /**
     * 查询好友关系列表
     * 
     * @param chatFriend 好友关系
     * @return 好友关系集合
     */
    public List<ChatFriend> selectChatFriendList(ChatFriend chatFriend);

    /**
     * 批量删除好友关系
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChatFriendByIds(Long[] ids);

    /**
     * 新增好友关系
     *
     * @param chatFriend 好友关系
     * @return 结果
     */
    public int insertChatFriend(ChatFriend chatFriend);

    /**
     * 修改好友关系
     *
     * @param chatFriend 好友关系
     * @return 结果
     */
    public int updateChatFriend(ChatFriend chatFriend);
}
