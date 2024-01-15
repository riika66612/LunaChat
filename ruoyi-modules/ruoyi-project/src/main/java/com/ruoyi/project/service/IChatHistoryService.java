package com.ruoyi.project.service;

import com.ruoyi.project.domain.ChatHistory;

import java.util.List;

/**
 * 聊天记录Service接口
 * 
 * @author kokor
 * @date 2023-09-19
 */
public interface IChatHistoryService 
{
    public List<ChatHistory> selectChatHistoryListTwoUser(ChatHistory chatHistory);

    public List<ChatHistory> selectChatHistoryListTwoUserByDesc(ChatHistory chatHistory);

    /**
     * 新增聊天记录
     * 
     * @param chatHistory 聊天记录
     * @return 结果
     */
    public int insertChatHistory(ChatHistory chatHistory);
}
