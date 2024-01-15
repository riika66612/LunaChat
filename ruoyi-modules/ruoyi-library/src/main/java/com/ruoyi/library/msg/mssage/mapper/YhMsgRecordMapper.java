package com.ruoyi.library.msg.mssage.mapper;



import com.ruoyi.library.msg.mssage.domain.YhMsgRecord;

import java.util.List;

/**
 * 内部消息发送记录Mapper接口
 * 
 * @author yinhe
 * @date 2022-08-30
 */
public interface YhMsgRecordMapper 
{
    /**
     * 查询内部消息发送记录
     * 
     * @param id 内部消息发送记录主键
     * @return 内部消息发送记录
     */
    public YhMsgRecord selectYhMsgRecordById(Long id);

    /**
     * 查询内部消息发送记录列表
     * 
     * @param yhMsgRecord 内部消息发送记录
     * @return 内部消息发送记录集合
     */
    public List<YhMsgRecord> selectYhMsgRecordList(YhMsgRecord yhMsgRecord);

    /**
     * 新增内部消息发送记录
     * 
     * @param yhMsgRecord 内部消息发送记录
     * @return 结果
     */
    public int insertYhMsgRecord(YhMsgRecord yhMsgRecord);

    /**
     * 修改内部消息发送记录
     * 
     * @param yhMsgRecord 内部消息发送记录
     * @return 结果
     */
    public int updateYhMsgRecord(YhMsgRecord yhMsgRecord);

    /**
     * 删除内部消息发送记录
     * 
     * @param id 内部消息发送记录主键
     * @return 结果
     */
    public int deleteYhMsgRecordById(Long id);

    /**
     * 批量删除内部消息发送记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteYhMsgRecordByIds(Long[] ids);
}
