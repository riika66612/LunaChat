<template>
  <div class="all-dom">
    <!--查询表单-->
    <el-form :model="queryParamsUser" ref="queryForm" size="small" :inline="true" label-width="68px">
      <!--用户账号 回车查询-->
      <el-form-item label="用户账号" prop="userName">
        <el-input v-model="queryParamsUser.userName" placeholder="请输入用户账号" clearable @keyup.enter.native="queryUser"/>
      </el-form-item>
      <!--用户昵称 回车查询-->
      <el-form-item label="用户昵称" prop="nickName">
        <el-input v-model="queryParamsUser.nickName" placeholder="请输入用户昵称" clearable @keyup.enter.native="queryUser"/>
      </el-form-item>
      <!--用户邮箱 回车查询-->
      <el-form-item label="邮箱" prop="email">
        <el-input v-model="queryParamsUser.email" placeholder="请输入邮箱" clearable @keyup.enter.native="queryUser"/>
      </el-form-item>
      <!--用户手机号 回车查询-->
      <el-form-item label="手机号" prop="phonenumber">
        <el-input v-model="queryParamsUser.phonenumber" placeholder="请输入手机号" clearable
                  @keyup.enter.native="queryUser"/>
      </el-form-item>
      <!--按钮-->
      <el-form-item style="margin-left: 1%">
        <!--查询按钮-->
        <el-button type="primary" icon="el-icon-search" size="" @click="queryUser">搜索</el-button>
        <!--重置查询条件-->
        <el-button icon="el-icon-refresh" size="" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <!--用户显示区域-->
    <!--添加请求-->
    <div class="user-area new">
      <!--信息卡片-->
      <el-card class="user-card" v-for="(item,index) in newFriendList" :key="index">
        <!--卡片头-->
        <div slot="header">
          <span>{{ item.nickName }}</span>
        </div>
        <!--主体-->
        <div style="display: inline-block">
          <img :src="item.avatar" alt="头像读取失败" width="100px" height="100px"/>
          <div class="buttons">
            <el-button type="success" size="mini" @click="openAdd(item.userId,item.nickName)">接受</el-button>
            <el-button type="danger" size="mini" @click="refuse(item.userId)">拒绝</el-button>
          </div>
        </div>
      </el-card>
    </div>

    <!--已添加-->
    <div class="user-area">
      <!--信息卡片-->
      <el-card class="user-card" v-for="(item,index) in friendList" :key="index">
        <!--卡片头-->
        <div slot="header">
          <span v-on:dblclick="changeName(item.nickName,item.userId)">{{ item.nickName }}</span>
          <el-button style="float: right;padding: 3px 0;color: red" type="text" @click="deleteFriend(item.userId)">
            删除好友
          </el-button>
        </div>
        <!--主体-->
        <div>
          <img :src="item.avatar" alt="头像读取失败" width="100px" height="100px"/>
        </div>
      </el-card>
    </div>

    <!--添加好友弹窗-->
    <el-dialog title="添加好友" :visible.sync="showAdd" width="500px" :close-on-click-modal="false" append-to-body
               @close="resetName">
      <el-form ref="addForm" label-width="100px">
        <el-form-item label="用户昵称" prop="nickName">
          <el-input v-model="friendNickName" placeholder="请输入用户昵称" :disabled='true' clearable/>
        </el-form-item>
        <el-form-item label="好友备注" prop="friendName">
          <el-input v-model="friendNoteName" placeholder="请输入好友备注" clearable/>
        </el-form-item>
      </el-form>
      <div slot="footer" style="margin-top: -30px">
        <el-button @click="closeAdd">取 消</el-button>
        <el-button type="primary" @click="addNewFriend">确 定</el-button>
      </div>
    </el-dialog>

    <!--修改好友备注弹窗-->
    <el-dialog title="修改备注" :visible.sync="showChange" width="500px" :close-on-click-modal="false" append-to-body
               @close="resetName">
      <el-form ref="changeForm" label-width="100px">
        <el-form-item label="好友备注" prop="friendName">
          <el-input v-model="friendNoteName" :placeholder="friendNickName" clearable/>
        </el-form-item>
      </el-form>
      <div slot="footer" style="margin-top: -30px">
        <el-button @click="closeChange">取 消</el-button>
        <el-button type="primary" @click="changeNoteName">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  listNewFriend,
  listFriend,
  addFriend,
  refuseFriend,
  deleteFriend,
  changeNote
} from "@/api/module/friendManage/friend"
import {getIP} from "@/api/module/indexPage/user"

