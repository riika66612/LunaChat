<template>
  <div class="full-room" v-on:click="hideDialog">
    <!--侧边好友栏-->
    <div class="side is-always-shadow">
      <!--好友卡片-->
      <el-card :class="item.userId===selectId?'user-card select-user':'user-card'" v-for="(item,index) in friendList"
               :key="index" @click.stop.native.prevent="selectUser(item.userId,item.userName)">
        <!--主体-->
        <el-row>
          <el-col :span="12">
            <!--头像-->
            <img :src="item.avatar" alt="头像读取失败" width="50px" height="50px"/>
          </el-col>
          <el-col :span="12">
            <!--昵称-->
            <span :class="item.nickName.length<=6?'user-name':'user-name long-name'">{{ item.nickName }}</span>
          </el-col>
        </el-row>
      </el-card>
    </div>

    <!--主聊天区域-->
    <el-card class="chat-main" v-infinite-scroll="load" id="chat">
      <!--撤回消息弹窗-->
      <el-card v-show="showDialog" :style="{left:mX+'px', top:mY+'px', position:'fixed', zIndex:999}"
               @click.native.prevent.stop="hideDialog">
        撤回消息
      </el-card>
      <!--气泡区域-->
      <div class="chat-history" id="chatHistory" ref="chatHistory">
        <!--<el-card v-on:click.right="handleRightClick">-->

        <!--聊天内容气泡-->
        <!--<el-card @click.right.stop.prevent.native="handleRightClick" style="width: 30%;margin-top: 5px">-->
        <!--  右键这里-->
        <!--</el-card>-->
        <!--<el-card @click.right.stop.prevent.native="handleRightClick" style="width: 30%;margin-top: 5px">-->
        <!--  右键这里-->
        <!--</el-card>-->
        <!--<el-card @click.right.stop.prevent.native="handleRightClick"-->
        <!--         style="width: 30%;margin-top: 5px;margin-left: 70%">-->
        <!--  右键这里-->
        <!--</el-card>-->

        <!--<component is="el-card" @click.right.stop.prevent.native="handleRightClick" style="width: 30%;margin-top: 5px">-->
        <!--  右键这里-->
        <!--</component>-->
      </div>

      <!--占位空白-->
      <div style="height: 120px"/>

      <!--输入区域-->
      <div class="bottom-area">
        <el-row>
          <el-col :span="23">
            <!--富文本框 回车发送-->
            <editor v-model="msg" ref="chatText" class="text-area" v-on:keydown.enter.native="sendMsg"/>
          </el-col>
          <el-col :span="1">
            <!--按钮区域-->
            <div>
              <!--查看历史记录 灰色-->
              <el-button type="info" plain style="margin-left: 5px" @click="searchHistory">历史</el-button>
              <!--清空富文本框 白色-->
              <el-button type="" style="margin: 4px 0 0 5px" @click="clearMsg">清空</el-button>
              <!--发送消息 绿色-->
              <el-button type="success" style="margin: 4px 0 0 5px" @click="sendMsg">发送</el-button>
            </div>
          </el-col>
        </el-row>
      </div>
    </el-card>
  </div>
</template>

<script>
import {listFriend} from "@/api/module/chatPage/friend"
import {addHistory, listHistory} from "@/api/module/chatPage/history"
import {getIP} from "@/api/module/indexPage/user"

