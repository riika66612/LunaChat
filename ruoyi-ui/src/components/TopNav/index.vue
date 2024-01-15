<template>
  <!--  <el-menu
      :default-active="activeMenu"
      mode="horizontal"
      @select="handleSelect"
    >
      <template v-for="(item, index) in topMenus">
        <el-menu-item :style="{'&#45;&#45;theme': theme}" :index="item.path" :key="index" v-if="index < visibleNumber"
          ><svg-icon :icon-class="item.meta.icon" />
          {{ item.meta.title }}</el-menu-item
      >
      </template>

      &lt;!&ndash; 顶部菜单超出数量折叠 &ndash;&gt;
      <el-submenu :style="{'&#45;&#45;theme': theme}" index="more" v-if="topMenus.length > visibleNumber">
        <template slot="title">更多菜单</template>
        <template v-for="(item, index) in topMenus">
          <el-menu-item
            :index="item.path"
            :key="index"
            v-if="index >= visibleNumber"
            ><svg-icon :icon-class="item.meta.icon" />
            {{ item.meta.title }}</el-menu-item
          >
        </template>
      </el-submenu>
    </el-menu>-->
  <div>
    <div class="logo-item" :key="99">
      <logo v-if="showLogo"/>
    </div>

    <div class="elmenua">
      <el-menu
        :default-active="activeMenu"
        mode="horizontal"
        @select="handleSelect"
        background-color="#5676e9"
        text-color="#fff"

      >

        <!--    <el-menu-item :style="{'--theme': theme}" :key="1">
              <router-link to="/application/list" style="padding:20px 0px 20px 0px">
                <svg-icon icon-class="application"/>
                应用中心
              </router-link>
            </el-menu-item>-->

        <!--    <el-menu-item  :style="{'&#45;&#45;theme': theme}" :key="2" >-->
        <!--      <router-link to="/batai/bartai" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-batai"/>-->
        <!--        吧台-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->

        <!--    <el-menu-item :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--      <router-link to="/batai/xiabazhuye" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-xieba"/>-->
        <!--        鞋吧-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->

        <!--    <el-menu-item :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--      <router-link to="/kefang/kefang" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-kefang"/>-->
        <!--        客房-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->

        <!--    <el-menu-item :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--      <router-link to="/yuquangong/shopdiandan" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-shangpin"/>-->
        <!--        商品-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->

        <!--<el-menu-item v-if=" this.$store.state.user.roles.indexOf('cuozao') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/cuozao/paihao" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-cuozao"/>-->
        <!--    搓澡-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if=" this.$store.state.user.roles.indexOf('cuozao') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/cuozao/dian" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-cuozao"/>-->
        <!--    点单-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if=" this.$store.state.user.roles.indexOf('jsjingli') > -1" :style="{'&#45;&#45;theme': theme}"-->
        <!--              :key="2">-->
        <!--  <router-link to="/jishi/jingliindex" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    技师经理首页-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('jishi') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/jishi/index" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    技师首页-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('spjingli') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/yuquangong/shopdiandan" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    商品经理首页-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('shangpin') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/yuquangong/shopdiandan" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    商品首页-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('kefang') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/kefang/kefang" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    客房-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('kefang') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/kefang/dating" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    大厅-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('xieba') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/batai/xiabazhuye" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    历史离店记录-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->
        <!--<el-menu-item v-if="this.$store.state.user.roles.indexOf('xieba') > -1" :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--  <router-link to="/batai/diandan" style="padding:20px 0px 20px 0px">-->
        <!--    <svg-icon icon-class="yqg-jishi"/>-->
        <!--    鞋吧点单-->
        <!--  </router-link>-->
        <!--</el-menu-item>-->


        <!--    <el-menu-item :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--      <router-link to="/canting/diancan" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-canting"/>-->
        <!--        餐厅-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->

        <!--    <el-menu-item :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--      <router-link to="/huiyuan/huiyuan" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-canting"/>-->
        <!--        会员-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->
        <!--    <el-menu-item :style="{'&#45;&#45;theme': theme}" :key="2">-->
        <!--      <router-link to="/yuquangong/zujie" style="padding:20px 0px 20px 0px">-->
        <!--        <svg-icon icon-class="yqg-canting"/>-->
        <!--        浴袍租借-->
        <!--      </router-link>-->
        <!--    </el-menu-item>-->
      </el-menu>
    </div>

  </div>
</template>

<script>
import {constantRoutes} from "@/router";
import Logo from "@/layout/components/Sidebar/Logo";
import SidebarItem from "@/layout/components/Sidebar/SidebarItem.vue";
import logoImg from "@/assets/logo/logo.png";
// 隐藏侧边栏路由
const hideList = ['/index', '/user/profile'];

