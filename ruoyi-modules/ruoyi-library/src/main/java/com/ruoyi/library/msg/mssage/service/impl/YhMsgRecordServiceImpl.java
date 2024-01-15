package com.ruoyi.library.msg.mssage.service.impl;

//import com.yinhe.common.utils.DateUtils;
import com.ruoyi.common.core.utils.DateUtils;
import com.ruoyi.library.msg.mssage.domain.YhMsgRecord;
import com.ruoyi.library.msg.mssage.mapper.YhMsgRecordMapper;
import com.ruoyi.library.msg.mssage.service.IYhMsgRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 内部消息发送记录Service业务层处理
 * 
 * @author yinhe
 * @date 2022-08-06
 */
@Service
public class YhMsgRecordServiceImpl implements IYhMsgRecordService
{
    @Autowired
    private YhMsgRecordMapper yhMsgRecordMapper;

    /**
     * 查询内部消息发送记录
     * 
     * @param id 内部消息发送记录主键
     * @return 内部消息发送记录
     */
    @Override
    public YhMsgRecord selectYhMsgRecordById(Long id)
    {
        return yhMsgRecordMapper.selectYhMsgRecordById(id);
    }

    /**
     * 查询内部消息发送记录列表
     * 
     * @param yhMsgRecord 内部消息发送记录
     * @return 内部消息发送记录
     */
    @Override
    public List<YhMsgRecord> selectYhMsgRecordList(YhMsgRecord yhMsgRecord)
    {
        return yhMsgRecordMapper.selectYhMsgRecordList(yhMsgRecord);
    }

    /**
     * 新增内部消息发送记录
     * 
     * @param yhMsgRecord 内部消息发送记录
     * @return 结果
     */
    @Override
    public int insertYhMsgRecord(YhMsgRecord yhMsgRecord)
    {
        yhMsgRecord.setCreateTime(DateUtils.getNowDate());
        return yhMsgRecordMapper.insertYhMsgRecord(yhMsgRecord);
    }

    /**
     * 修改内部消息发送记录
     * 
     * @param yhMsgRecord 内部消息发送记录
     * @return 结果
     */
    @Override
    public int updateYhMsgRecord(YhMsgRecord yhMsgRecord)
    {
        yhMsgRecord.setUpdateTime(DateUtils.getNowDate());
        return yhMsgRecordMapper.updateYhMsgRecord(yhMsgRecord);
    }

    /**
     * 批量删除内部消息发送记录
     * 
     * @param ids 需要删除的内部消息发送记录主键
     * @return 结果
     */
    @Override
    public int deleteYhMsgRecordByIds(Long[] ids)
    {
        return yhMsgRecordMapper.deleteYhMsgRecordByIds(ids);
    }

    /**
     * 删除内部消息发送记录信息
     * 
     * @param id 内部消息发送记录主键
     * @return 结果
     */
    @Override
    public int deleteYhMsgRecordById(Long id)
    {
        return yhMsgRecordMapper.deleteYhMsgRecordById(id);
    }
}
