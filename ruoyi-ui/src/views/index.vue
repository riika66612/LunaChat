<template>
  <div class="app-container home">

    <el-row>
      <el-col>
        <h2 align="center">和露娜做朋友</h2>
      </el-col>
    </el-row>
  </div>
</template>

<script>
import TopNav from '@/components/TopNav'
import {mapGetters} from "vuex";
import {updateIp} from "@/api/module/indexPage/user"

export default {
  components: {
    TopNav
  },
  name: "Index",
  data() {
    return {
      // 版本号
      version: "3.8.4",
    };
  },
  created() {
    updateIp()

    window.addEventListener("mousewheel", function (event) {
      if (event.ctrlKey === true || event.metaKey) {
        event.preventDefault();
      }
    }, {passive: false})

    this.$store.dispatch('settings/changeSetting', {
      key: 'topNav',
      value: false
    })
    this.$store.dispatch('app/toggleSideBarHide', false);
    this.$store.commit("SET_SIDEBAR_ROUTERS", this.$store.state.permission.defaultRoutes);
    /*      if(this.$store.state.user.roles.indexOf('caiwu') > -1){
            this.$store.dispatch('settings/changeSetting', {
              key: 'topNav',
              value: false
            })
            this.$store.dispatch('app/toggleSideBarHide', false);
            this.$store.commit("SET_SIDEBAR_ROUTERS", this.$store.state.permission.defaultRoutes);
          } else {
            this.$store.dispatch('settings/changeSetting', {
              key: 'topNav',
              value: false
            })
            this.$store.dispatch('app/toggleSideBarHide', false);
            this.$store.commit("SET_SIDEBAR_ROUTERS", this.$store.state.permission.defaultRoutes);
          }*/
  },
  computed: {
    topNav: {
      get() {
        return this.$store.state.settings.topNav
      }
    }
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
  },
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }

  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }

  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 20%;
    font-size: 80px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

