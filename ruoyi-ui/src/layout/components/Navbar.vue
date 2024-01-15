<template>
  <div class="navbar">
    <hamburger id="hamburger-container" :is-active="sidebar.opened" v-if="showHamburger" class="hamburger-container"
               @toggleClick="toggleSideBar"/>

    <!--    <breadcrumb id="breadcrumb-container" class="breadcrumb-container" v-if="!topNav"/>-->
    <top-nav id="topmenu-container" class="topmenu-container" v-if="topNav"/>

    <div class="right-menu">
      <template v-if="device!=='mobile'">
        <!--<search id="header-search" class="right-menu-item" />-->
        <!--    通知公告铃铛注释掉        -->


        <!--            <router-link to="/msg/list"> <el-badge :value="this.unreadMsgNumsShow" class="right-menu-item item"><i class="el-icon-bell"></i></el-badge></router-link>-->
        <!--            <router-link to="/msg/list"> <el-badge :value="this.unreadMsgNumsShow"     :max="99"   class="right-menu-item item"> <svg-icon icon-class="bell"/></el-badge></router-link>-->
        <!--<router-link to="/msg/list">-->
        <!--  <el-badge :value="this.unreadMsgNumsShow" :max="99" class="right-menu-item item" @click="clearNum">-->
        <!--    <svg-icon icon-class="bell"/>-->
        <!--  </el-badge>-->
        <!--</router-link>-->
        <!--            <router-link to="/system/email"><img :src="img" class="right-menu-item" style = "width: 45px;padding-right: 15px"></router-link>-->
        <!--        <router-link to="/zonghe/email" class="right-menu-item item"> <svg-icon icon-class="email"  /></router-link>-->


        <!--        <el-tooltip content="源码地址" effect="dark" placement="bottom">
                  <ruo-yi-git id="yinhe-git" class="right-menu-item hover-effect" />
                </el-tooltip>-->

        <!--            <el-tooltip content="文档地址" effect="dark" placement="bottom">
                      <ruo-yi-doc id="yinhe-doc" class="right-menu-item hover-effect" />
                    </el-tooltip>-->

        <!--<screenfull id="screenfull" class="right-menu-item hover-effect" />-->


        <!--            <el-tooltip content="布局大小" effect="dark" placement="bottom">
                      <size-select id="size-select" class="right-menu-item hover-effect" />
                    </el-tooltip>-->

      </template>

      <el-dropdown class="avatar-container right-menu-item hover-effect" trigger="click">
        <div class="avatar-wrapper" style="margin: 0;">
          <img :src="avatar" class="user-avatar">
          <span class="right-menu-item" style="color: #ffffff;"><font
            style="font-family: 宋体"><b> {{ this.$store.state.user.nickname }}</b></font></span>
          <!--<i class="el-icon-caret-bottom" />-->
        </div>
        <el-dropdown-menu slot="dropdown">
          <router-link to="/user/profile">
            <el-dropdown-item>个人中心</el-dropdown-item>
          </router-link>
          <!--<el-dropdown-item @click.native="setting = true">-->
          <!--  <span>布局设置</span>-->
          <!--</el-dropdown-item>-->
          <el-dropdown-item divided @click.native="logout">
            <span>退出登录</span>
          </el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </div>

    <!--    <logo v-if="showLogo" :collapse="isCollapse" class = "logo"/>-->

  </div>
</template>
<script>
import {mapGetters} from 'vuex'
import Breadcrumb from '@/components/Breadcrumb'
import TopNav from '@/components/TopNav'
import Hamburger from '@/components/Hamburger'
import Screenfull from '@/components/Screenfull'
import SizeSelect from '@/components/SizeSelect'
import Search from '@/components/HeaderSearch'
import RuoYiGit from '@/components/RuoYi/Git'
import RuoYiDoc from '@/components/RuoYi/Doc'
import store from "@/store";
import {getIP} from "@/api/module/indexPage/user"

const {body} = document
const WIDTH = 992 // refer to Bootstrap's responsive design

