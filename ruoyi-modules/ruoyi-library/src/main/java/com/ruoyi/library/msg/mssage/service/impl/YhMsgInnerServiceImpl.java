package com.ruoyi.library.msg.mssage.service.impl;

//import com.yinhe.common.utils.DateUtils;
import com.ruoyi.common.core.utils.DateUtils;
import com.ruoyi.library.msg.mssage.domain.YhMsgInner;
import com.ruoyi.library.msg.mssage.mapper.YhMsgInnerMapper;
import com.ruoyi.library.msg.mssage.service.IYhMsgInnerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 内部消息Service业务层处理
 * 
 * @author yinhe
 * @date 2022-08-06
 */
@Service
public class YhMsgInnerServiceImpl implements IYhMsgInnerService
{
    @Autowired
    private YhMsgInnerMapper yhMsgInnerMapper;

    /**
     * 查询内部消息
     * 
     * @param id 内部消息主键
     * @return 内部消息
     */
    @Override
    public YhMsgInner selectYhMsgInnerById(Long id)
    {
        return yhMsgInnerMapper.selectYhMsgInnerById(id);
    }

    /**
     * 查询内部消息列表
     * 
     * @param yhMsgInner 内部消息
     * @return 内部消息
     */
    @Override
    public List<YhMsgInner> selectYhMsgInnerList(YhMsgInner yhMsgInner)
    {
        return yhMsgInnerMapper.selectYhMsgInnerList(yhMsgInner);
    }

    /**
     * 新增内部消息
     * 
     * @param yhMsgInner 内部消息
     * @return 结果
     */
    @Override
    public int insertYhMsgInner(YhMsgInner yhMsgInner)
    {
        yhMsgInner.setCreateTime(DateUtils.getNowDate());
        return yhMsgInnerMapper.insertYhMsgInner(yhMsgInner);
    }

    /**
     * 修改内部消息
     * 
     * @param yhMsgInner 内部消息
     * @return 结果
     */
    @Override
    public int updateYhMsgInner(YhMsgInner yhMsgInner)
    {
        yhMsgInner.setUpdateTime(DateUtils.getNowDate());
        return yhMsgInnerMapper.updateYhMsgInner(yhMsgInner);
    }

    /**
     * 批量删除内部消息
     * 
     * @param ids 需要删除的内部消息主键
     * @return 结果
     */
    @Override
    public int deleteYhMsgInnerByIds(Long[] ids)
    {
        return yhMsgInnerMapper.deleteYhMsgInnerByIds(ids);
    }

    /**
     * 删除内部消息信息
     * 
     * @param id 内部消息主键
     * @return 结果
     */
    @Override
    public int deleteYhMsgInnerById(Long id)
    {
        return yhMsgInnerMapper.deleteYhMsgInnerById(id);
    }
}
