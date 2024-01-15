package com.ruoyi.library.api;


import com.ruoyi.common.core.constant.ServiceNameConstants;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.library.api.domain.YhMsgInner;
import com.ruoyi.library.api.factory.RemoteLibraryFallbackFactory;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 消息服务
 * 
 * @author ruoyi
 */
@FeignClient(contextId = "remoteLibraryService", value = ServiceNameConstants.MSG_SERVICE, fallbackFactory = RemoteLibraryFallbackFactory.class)
public interface RemoteLibraryService
{

    /**
     * 推送消息
     *
     *
     *
     * @return 结果
     */
    @PostMapping("/yyg/ws/pushMsg")
    public R<Boolean> PushMag(@RequestBody YhMsgInner msg, @RequestParam("receiveNames")  List<String> receiveNames);

}