export default {
  name: "friendIndex",
  data() {
    return {
      // 当前用户账号
      currentUser: '',
      // 当前用户ID
      currentUserId: '',
      // 查询参数
      queryParamsUser: {
        userId: null,
        userName: null,
        nickName: null,
        email: null,
        phonenumber: null
      },
      // 请求列表
      newFriendList: [],
      // 好友列表
      friendList: [],
      // 添加弹窗
      showAdd: false,
      // 修改备注弹窗
      showChange: false,
      // 想要添加的用户ID
      friendId: '',
      // 想要添加的用户昵称
      friendNickName: '',
      // 为好友添加的备注
      friendNoteName: '',
      // IP地址
      ipAddr: '',
      // 以下websocket
      wsIsRun: false,
      // 定义ws对象
      webSocket: null,
      // ws连接次数
      wsNumber: 0,
      // ws请求链接（类似于ws后台地址）
      ws: '',
      // ws定时器
      wsTimer: null,
      // 以上websocket
    }
  },
  created() {
    // 禁止web端屏幕缩放
    window.addEventListener("mousewheel", function (event) {
      if (event.ctrlKey === true || event.metaKey) {
        event.preventDefault();
      }
    }, {passive: false})

    // 初始化ws参数
    this.wsIsRun = true
    this.wsNumber = 1
    // 获取当前用户信息
    this.currentUser = this.$store.state.user.name
    this.currentUserId = this.$store.state.user.id
    this.getNewFriendList()
    this.getFriendList()
    // 获取IP
    this.configIP()
  },
  methods: {
    // 获取本机（服务器）IP地址
    configIP() {
      getIP().then(res => {
        this.ipAddr = res
        this.wsInit()
      })
    },
    // 查询用户列表
    getNewFriendList() {
      listNewFriend({friendId: this.currentUserId}).then(res => {
        this.newFriendList = res.rows
      })
    },
    getFriendList() {
      this.queryParamsUser.userId = this.currentUserId
      listFriend(this.queryParamsUser).then(res => {
        this.friendList = res.rows
      })
    },
    // 条件查询
    queryUser() {
      this.getNewFriendList()
      this.getFriendList()
    },
    // 重置
    resetQuery() {
      this.resetForm("queryForm");
      this.queryUser();
    },
    // 打开添加弹窗
    openAdd(friendId, friendNickName) {
      this.friendId = friendId
      this.friendNickName = friendNickName
      this.showAdd = true
    },
    // 关闭弹窗
    closeAdd() {
      this.showAdd = false
    },
    // 接受好友请求
    addNewFriend() {
      addFriend({
        userId: this.currentUserId,
        friendId: this.friendId,
        friendName: this.friendNoteName
      }).then(() => {
        this.$modal.msgSuccess("好友添加成功")
        this.showAdd = false
        this.getNewFriendList()
        this.getFriendList()
      })
    },
    // 重置参数
    resetName() {
      this.friendId = ''
      this.friendNickName = ''
      this.friendNoteName = ''
    },
    // 拒绝好友申请
    refuse(userId) {
      this.$modal.confirm('你确认要拒绝吗？').then(function () {
      }).then(() => {
        refuseFriend({userId: userId, friendId: this.currentUserId}).then(() => {
          this.$modal.msg("好友申请已拒绝")
          this.getNewFriendList()
          this.getFriendList()
        }).catch(() => {
        })
      })
    },
    // 删除好友
    deleteFriend(friendId) {
      this.$modal.confirm('你确认要删除该好友吗？').then(function () {
      }).then(() => {
        deleteFriend({userId: this.currentUserId, friendId: friendId}).then(() => {
          this.$modal.msgError("好友已删除")
          this.getNewFriendList()
          this.getFriendList()
        }).catch(() => {
        })
      })
    },
    // 修改好友备注
    changeName(friendNickName, friendId) {
      this.friendId = friendId
      this.friendNickName = friendNickName
      this.showChange = true
    },
    // 关闭修改弹窗
    closeChange() {
      this.showChange = false
    },
    // 修改备注
    changeNoteName() {
      changeNote({
        userId: this.currentUserId,
        friendId: this.friendId,
        friendName: this.friendNoteName
      }).then(() => {
        this.$modal.msgSuccess("备注修改成功")
        this.showChange = false
        this.getNewFriendList()
        this.getFriendList()
      })
    },
    /**
     * 初始化ws
     */
    wsInit() {
      // console.log("userName: " + this.$store.state.user.ipp)
      // console.log("user: " + this.ipAddr)
      this.ws = 'ws://' + this.ipAddr + ':8080/library/wsService/' + this.$store.state.user.name
      if (!this.wsIsRun)
        return
      // 销毁ws
      this.wsDestroy()
      // 初始化ws
      this.webSocket = new WebSocket(this.ws)
      // ws连接建立时触发
      this.webSocket.addEventListener('open', this.wsOpenHanler)
      // ws服务端给客户端推送消息
      this.webSocket.addEventListener('message', this.wsMessageHanler)
      // ws通信发生错误时触发
      this.webSocket.addEventListener('error', this.wsErrorHanler)
      // ws关闭时触发
      this.webSocket.addEventListener('close', this.wsCloseHanler)

      clearInterval(this.wsTimer);
    },
    subSend() {
      //获取msg的value
      // var msg = document.getElementById("msg").value;

      this.webSocket.send('{"msgType":"push","unreadNums":"0","msgTitle":"新好友","userId":"' + this.friendUserName + '","msgContent":"来自' + this.currentUser + '的好友请求"}')

      // ws服务端给客户端推送消息

      // document.getElementById("msg").value="";
    },
    wsOpenHanler(event) {
      console.log('ws建立连接成功')
    },
    wsMessageHanler(e) {
      // console.log('wsMessageHanler')
      // console.log(e)
      //Cookies.set('unreadNums', '6')

      this.openMsg(e)
      //const redata = JSON.parse(e.data)
      //console.log(redata)
    },
    /**
     * ws通信发生错误
     */
    wsErrorHanler(event) {
      console.log(event, '通信发生错误')
      console.log("第" + this.wsNumber + "次断线重连(5次未连接将自动断开)")
      this.wsNumber++
      if (this.wsNumber < 6) this.wsInit();
      //this.wsInit()
    },
    /**
     * ws关闭
     */
    wsCloseHanler(event) {
      console.log(event, 'ws关闭')
      console.log("websocket连接超时，已自动断开")
      //this.wsInit()
    },
    /**
     * 销毁ws
     */
    wsDestroy() {
      console.log("hello world")
      if (this.webSocket !== null) {
        this.webSocket.removeEventListener('open', this.wsOpenHanler)
        this.webSocket.removeEventListener('message', this.wsMessageHanler)
        this.webSocket.removeEventListener('error', this.wsErrorHanler)
        this.webSocket.removeEventListener('close', this.wsCloseHanler)
        this.webSocket.close()
        this.webSocket = null
        clearInterval(this.wsTimer)
        // console.log("zoul111")
      } else {
        // console.log("zoul")
      }
    },
    /**
     * 接收消息
     */
    openMsg(e) {
      // const h = this.$createElement;
      if (e.data) {
        // var dv = document.getElementById("dv");
        // dv.innerHTML += e.data + " ";
        // this.$router.push({path: "/phone"});

        var data = JSON.parse(e.data)
        var route = this.$router
        // var route = window.location.href
        var path = window.location.href
        // console.log(path)
        // alert(data.msgFrom)
        // alert(this.selectId)
        var id = this.selectId

        // 弹窗
        var msgType = data.msgType;
        if (msgType === "push") {
          // 如果是推送的是一条消息
          // this.unreadMsgNums++;
          // if (this.unreadMsgNums > 99) {
          //   this.unreadMsgNumsShow = "99+";
          // } else {
          //   this.unreadMsgNumsShow = String(this.unreadMsgNums);
          // }

          this.$notify.info({
            title: data.msgTitle,
            message: data.msgContent,
            onClick() {
              // console.log(route)
              // this.unreadMsgNumsShow = '0'
              route.push({path: "/friends"});
            }
          });
        } else if (msgType === "unread") {
          // 如果推送的是未读消息数
          //Cookies.set('unreadNums', data.unreadNums);
          // console.log("未读消息")
          // this.unreadMsgNums = Number(data.unreadNums);
          // if (this.unreadMsgNums > 0) {
          //   this.unreadMsgNumsShow = String(this.unreadMsgNums);
          //   if (this.unreadMsgNums > 99) {
          //     this.unreadMsgNumsShow = "99+";
          //   }
          // 如果在聊天室里 -> 其它好友发来的消息 -> 变更选择的好友ID

          // 跳转至聊天室
          this.$notify.info({
            title: data.msgTitle,
            // title: "消息提醒",
            message: data.msgContent,
            // message: "您当前有" + this.unreadMsgNumsShow + "条未读消息，点击此处查看",
            onClick() {
              // console.log(route)
              // this.unreadMsgNumsShow = '0'
              route.push({path: "/chatroom"});
            }
          });
        } else if (msgType === "read") {
          // 如果推送的是用户已读消息
          // this.unreadMsgNums--;
          // if (this.unreadMsgNums > 0 && this.unreadMsgNums <= 99) {
          //   this.unreadMsgNumsShow = String(this.unreadMsgNums);
          // } else if (this.unreadMsgNums <= 0) {
          //   this.unreadMsgNumsShow = '';
          // }
        }
      }
    },
  }
}
</script>

<style lang="scss" scoped>
.all-dom {
  margin: 1% 1% 0 1%;
  height: 820px;
}

.user-area {
  //display: flex;
  //justify-content: space-between;
  width: 100%;
}

.user-card {
  width: 345px;
  display: inline-block;
  margin-right: 20px;
  margin-bottom: 10px;

  ::v-deep .el-card__body {
    height: 139px;
  }
}

.buttons {
  position: relative;
  bottom: 20px;
  left: 190px;
}
</style>
