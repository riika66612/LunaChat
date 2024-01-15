package com.ruoyi.library.msg.mssage.mapper;



import com.ruoyi.library.msg.mssage.domain.YhMsgInner;

import java.util.List;

/**
 * 内部消息Mapper接口
 * 
 * @author yinhe
 * @date 2022-08-06
 */
public interface YhMsgInnerMapper 
{
    /**
     * 查询内部消息
     * 
     * @param id 内部消息主键
     * @return 内部消息
     */
    public YhMsgInner selectYhMsgInnerById(Long id);

    /**
     * 查询内部消息列表
     * 
     * @param yhMsgInner 内部消息
     * @return 内部消息集合
     */
    public List<YhMsgInner> selectYhMsgInnerList(YhMsgInner yhMsgInner);

    /**
     * 新增内部消息
     * 
     * @param yhMsgInner 内部消息
     * @return 结果
     */
    public int insertYhMsgInner(YhMsgInner yhMsgInner);

    /**
     * 修改内部消息
     * 
     * @param yhMsgInner 内部消息
     * @return 结果
     */
    public int updateYhMsgInner(YhMsgInner yhMsgInner);

    /**
     * 删除内部消息
     * 
     * @param id 内部消息主键
     * @return 结果
     */
    public int deleteYhMsgInnerById(Long id);

    /**
     * 批量删除内部消息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteYhMsgInnerByIds(Long[] ids);
}