export default {
  components: {Logo},
  data() {
    return {
      lan: '',
      kefang: '',
      // 顶部栏初始数
      visibleNumber: 5,
      // 当前激活菜单的 index
      currentIndex: undefined
    };
  },
  computed: {
    theme() {
      return this.$store.state.settings.theme;
    },
    showLogo() {
      return this.$store.state.settings.sidebarLogo;
    },
    // 顶部显示菜单
    topMenus() {
      let topMenus = [];
      this.routers.map((menu) => {
        if (menu.hidden !== true) {
          // 兼容顶部栏一级菜单内部跳转
          if (menu.path === "/") {
            topMenus.push(menu.children[0]);
          } else {
            topMenus.push(menu);
          }
        }
      });
      return topMenus;
    },
    // 所有的路由信息
    routers() {
      return this.$store.state.permission.topbarRouters;
    },
    // 设置子路由
    childrenMenus() {
      var childrenMenus = [];
      this.routers.map((router) => {
        for (var item in router.children) {
          if (router.children[item].parentPath === undefined) {
            if (router.path === "/") {
              router.children[item].path = "/" + router.children[item].path;
            } else {
              if (!this.ishttp(router.children[item].path)) {
                router.children[item].path = router.path + "/" + router.children[item].path;
              }
            }
            router.children[item].parentPath = router.path;
          }
          childrenMenus.push(router.children[item]);
        }
      });
      return constantRoutes.concat(childrenMenus);
    },
    // 默认激活的菜单
    activeMenu() {
      const path = this.$route.path;
      let activePath = path;
      if (path !== undefined && path.lastIndexOf("/") > 0 && hideList.indexOf(path) === -1) {
        // const tmpPath = path.substring(1, path.length);
        // activePath = "/" + tmpPath.substring(0, tmpPath.indexOf("/"));
        // if (!this.$route.meta.link) {
        //   this.$store.dispatch('app/toggleSideBarHide', false);
        // }
      } else if (!this.$route.children) {
        // activePath = path;
        // this.$store.dispatch('app/toggleSideBarHide', true);
      }
      this.activeRoutes(activePath);
      return activePath;
    },
  },
  beforeMount() {
    window.addEventListener('resize', this.setVisibleNumber)
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.setVisibleNumber)
  },
  mounted() {
    this.setVisibleNumber();
  },
  created() {
    this.lan = this.$store.state.user.nickname.slice(0, 3); // 截取从第一个字符到第四个字符的部分
    this.kefang = this.$store.state.user.nickname.slice(0, 2);
    console.log(this.kefang)
  },
  methods: {
    // 根据宽度计算设置显示栏数
    setVisibleNumber() {
      const width = document.body.getBoundingClientRect().width / 3;
      this.visibleNumber = parseInt(width / 85);
    },
    // 菜单选择事件
    handleSelect(key, keyPath) {
      this.currentIndex = key;
      const route = this.routers.find(item => item.path === key);
      if (this.ishttp(key)) {
        // http(s):// 路径新窗口打开
        window.open(key, "_blank");
      } else if (!route || !route.children) {
        // 没有子路由路径内部打开
        this.$router.push({path: key});
        this.$store.dispatch('app/toggleSideBarHide', true);
      } else {
        // 显示左侧联动菜单
        this.activeRoutes(key);
        this.$store.dispatch('app/toggleSideBarHide', false);
      }
    },
    // 当前激活的路由
    activeRoutes(key) {
      var routes = [];
      if (this.childrenMenus && this.childrenMenus.length > 0) {
        this.childrenMenus.map((item) => {
          if (key == item.parentPath || (key == "index" && "" == item.path)) {
            routes.push(item);
          }
        });
      }
      if (routes.length > 0) {
        this.$store.commit("SET_SIDEBAR_ROUTERS", routes);
      } else {
        this.$store.dispatch('app/toggleSideBarHide', true);
      }
    },
    ishttp(url) {
      return url.indexOf('http://') !== -1 || url.indexOf('https://') !== -1
    }
  },
};
</script>

<style lang="scss">

.elmenua {
  padding-left: 170px;
}

.topmenu-container.el-menu--horizontal > .el-menu-item {
  font-size: 15px;
  float: left;
  height: 59px !important;
  line-height: 62px !important;
  color: #ffff !important;
  padding: 0 5px !important;
  margin: 0 10px !important;
  border-bottom-color: #5676e9;
}

.logo {
  height: 100%;
  background-color: #ff2525;
}

/* submenu item */
.topmenu-container.el-menu--horizontal > .el-submenu .el-submenu__title {
  font-size: 15px;
  float: left;
  position: absolute;
  height: 58px !important;
  line-height: 62px !important;
  color: #ffff !important;
  padding: 0 5px !important;
  margin: 0 10px !important;
}

.logo-item {
  font-size: 15px;
  float: left;
  height: 0px !important;
  line-height: 62px !important;
  color: #ffff !important;
  padding-right: 10px !important;
  margin-right: 10px !important;
  border-bottom-color: #5676e9;
}

/* 点击后颜色，问题:点击后会一起改变,需要修改 */
.el-menu--horizontal > .el-menu-item.is-active {
  border-bottom: 2px solid #1890ff;
  color: #ffff;
}

/* 悬浮后颜色 */
.el-menu--horizontal .el-menu-item:not(.is-disabled):hover,
.el-menu-.horizontal .el-menu-item:not(.is-disabled):focus {
  outline: none;
  color: #ffff;
}

</style>
