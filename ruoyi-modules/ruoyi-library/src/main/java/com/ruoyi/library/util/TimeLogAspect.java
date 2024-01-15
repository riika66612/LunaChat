package com.ruoyi.library.util;//package com.ruoyi.library.util;
//
//import com.ruoyi.common.redis.service.RedisService;
//import org.aspectj.lang.ProceedingJoinPoint;
//import org.aspectj.lang.annotation.Around;
//import org.aspectj.lang.annotation.Aspect;
//
//import org.aspectj.lang.reflect.MethodSignature;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Component;
//
//import javax.annotation.Resource;
//
//@Aspect
//@Component
//public class TimeLogAspect {
//
//    @Resource
//    private RedisService redisService;
//
//    private static final Logger logger = LoggerFactory.getLogger(TimeLogAspect.class);
//    @Around("@annotation(com.ruoyi.library.util.TimeLog)")
//
//    public Object timeCost(ProceedingJoinPoint joinPoint) throws Throwable {
//        long startTime = System.currentTimeMillis();
//        Object result = joinPoint.proceed();
//        long endTime = System.currentTimeMillis();
//        logger.info("方法[{}]耗时[{}]ms", joinPoint.getSignature().toShortString(), endTime - startTime);
//        redisService.setCacheObject(joinPoint.getSignature().toShortString(),endTime - startTime);
//        return result;
//    }
//}
