package com.ruoyi.library.msg.mssage.controller;


import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

import com.ruoyi.library.msg.common.CommonDefine;
import com.ruoyi.library.msg.mssage.domain.MsgDomain;
import com.ruoyi.library.msg.mssage.service.MsgService;
import com.ruoyi.library.msg.ws.service.WebSocketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

import static com.ruoyi.common.security.utils.SecurityUtils.getUsername;

/**
 * 内部消息Controller
 * 
 * @author yinhe
 * @date 2022-08-06
 */
@RestController
@RequestMapping("/yyg/msg")
public class MsgController extends BaseController
{
    @Autowired
    private MsgService msgService;

    @Autowired
    private WebSocketService webSocketService;

    /**
     * 查询消息列表
     */
    //@PreAuthorize("@ss.hasPermi('yyg:msg:list')")
    @GetMapping("/list")
    public TableDataInfo list(MsgDomain msg)
    {
        startPage();
        // 只能查看本人的消息
        msg.setReceiveUserName(getUsername());
        List<MsgDomain> list = msgService.selectMsgList(msg);
        return getDataTable(list);
    }

    /**
     * 查询未读消息数
     */
    @GetMapping("/unreadNums")
    public AjaxResult cntUnreadMsg(MsgDomain msg) {
        // 查询本人的未读消息数
        msg.setReceiveUserName(getUsername());
        msg.setReadStatus(CommonDefine.UNREAD);
        List<MsgDomain> list = msgService.selectMsgList(msg);
        return AjaxResult.success(list.size());
    }

    /**
     * 导出消息列表
     */
    //@PreAuthorize("@ss.hasPermi('yyg:msg:export')")
    @Log(title = "消息中心", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, MsgDomain msg)
    {
        List<MsgDomain> list = msgService.selectMsgList(msg);
        ExcelUtil<MsgDomain> util = new ExcelUtil<MsgDomain>(MsgDomain.class);
        util.exportExcel(response, list, "消息中心数据");
    }

    /**
     * 获取消息详细信息
     */
    //@PreAuthorize("@ss.hasPermi('yyg:msg:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        MsgDomain msgDomain = msgService.selectMsgById(id);
        if (CommonDefine.UNREAD_CHN.equals(msgDomain.getReadStatus())) {
            msgDomain.setReadDate(new Date());
            msgDomain.setReadStatus(CommonDefine.READ);
            msgService.updateMsg(msgDomain);
            webSocketService.PushReadMsg(getUsername());
        }
        return AjaxResult.success(msgDomain);
    }

    /**
     * 删除消息
     */
    //@PreAuthorize("@ss.hasPermi('yyg:msg:remove')")
    @Log(title = "消息中心", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(msgService.deleteMsgByIds(ids));
    }
}
