<template>
  <div class="app-container">
    <el-row >
      <el-card class="box-card" style="height: 760px;">
        <el-tabs v-model="activeName"  >
          <el-tab-pane label="常用应用" name="first"  >
            <div class="grid-content" style="margin-left: -20px;">

              <el-button v-for="(item,index) in normalList" @click="getNormalList(item)" style="margin-left: 20px; margin-top:10px;width: 180px " >
                <el-row :gutter="10" style="margin-top: -12px;margin-bottom: 20px; top: 20px;">
                  <el-col :span="8" :xs="12">

                    <el-image
                      style="width: 48px; height: 48px ; border-radius: 4px;margin-top: 7px;"
                      :src="imgLoad(item.appIcon)"
                    ></el-image>
                  </el-col>
                  <el-col :span="16" :xs="12">
                    <h3 style="margin: 5px 2px; text-align: center;">{{item.menuName[0]}}{{item.menuName[1]}}{{item.menuName[2]}}{{item.menuName[3]}}<br></h3>

                    <h3 style="margin: 5px 2px;" >{{item.menuName[4]}}{{item.menuName[5]}}{{item.menuName[6]}}{{item.menuName[7]}}<br></h3>

                  </el-col>

                </el-row>


              </el-button>
            </div>
          </el-tab-pane>

          <el-tab-pane
            v-for="item in contentList"
            row-key="menuId"
            :label="item.menuName"
            :name="''+item.menuId"
            @tab-click="handleClick(item)"
          />


        </el-tabs>
        <div class="grid-content" style="margin-left: -20px;">

          <el-button v-for="(item,index) in List" @click="getLista(item)" style="margin-left: 20px; margin-top:10px;width: 180px " >
            <el-row :gutter="10" style="margin-top: -12px;margin-bottom: 20px; top: 20px;">
              <el-col :span="8" :xs="12">

                <el-image
                  style="width: 48px; height: 48px ; border-radius: 4px;margin-top: 7px;"
                  :src="imgLoad(item.appIcon)"
                ></el-image>
              </el-col>
              <el-col :span="16" :xs="12">
                <h3 style="margin: 5px 2px; text-align: center;">{{item.menuName[0]}}{{item.menuName[1]}}{{item.menuName[2]}}{{item.menuName[3]}}<br></h3>

                <h3 style="margin: 5px 2px;" >{{item.menuName[4]}}{{item.menuName[5]}}{{item.menuName[6]}}{{item.menuName[7]}}<br></h3>

              </el-col>

            </el-row>


          </el-button>
        </div>
      </el-card>
    </el-row>














  </div>
</template>
<style>

.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #f5f5f5;
}
.bg-purple-light {
  background: #e5e9f2;
}

.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}
</style>
<script>
// import Office from '../../../../assets/button/budget.png';

import {delMenu, getMenu, listMenu, listMenu1, getRouter, listNormal,getNumber} from "@/api/library/application/application";
import Treeselect from "@riophae/vue-treeselect";
import "@riophae/vue-treeselect/dist/vue-treeselect.css";
import IconSelect from "@/components/IconSelect";


export default {
  data() {
    return {
      // defaultImg: 'this.src="' + require(`../../../../assets/button/aaaa.png`) + '"',

      categoryList: "",
      activeName: 'first',
      activeName1: 'first',
      activeName2:"first",
      menuList: [],
      List:[],
      menuOptions: [],
      List1:[],
      title: "",
      product: "", // 分类列表
      normalList:[],
      contentList: [],

      queryParams: {

        menuId: null,
        menuName: null,
        parentName: null,
        parentId: '1',


      },


    }
  },
  created() {
    this.getList();
    this.getNormal();
  },

  methods: {


    imgLoad(img){
      try {

        return  require(`../../../../assets/button/`+img)

      } catch (error) {

      }
    },
    getList() {
      this.loading = true;
      listMenu().then(response => {
        this.contentList = response.data;
        this.loading = false;
      });
    },

    getNormal(){
      this.loading = true;
      listNormal().then(response => {
        this.normalList = response.data;
        this.loading = false;
        // console.log(this.normalList+"999")
      });
    },

    /** 删除按钮操作 */
    handleDelete(row) {
      return getMenu(row.menuId);


    },
    /** 查询菜单下拉树结构 */
    getTreeselect() {
      listMenu().then(response => {
        this.menuOptions = [];
        const menu = { menuId: 1, menuName: '主类目', children: [] };
        menu.children = this.handleTree(response.data, "menuId");
        this.menuOptions.push(menu);
        //   console.log(+"8");



        /* for (let i in menu.children) {
           var data = menu.children[i];
           alert(data);f
           if (data.children) {
             this.getTreeselect(data.children)
           } else {
            alert(data.parentId);
           }
         }
*/




      });

    },

    getLista(item) {
      const path =item.path;
      // console.log(path+"88");
      // const tableName = row.tableName || this.tableNames[0];
      // const params = {pageNum: this.queryParams.pageNum};
      const menuId = item.menuId;
      getNumber(menuId).then(response => {
      });
      this.$router.push({path: "/"+a+"/"+path});
    },

    getNormalList(item){
      const path =item.path;
      const menuId = item.menuId;
      getNumber(menuId).then(response => {
      });
      this.$router.push({path: "/"+path});
    },




    handleClick(tab, event) {
      // console.log(tab.path, event+"999");
    }
  },
  watch: {
    activeName:function(val) { //监听切换状态-计划单
      if (val=='first'|| val==null){
        this.List = undefined;
        this.loading = true;
        listNormal().then(response => {
          this.normalList = response.data;
          this.loading = false;
          // console.log(this.normalList+"233");
        });
      }

      else {
        getRouter(val).then(response => {
          this.List1 = response.data;
          window.a=this.List1.path;
          this.loading = false;
          // console.log(this.List1.path+"710")
        });
        getMenu(val).then(response => {
          this.List = response.data;
          this.loading = false;
          // console.log(this.List[0].path+"777")

        })};
      let urlStr = "/hetong/cjlproject?id=" + val;

      // this.$router.push({path: "/hetong/cjlproject",query: {id: "1", name: "admin"} });


      // 更新地址栏链接，方便刷新页面可以回到原来的页面

    },




  },





};
</script>

