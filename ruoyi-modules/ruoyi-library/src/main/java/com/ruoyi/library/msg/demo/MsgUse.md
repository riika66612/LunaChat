   模块调用消息发送
    导入
    import com.ruoyi.library.api.RemoteLibraryService;
    import com.ruoyi.library.api.domain.YhMsgInner;
    import java.util.ArrayList;
      //然后注入
         @Autowired
          private RemoteLibraryService remoteLibraryService;
          
      //写自己的消息体
        YhMsgInner msg=new YhMsgInner();
        msg.setMsgTitle("这里写标题，必填");
        msg.setMsgContent("这里写内容，必填");
        msg.setSendUserName("这里写发送者名字，填用户名就行，必填");
        msg.setNote1("这里填写发送者的昵称，对表的user表的nick_name，必填");
        msg.setNote2("这里填写你业务的相对url，如/notice/noticelist，必填");
        

        List<String> receiveNames = new ArrayList<>();
        // 这里根据需要添加你要通知的用户名 可以有一个或多个 也就是user表的userName字段
        receiveNames.add("admin");
        receiveNames.add("ry");
        //调用服务
        remoteLibraryService.PushMag(msg,receiveNames);