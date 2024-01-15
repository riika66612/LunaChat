<template>
  <el-card>
  <el-form :model="info" label-width="100%" size="mini">
    <h1  style="color: rgb(51, 51, 51); font-size: 35px;text-align: center; font-family: 宋体;font-weight:700;" >{{ info.noticeTitle }}</h1>

    <p  style="text-align: center;color:#707070" > 时间： {{ info.createTime }}<span v-html="'\u00a0\u00a0\u00a0\u00a0'"></span>发布人：{{ info.createBy }}  </p>          <br>



    <p  class="img-box1" v-html="info.noticeContent"></p>





  </el-form>


    <el-form label-width="100px">
      <el-form-item style="text-align: right;margin-left:-100px;margin-top:10px;">

        <el-button @click="close()">返回</el-button>
      </el-form-item>
    </el-form>
</el-card>
</template>

<script>


import {getNotice} from "@/api/system/notice";


export default {
  name: "notice",
  components: {  },
  data() {
    return {
      user: {},
      roleGroup: {},
      postGroup: {},
      info: {},
    };
  },
  created() {
    this.getParams();
  },
  methods: {
    getParams(){
      const noticeId = this.$route.query.noticeId;
     if(noticeId){
       getNotice(noticeId).then(res =>{

         this.info = res.data;
       })


     }
    },

    /** 关闭按钮 */
    close() {
      const obj = { path: "/notice/noticelist", query: { t: Date.now(), pageNum: this.$route.query.pageNum } };
      this.$tab.closeOpenPage(obj);
    }


  }

};
</script>
<style lang="scss" scoped>
.img-box1 {
  white-space: pre-wrap;
  width: 90%;

  position: center;
  margin:20px auto;
}
.img-box1 img {
  width: 70%;

  position: relative;
  left: 50%;
  transform: translateX(-50%);
}


</style>
