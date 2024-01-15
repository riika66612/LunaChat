package com.ruoyi.library.uniqudeindex;//package com.ruoyi.library.uniqudeindex;
//
//import com.ruoyi.common.core.exception.ServiceException;
//import com.ruoyi.common.core.web.controller.BaseController;
//import com.ruoyi.common.core.web.domain.AjaxResult;
//import com.ruoyi.library.application.entity.Application;
//import com.ruoyi.library.application.entity.ApplicationCounts;
//import com.ruoyi.library.application.mapper.ApplicationCountMapper;
//import com.ruoyi.library.application.service.ApplicationService;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.annotation.Resource;
//
//public class indexController  extends BaseController {
//
//    @Resource
//    private ApplicationCountMapper  applicationCountMapper;
//    //test,关于数据库逻辑主键唯一性的问题
//    @RequestMapping("/demo")
//    public AjaxResult demo (){
//        //首先新建唯一索引
//        // CREATE UNIQUE INDEX index_name ON table_name(column_name);
//        //CREATE UNIQUE INDEX unique_age(索引名) ON yh_baseinfo(表名)(age)(字段名);
//        //此处相当于创建逻辑主键，age的值不允许重复，下面在插入时候进行的异常处理，使用try catch
//        //建议在插入表中时候使用此操作
//        ApplicationCounts applicationCounts = new ApplicationCounts();
//        applicationCounts.setMenuname("应用管理");
//        try {
//            //此处调用mapper层添加方法，将对象添加到数据库中
//            //yhBaseinfoService
//            applicationCountMapper.insertSysApplicationCounts(applicationCounts);
//        } catch (Exception e) {
//            //抛出异常
//            throw new ServiceException("出现问题了");
//        }
//
//        return null;
//    }
//}
