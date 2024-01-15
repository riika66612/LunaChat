package com.ruoyi.library.api.factory;

import com.ruoyi.common.core.domain.R;
import com.ruoyi.library.api.RemoteLibraryService;
import com.ruoyi.library.api.domain.YhMsgInner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 用户服务降级处理
 * 
 * @author ruoyi
 */
@Component
public class RemoteLibraryFallbackFactory implements FallbackFactory<RemoteLibraryService>
{
    private static final Logger log = LoggerFactory.getLogger(RemoteLibraryFallbackFactory.class);

    @Override
    public RemoteLibraryService create(Throwable throwable)
    {
        log.error("消息服务调用失败:{}", throwable.getMessage());
        return new RemoteLibraryService()
        {
            @Override
            public  R<Boolean> PushMag(@RequestBody YhMsgInner msg, @RequestParam("receiveNames")  List<String> receiveNames)
            {
                return R.fail("发送消息失败:" + throwable.getMessage());

            }

        };
    }
}