export default {
  name: "chatIndex",
  data() {
    return {
      // 当前用户信息
      currentUser: '',
      currentUserId: '',
      // 好友列表
      friendList: [],
      // 聊天记录列表
      chatHistoryList: [],
      // 选择的好友ID
      selectId: 0,
      // 选择的好友账号
      selectUserName: '',
      // 撤回弹出窗控制
      showDialog: false,
      // 当前x坐标
      mX: 0,
      // 当前y坐标
      mY: 0,
      // 要发送的消息
      msg: '',
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
        event.preventDefault()
      }
    }, {passive: false})

    // 初始化ws参数
    this.wsIsRun = true
    this.wsNumber = 1
    // 获取当前用户信息
    this.currentUser = this.$store.state.user.name
    this.currentUserId = this.$store.state.user.id
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
    // 查询好友列表
    getFriendList() {
      listFriend({userId: this.currentUserId}).then(res => {
        this.friendList = res.rows
        // 如果这个人有好友
        if (this.friendList.length > 0) {
          // 默认选择第一个好友
          this.selectId = this.friendList[0].userId
          this.selectUserName = this.friendList[0].userName
          this.getChatHistory()
        }
      })
    },
    // 查询现在有的聊天记录
    getChatHistory() {
      listHistory({
        userId: this.currentUserId,
        receiveId: this.selectId
      }).then(res => {
        this.chatHistoryList = res.rows
        this.createBubble()
        this.rollToBottom()
      })
    },
    // 生成聊天气泡
    createBubble() {
      // 获取聊天容器
      var chat = document.getElementById('chatHistory')
      for (let i = 0; i < this.chatHistoryList.length; i++) {
        const message = this.chatHistoryList[i].chatContent

        if (this.chatHistoryList[i].userId === this.currentUserId) {
          // 如果是自己说的，生成在右边
          // 生成聊天气泡
          chat.innerHTML += '<div data-v-3755fca3 class="el-card is-always-shadow" style="width: 30%;margin-top: 5px;margin-left: 70%;background-color: #0099FF;color: white"><div class="el-card__body">' + message + '</div></div>'
        } else {
          // 如果是好友说的，生成在左边
          // 生成聊天气泡
          chat.innerHTML += '<div data-v-3755fca3 class="el-card is-always-shadow" style="width: 30%;margin-top: 5px"><div class="el-card__body">' + message + '</div></div>'
        }
      }
    },
    // 聊天区域滚动到底部
    rollToBottom() {
      // 获取需要滚动的DOM元素
      const element = document.getElementById('chat');

      // 将滚动位置设置为足够大的值，使元素滚动到底部
      element.scrollTop = element.scrollHeight;

      // 使用scrollIntoView滚动到元素
      // element.scrollIntoView({behavior: 'auto', block: 'end', inline: 'nearest'})

      // 向上滚动指定的距离
      // const scrollDistance = 120; // 向上滚动的距离，根据需要调整
      // element.scrollTop -= scrollDistance;
    },
    // 选择好友
    selectUser(userId, userName) {
      // 设置选择的好友ID
      this.selectId = userId
      this.selectUserName = userName
      // 获取聊天容器
      var chat = document.getElementById('chatHistory')
      // 清空该容器
      chat.innerHTML = ''
      // 重新查询聊天记录
      this.getChatHistory()
    },
    // 右键聊天气泡
    handleRightClick(event) {
      // 停止其它事件
      event.preventDefault()
      // console.log(event)
      // console.log("右键点击")
      // 获取当前鼠标坐标
      this.mX = event.clientX
      this.mY = event.clientY
      // 显示弹出窗
      this.showDialog = true
    },
    // 隐藏撤回弹窗
    hideDialog() {
      this.showDialog = false
    },
    // 下拉加载
    load() {
      console.log("加载新消息")
    },
    // 发送消息
    sendMsg(event) {
      // 如果用回车键发送
      if (event.key === 'Enter') {
        // 取消默认事件
        event.preventDefault()
        // 去除消息里的多余字符
        this.msg = this.msg.trim().substring(0, this.msg.trim().length - 11)
      }

      // 消息判断
      if (this.msg.trim() === '' || this.msg.trim() === null) {
        // 不能为空
        this.$modal.msgError("消息为空，不能发送")
      } else {
        // 获取聊天容器
        var chat = document.getElementById('chatHistory')
        // 提取主内容
        const message = this.msg.trim().substring(3, this.msg.trim().length - 4)
        this.saveMsg(message)
        this.subSend(message)
        // 生成聊天气泡
        chat.innerHTML += '<div data-v-3755fca3 class="el-card is-always-shadow" style="width: 30%;margin-top: 5px;margin-left: 70%;background-color: #0099FF;color: white"><div class="el-card__body">' + message + '</div></div>'
        // 清空聊天框内容
        this.clearMsg()
        // 发完消息自动回到底部
        this.rollToBottom()
      }
    },
    // 清空聊天框内容
    clearMsg() {
      this.msg = null
    },
    // 保存消息
    saveMsg(msg) {
      addHistory({
        userId: this.currentUserId,
        receiveId: this.selectId,
        chatContent: msg,
        chatTime: new Date().getTime()
      })
    },
    // 查看历史记录
    searchHistory(){
      this.$modal.msg("功能有待开发")
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
    // 发送消息
    subSend(msg) {
      //获取msg的value
      // var msg = document.getElementById("msg").value;

      // var route = window.location.href;
      // console.log(route)
      this.webSocket.send('{"msgType":"unread","unreadNums":"1","msgTitle":"未读消息","userId":"' + this.selectUserName + '","msgContent":"你有1条来自' + this.currentUser + '的消息","msgMain":"' + msg + '","msgFrom":"' + this.currentUserId + '","msgFromName":"' + this.currentUser + '"}')

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
      // console.log("hello world")
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
        // console.log(e.data)
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
        // 如果在聊天室里，且选择的好友就是发消息的好友 -> 生成聊天气泡
        if (path.includes('chatroom') && parseInt(data.msgFrom) === this.selectId) {  // 注意类型 msgFrom是字符，selectId是数值
          // 获取聊天容器
          var chat = document.getElementById('chatHistory')
          // 提取主内容
          const message = data.msgMain
          // 生成聊天气泡 别人说的话要生成在左边
          chat.innerHTML += '<div data-v-3755fca3 class="el-card is-always-shadow" style="width: 30%;margin-top: 5px"><div class="el-card__body">' + message + '</div></div>'
          this.rollToBottom()
        } else {
          // 否则 -> 弹窗
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
              if (path.includes("chatroom")) {
                this.$notify.info({
                  title: data.msgTitle,
                  // title: "消息提醒",
                  message: data.msgContent,
                  // message: "您当前有" + this.unreadMsgNumsShow + "条未读消息，点击此处查看",
                  onClick: () => {
                    // console.log(route)
                    // this.unreadMsgNumsShow = '0'
                    // route.push({path: "/chatroom"});
                    // alert(this.selectId)
                    // alert(data.msgFrom)
                    this.selectUser(parseInt(data.msgFrom), data.msgFromName)  // 注意类型 msgFrom是字符，selectId是数值
                  }
                })
              } else {
                // 否则 -> 不在聊天室里 -> 跳转至聊天室
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
              }
            // }
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
      }
    },
  }
}
</script>

