<template>
  <div id="app">
    <router-view v-if="isShow"/>
    <theme-picker/>
  </div>
</template>

<script>
import ThemePicker from "@/components/ThemePicker";

export default {
  name: "App",
  // 父组件中通过provide来提供变量，在子组件中通过inject接受
  provide() {
    return {
      reload: this.reload
    }
  },
  data(){
    return{
      isShow:true
    }
  },
  methods:{
    reload(){
      // reload方法首先将isShow设置为false，将router-view通过if判断取消
      this.isShow = false
      // Vue.nextTick用于延迟执行一段代码，它接受2个参数（回调函数和执行回调函数的上下文环境），如果没有提供回调函数，那么将返回promise对象。
      this.$nextTick(function (){
        // 在页面更新后再将isShow设置为true
        this.isShow = true
      })
    }
  },
  components: {ThemePicker},
  metaInfo() {
    return {
      title: this.$store.state.settings.dynamicTitle && this.$store.state.settings.title,
      titleTemplate: title => {
        return title ? `${title} - ${process.env.VUE_APP_TITLE}` : process.env.VUE_APP_TITLE
      }
    }
  }
};
</script>
<style scoped>
#app .theme-picker {
  display: none;
}
</style>
