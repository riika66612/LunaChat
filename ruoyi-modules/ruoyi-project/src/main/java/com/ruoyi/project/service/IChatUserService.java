package com.ruoyi.project.service;

import com.ruoyi.project.domain.ChatUser;

import java.util.List;

/**
 * 用户 业务层
 * 
 * @author ruoyi
 */
public interface IChatUserService
{
    /**
     * 根据条件分页查询用户列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    public List<ChatUser> selectUserList(ChatUser user);

    // 仅通过手机号单一字段里的数据，查询用户名或手机号
    public List<ChatUser> selectUserListByPhone(ChatUser user);

    /**
     * 通过用户ID查询用户
     * 
     * @param userId 用户ID
     * @return 用户对象信息
     */
    public ChatUser selectUserById(Long userId);

    /**
     * 修改用户头像
     *
     * @param userName 用户名
     * @param avatar 头像地址
     * @return 结果
     */
    public boolean updateUserAvatar(String userName, String avatar);
}
