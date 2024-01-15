package com.ruoyi.library.msg.mssage.service;



import com.ruoyi.library.msg.mssage.domain.MsgDomain;

import java.util.List;

/**
 * 消息Service接口
 * 
 * @author yangyungang
 * @date 2022-08-06
 */
public interface MsgService
{
    /**
     * 查询消息
     * 
     * @param id 内部消息主键
     * @return 内部消息
     */
    public MsgDomain selectMsgById(Long id);

    /**
     * 查询消息列表
     * 
     * @param msg 内部消息
     * @return 内部消息集合
     */
    public List<MsgDomain> selectMsgList(MsgDomain msg);

    /**
     * 修改消息
     *
     * @param msg 内部消息
     * @return 结果
     */
    public int updateMsg(MsgDomain msg);

    /**
     * 批量删除消息
     * 
     * @param ids 需要删除的内部消息主键集合
     * @return 结果
     */
    public int deleteMsgByIds(Long[] ids);

    /**
     * 删除消息
     * 
     * @param id 内部消息主键
     * @return 结果
     */
    public int deleteMsgById(Long id);

}
