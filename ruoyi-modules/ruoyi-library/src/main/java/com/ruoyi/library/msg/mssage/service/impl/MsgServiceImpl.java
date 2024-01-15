package com.ruoyi.library.msg.mssage.service.impl;


import com.ruoyi.library.msg.mssage.domain.MsgDomain;
import com.ruoyi.library.msg.mssage.mapper.MsgMapper;
import com.ruoyi.library.msg.mssage.service.MsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description : 消息业务层处理
 * @Author : young
 * @Date : 2022-09-01 19:48
 * @Version : 1.0
 **/
@Service
public class MsgServiceImpl implements MsgService {

    @Autowired
    private MsgMapper msgMapper;

    @Override
    public MsgDomain selectMsgById(Long id) {
        return msgMapper.selectMsgById(id);
    }

    @Override
    public List<MsgDomain> selectMsgList(MsgDomain msg) {
        return msgMapper.selectMsgList(msg);
    }

    @Override
    public int updateMsg(MsgDomain msg) {
        return msgMapper.updateMsg(msg);
    }

    @Override
    public int deleteMsgByIds(Long[] ids) {
        return msgMapper.deleteMsgByIds(ids);
    }

    @Override
    public int deleteMsgById(Long id) {
        return msgMapper.deleteMsgById(id);
    }
}
