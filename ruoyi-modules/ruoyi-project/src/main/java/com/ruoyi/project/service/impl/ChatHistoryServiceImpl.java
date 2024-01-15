package com.ruoyi.project.service.impl;

import com.ruoyi.project.domain.ChatHistory;
import com.ruoyi.project.mapper.ChatHistoryMapper;
import com.ruoyi.project.service.IChatHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 聊天记录Service业务层处理
 *
 * @author kokor
 * @date 2023-09-19
 */
@Service
public class ChatHistoryServiceImpl implements IChatHistoryService {
    @Autowired
    private ChatHistoryMapper chatHistoryMapper;

    @Override
    public List<ChatHistory> selectChatHistoryListTwoUser(ChatHistory chatHistory)
    {
        return chatHistoryMapper.selectChatHistoryListTwoUser(chatHistory);
    }

    @Override
    public List<ChatHistory> selectChatHistoryListTwoUserByDesc(ChatHistory chatHistory)
    {
        return chatHistoryMapper.selectChatHistoryListTwoUserByDesc(chatHistory);
    }

    /**
     * 新增聊天记录
     *
     * @param chatHistory 聊天记录
     * @return 结果
     */
    @Override
    public int insertChatHistory(ChatHistory chatHistory) {
        return chatHistoryMapper.insertChatHistory(chatHistory);
    }
}