export default {
  components: {
    Breadcrumb,
    TopNav,
    Hamburger,
    Screenfull,
    SizeSelect,
    Search,
    RuoYiGit,
    RuoYiDoc
  },
  // websocket start -----------------------------------------
  data() {
    return {
      user: '',
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
      unreadMsgNums: 0,
      unreadMsgNumsShow: '',
      hasConnected: false,
      /*Cookies:{
        unreadNums:''
      }*/
      showHamburger: false,
      ipAddr: '',
    }
  },
  created() {
    // 初始化websocket
    this.wsIsRun = true
    this.wsNumber = 1
    this.configIP()
  },
  watch: {
    unreadMsgNums() {
      // console.log("unreadMsgNums发生了变化")
    }
    /*unreadMsgNums:{
      handler(){
        console.log("unreadMsgNums发生了变化")
      },
      deep: true
    },*/
  },
  // websocket end -----------------------------------------
  computed: {
    ...mapGetters([
      'sidebar',
      'avatar',
      'device'
    ]),
    setting: {
      get() {
        return this.$store.state.settings.showSettings
      },
      set(val) {
        this.$store.dispatch('settings/changeSetting', {
          key: 'showSettings',
          value: val
        })
      }
    },
    topNav: {
      get() {
        return this.$store.state.settings.topNav
      }
    }
  },
  mounted() {
    const isMobile = this.$_isMobile()
    if (isMobile) {
      this.showHamburger = true
      // console.log(this.showHamburger)
      // store.dispatch('app/toggleDevice', 'mobile')
      // store.dispatch('app/closeSideBar', { withoutAnimation: true })
    }
  },
  methods: {
    clearNum() {
      this.unreadMsgNumsShow = ''
    },
    configIP() {
      getIP().then(res => {
        this.ipAddr = res
        this.wsInit()
      })
    },
    $_isMobile() {
      const rect = body.getBoundingClientRect()
      return rect.width - 1 < WIDTH
    },
    toggleSideBar() {
      this.$store.dispatch('app/toggleSideBar')
    },
    async logout() {
      this.$confirm('确定注销并退出系统吗？', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
      }).then(() => {
        this.$store.dispatch('LogOut').then(() => {
          location.href = '/index';
        })
      }).catch(() => {
      });
    },
    // websocket start -----------------------------------------
    // 给后台发送消息
    sendDataToServer() {
      if (this.webSocket.readyState === 1) {
        this.webSocket.send('来自前端的数据')
      } else {
        throw Error('服务未连接')
      }
    },
    /**
     * 初始化ws
     */
    wsInit() {
      // console.log("userName: " + this.$store.state.user.ipp)
      // console.log("user: " + this.ipAddr)
      const wsurl = 'ws://' + this.ipAddr + ':8080/library/wsService/' + this.$store.state.user.name
      this.ws = wsurl
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

      // 检查ws连接状态,readyState值为0表示尚未连接，1表示建立连接，2正在关闭连接，3已经关闭或无法打开
// 在某个方法中使用
      //     this.hasConnected = false; // 初始化连接状态为false
// 在某个方法中使用
      clearInterval(this.wsTimer);
      /*      this.wsTimer = setInterval(() => {
              console.log( this.hasConnected+"999")
              if (this.webSocket.readyState === 1) {
                clearInterval(this.wsTimer);
              } else {
                console.log('ws建立连接失败');
                if (this.hasConnected) { // 如果已经连接过一次，则不再重试
                  console.log('已经连接过一次，不再尝试连接');
                  this.wsDestroy()
                } else { // 否则尝试建立连接，并将连接状态设置为true
                  console.log('正在尝试连接...');
                  this.hasConnected = true;
                  this.wsInit();
                }
              }
            }, 3000);*/
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
     * 弹窗
     */
    openMsg(e) {
      const h = this.$createElement;
      if (e.data) {
        console.log(e.data)
        var data = JSON.parse(e.data)
        var route = this.$router;
        var path = window.location.href
        // console.log(route)
        var msgType = data.msgType;
        if (msgType === "push") {
          // 如果是推送的是一条消息
          this.unreadMsgNums++;
          if (this.unreadMsgNums > 99) {
            this.unreadMsgNumsShow = "99+";
          } else {
            this.unreadMsgNumsShow = String(this.unreadMsgNums);
          }

          this.$notify.info({
            title: data.msgTitle,
            message: data.msgContent,
            onClick() {
              // console.log(route)
              // this.unreadMsgNumsShow = '0'
              route.push({path: "/friends"});
            }
          });
        } else if (msgType === "unread" && !path.includes("chatroom")) {
          // 如果推送的是未读消息数
          //Cookies.set('unreadNums', data.unreadNums);
          // console.log("未读消息")
          this.unreadMsgNums = Number(data.unreadNums);
          if (this.unreadMsgNums > 0) {
            this.unreadMsgNumsShow = String(this.unreadMsgNums);
            if (this.unreadMsgNums > 99) {
              this.unreadMsgNumsShow = "99+";
            }
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
        } else if (msgType === "read") {
          // 如果推送的是用户已读消息
          this.unreadMsgNums--;
          if (this.unreadMsgNums > 0 && this.unreadMsgNums <= 99) {
            this.unreadMsgNumsShow = String(this.unreadMsgNums);
          } else if (this.unreadMsgNums <= 0) {
            this.unreadMsgNumsShow = '';
          }
        }

      }
    }
    // websocket end -----------------------------------------
  }
}
</script>
<style>
/**

 */
.el-badge__content {
  background-color: #f32b2b;
  border-radius: 10px;
  color: #FFFFFF;
  display: inline-block;
  font-size: 1px;
  height: 15px;
  line-height: 12px;
  padding: 0 4px;
  text-align: center;
  white-space: nowrap;
  border: 1px solid #FFFFFF;
}

.el-badge__content.is-fixed {
  position: absolute;
  top: 0;
  right: 20px;
  -webkit-transform: translateY(-50%) translateX(100%);
  transform: translateY(-30%) translateX(130%);
}

</style>
<style lang="scss" scoped>
.navbar {
  height: 60px;
  overflow: hidden;
  position: relative;
  background: #5676e9;
  box-shadow: 0 1px 4px rgba(0, 21, 41, .08);

  .hamburger-container {
    line-height: 46px;
    height: 100%;
    float: left;
    cursor: pointer;
    transition: background .3s;
    -webkit-tap-highlight-color: transparent;


    &:hover {
      background: rgba(0, 0, 0, .025)
    }
  }

  .logo {
    display: inline-block;
    width: 10%;
    float: left;
  }

  .breadcrumb-container {
    float: left;
  }

  .topmenu-container {
    position: absolute;

    /* 20230329修改，修改top顶栏图标*/
    left: 15px;
  }

  .errLog-container {
    display: inline-block;
    vertical-align: top;
  }

  .right-menu {
    float: right;
    height: 100%;
    line-height: 60px;

    &:focus {
      outline: none;
    }

    .right-menu-item {
      display: inline-block;
      padding: 0 8px;
      height: 100%;
      font-size: 14px;
      color: #ffffff;
      vertical-align: text-bottom;

      &.hover-effect {
        cursor: pointer;
        transition: background .3s;

        &:hover {
          background: rgba(0, 0, 0, .025)
        }
      }
    }

    /*    .el-icon-bell{
          display: inline-block;
          padding: 0 8px;
          height: 100%;
          font-size: 14px;
          color: #ffffff;
          vertical-align: text-bottom;
          padding-top: 23px;



        }*/

    .avatar-container {
      margin-right: 10px;

      .avatar-wrapper {
        margin-top: 0px;
        position: relative;

        .user-avatar {
          cursor: pointer;
          width: 32px;
          height: 32px;
          border-radius: 50%;
          margin-bottom: 10px;
        }

        .el-icon-caret-bottom {
          cursor: pointer;
          position: absolute;
          right: -20px;
          top: 25px;
          font-size: 12px;
        }
      }
    }
  }

  //消息提示数字偏移位置
  ::v-deep.el-badge__content.is-fixed {
    right: 22px;
  }

  //消息提示数字偏移位置
  ::v-deep.el-badge__content {
    margin-top: 20px;
  }
}
</style>
