package com.ruoyi.library.msg.mssage.mapper;

import com.ruoyi.library.msg.mssage.domain.MsgDomain;

import java.util.List;

/**
 * 消息Mapper接口
 * 
 * @author yangyungang
 * @date 2022-08-06
 */
public interface MsgMapper
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
     * @param MsgDomain 内部消息
     * @return 内部消息集合
     */
    public List<MsgDomain> selectMsgList(MsgDomain msg);

    /**
     * 修改消息
     *
     * @param MsgDomain 内部消息
     * @return 结果
     */
    public int updateMsg(MsgDomain msg);

    /**
     * 删除消息
     * 
     * @param id 内部消息主键
     * @return 结果
     */
    public int deleteMsgById(Long id);

    /**
     * 批量删除消息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMsgByIds(Long[] ids);
}
