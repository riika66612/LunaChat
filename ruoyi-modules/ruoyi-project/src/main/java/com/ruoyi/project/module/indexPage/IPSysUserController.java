package com.ruoyi.project.module.indexPage;

import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.project.domain.ChatUser;
import com.ruoyi.project.service.IChatUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/**
 * 用户信息
 *
 * @author kokor
 */
@RestController
@RequestMapping("/ip/user")
public class IPSysUserController extends BaseController {
    @Autowired
    private IChatUserService userService;

    @GetMapping("/updateIp")
    public void updateIp() throws UnknownHostException {
        ChatUser user = new ChatUser();
        // 获取所有用户列表
        List<ChatUser> userList = userService.selectUserList(user);
        // 获取当前服务器ip
        //InetAddress address = InetAddress.getLocalHost();  //获取本机IP地址
        //String localIP = address.getHostAddress();  //获取本机IP地址字符串
        //String localIP = getIP().getHostAddress();
        String localIP = getIP();
        for (ChatUser chatUser : userList) {
            String currentAvatar = chatUser.getAvatar();
            if (currentAvatar.equals("")){
                continue;
            }
            String currentIP = currentAvatar.substring(7).split(":")[0];
            //System.out.println(currentIP);
            if (currentIP.equals(localIP)) {
                //System.out.println(currentIP);
                //System.out.println(localIP);
                continue;
            }
            String head = currentAvatar.substring(0, 7);
            //System.out.println(head);
            String tail = currentAvatar.substring(7).split(":")[1];
            //System.out.println(tail);
            String newAvatar = head + localIP + ":" + tail;
            //String newAvatar = head + "192.168.102.128" + ":" + tail;

            userService.updateUserAvatar(chatUser.getUserName(), newAvatar);
        }
    }

    // 获取本机(服务器)IP
    @GetMapping("/ipAddress")
    public String getIP() throws UnknownHostException {
        return "39.107.94.22";
        //InetAddress address = InetAddress.getLocalHost();  //获取本机IP地址
        //String localIP = address.getHostAddress();  //获取本机IP地址字符串
        //return localIP;
        //try {
        //    InetAddress candidateAddress = null;
        //
        //    Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        //    while (networkInterfaces.hasMoreElements()) {
        //        NetworkInterface iface = networkInterfaces.nextElement();
        //        // 该网卡接口下的ip会有多个，也需要一个个的遍历，找到自己所需要的
        //        for (Enumeration<InetAddress> inetAddrs = iface.getInetAddresses(); inetAddrs.hasMoreElements(); ) {
        //            InetAddress inetAddr = inetAddrs.nextElement();
        //            // 排除loopback回环类型地址（不管是IPv4还是IPv6 只要是回环地址都会返回true）
        //            if (!inetAddr.isLoopbackAddress()) {
        //                if (inetAddr.isSiteLocalAddress()) {
        //                    // 如果是site-local地址，就是它了 就是我们要找的
        //                    // ~~~~~~~~~~~~~绝大部分情况下都会在此处返回你的ip地址值~~~~~~~~~~~~~
        //                    return inetAddr;
        //                }
        //
        //                // 若不是site-local地址 那就记录下该地址当作候选
        //                if (candidateAddress == null) {
        //                    candidateAddress = inetAddr;
        //                }
        //
        //            }
        //        }
        //    }
        //
        //    // 如果出去loopback回环地之外无其它地址了，那就回退到原始方案吧
        //    return candidateAddress == null ? InetAddress.getLocalHost() : candidateAddress;
        //} catch (Exception e) {
        //    e.printStackTrace();
        //}
        //return null;
    }
}