<style lang="scss" scoped>
.side {
  height: 99%;
  //background: #00afff;
  //background: #eaeaea;
  //border: #eaeaea 1px solid;
  width: 10%;
  overflow: auto;
  // 阴影
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);

  // 滚动条隐藏
  ::-webkit-scrollbar {
    width: 0 !important;
    height: 0 !important;
    border: none;
  }

  ::-webkit-scrollbar-track {
    width: 0 !important;
    height: 0 !important;
    border: none;
  }
}

.user-card {
  width: 90%;
  margin-left: 5%;
  margin-top: 5%;
  height: 60px;

  ::v-deep .el-card__body {
    padding: 5px;
  }
}

.select-user {
  //background-color: #00afff;
  background-color: #98ddff;
}

.user-name {
  vertical-align: top;
  word-wrap: break-word;
  word-break: break-all;
  width: 100%;
  //position: relative;
  //top: -20px;
}

.long-name {
  font-size: 8px;
}

.full-room {
  margin: 1% 1% 0 1%;
  height: 820px;
  display: flex;
}

.chat-main {
  margin-left: 1%;
  width: 90%;
  overflow: auto;
}

.bottom-area {
  position: absolute;
  //margin-left: -15px;
  //top: 760px;
  bottom: 5px;
  z-index: 666;
  background-color: white;
  width: 85%;
}

.text-area {
  height: 120px;

  // 滚动条隐藏
  ::-webkit-scrollbar {
    width: 0 !important;
    height: 0 !important;
    border: none;
  }

  ::-webkit-scrollbar-track {
    width: 0 !important;
    height: 0 !important;
    border: none;
  }
}

// 滚动条隐藏
::-webkit-scrollbar {
  width: 0 !important;
  height: 0 !important;
  border: none;
}

::-webkit-scrollbar-track {
  width: 0 !important;
  height: 0 !important;
  border: none;
}
</style>
