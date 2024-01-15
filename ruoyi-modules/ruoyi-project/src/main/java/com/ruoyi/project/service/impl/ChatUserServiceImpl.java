package com.ruoyi.project.service.impl;

import com.ruoyi.project.domain.ChatUser;
import com.ruoyi.project.mapper.ChatUserMapper;
import com.ruoyi.project.service.IChatUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.Validator;
import java.util.List;

/**
 * 用户 业务层处理
 *
 * @author ruoyi
 */
@Service
public class ChatUserServiceImpl implements IChatUserService {
    private static final Logger log = LoggerFactory.getLogger(ChatUserServiceImpl.class);

    @Autowired
    private ChatUserMapper userMapper;

    @Autowired
    protected Validator validator;

    /**
     * 根据条件分页查询用户列表
     *
     * @param user 用户信息
     * @return 用户信息集合信息
     */
    @Override
    public List<ChatUser> selectUserList(ChatUser user) {
        return userMapper.selectUserList(user);
    }

    // 仅通过手机号单一字段里的数据，查询用户名或手机号
    @Override
    public List<ChatUser> selectUserListByPhone(ChatUser user) {
        return userMapper.selectUserListByPhone(user);
    }

    /**
     * 通过用户ID查询用户
     *
     * @param userId 用户ID
     * @return 用户对象信息
     */
    @Override
    public ChatUser selectUserById(Long userId) {
        return userMapper.selectUserById(userId);
    }

    /**
     * 修改用户头像
     *
     * @param userName 用户名
     * @param avatar   头像地址
     * @return 结果
     */
    @Override
    public boolean updateUserAvatar(String userName, String avatar) {
        return userMapper.updateUserAvatar(userName, avatar) > 0;
    }
}
