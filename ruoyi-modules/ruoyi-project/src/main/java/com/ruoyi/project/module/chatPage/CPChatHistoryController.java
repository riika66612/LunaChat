package com.ruoyi.project.module.chatPage;

import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.web.page.TableDataInfo;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.project.domain.ChatHistory;
import com.ruoyi.project.service.IChatHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 聊天记录Controller
 *
 * @author kokor
 * @date 2023-09-19
 */
@RestController
@RequestMapping("/cp/history")
public class CPChatHistoryController extends BaseController {
    @Autowired
    private IChatHistoryService chatHistoryService;

    /**
     * 查询聊天记录列表
     */
    //@RequiresPermissions("project:history:list")
    @GetMapping("/list")
    public TableDataInfo list(ChatHistory chatHistory) {
        List<ChatHistory> list = chatHistoryService.selectChatHistoryListTwoUser(chatHistory);
        return getDataTable(list);
    }

    /**
     * 新增聊天记录
     */
    //@RequiresPermissions("project:history:add")
    @Log(title = "聊天记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChatHistory chatHistory) {
        return toAjax(chatHistoryService.insertChatHistory(chatHistory));
    }
}
