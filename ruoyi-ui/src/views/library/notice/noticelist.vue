<template>
  <div class="app-container">



      <el-row>
        <el-col>
          <el-card class="box-card" style="margin-top: 20px">

            <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px" style="margin-top: 10px">
              <el-form-item label="公告标题" prop="noticeTitle">
                <el-input
                  v-model="queryParams.noticeTitle"
                  placeholder="请输入公告标题"
                  clearable
                  @keyup.enter.native="handleQuery"
                />
              </el-form-item>

              <el-form-item label="类型" prop="noticeType">
                <el-select v-model="queryParams.noticeType" placeholder="公告类型" clearable>
                  <el-option
                    v-for="dict in dict.type.sys_notice_type"
                    :key="dict.value"
                    :label="dict.label"
                    :value="dict.value"
                  />
                </el-select>
              </el-form-item>


              <div style="text-align: right;">
                <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
                <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
              </div>
              <br/>
            </el-form>


            <el-table v-loading="loading" :data="contentList"  border >
              <el-table-column type="index" label="序号"   :index="indexMethod" align="center"/>
              <el-table-column label="公告标题" align="center" prop="noticeTitle">
                <template slot-scope="scope">
                  <div @click="getLista(scope.row)"  style="cursor: pointer;">
                    {{scope.row.noticeTitle}}
                  </div>
                </template>

              </el-table-column>
              <el-table-column
                label="创建时间"
                align="center"
                prop="createTime"
                width="200px">
                <template slot-scope="scope">
                  <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
                </template>
              </el-table-column>
            </el-table>


            <pagination
              v-show="total>0"
              :total="total"
              :page.sync="queryParams.pageNum"
              :limit.sync="queryParams.pageSize"
              @pagination="getList"
            />



          </el-card>
        </el-col>
      </el-row>
    </div>



</template>

<script>
import { listNotice, getNotice} from "@/api/system/notice";
  import watermark from "watermark-dom";

  export default {
    name: "Content",
    dicts: ['sys_notice_status', 'sys_notice_type'],
    data() {
      return {
        // 遮罩层
        loading: true,
        // 选中数组
        ids: [],
        // 非单个禁用
        single: true,
        // 非多个禁用
        multiple: true,
        // 显示搜索条件
        showSearch: true,
        // 总条数
        total: 0,
        // 内容公告发布表格数据
        contentList: [],
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          noticeTitle: undefined,
          createBy: undefined,
          status: 0,
          orderByColumn:"createTime",
          isAsc:"desc"

        },
        // 表单参数
        form: {},
        // 表单校验
        rules: {}
      };
    },

    created() {
      this.getList();
    },
    methods: {
      indexMethod(index) {
        index = (index + 1) + (this.queryParams.pageNum - 1) * this.queryParams.pageSize
        return index
      },
      /** 搜索按钮操作 */
      handleQuery() {
        this.queryParams.pageNum = 1;
        this.getList();
      },
      /** 重置按钮操作 */
      resetQuery() {
        this.resetForm("queryForm");
        this.handleQuery();
      },
      /** 查询内容公告发布列表 */
      getList() {
        this.loading = true;
        listNotice(this.queryParams).then(response => {

          this.contentList = response.rows;

          this.total = response.total;
          this.loading = false;
        });
      },
      /** 详情操作 */
      getLista(row) {
        this.$router.push({
          path: '/notice/index',
          query:{
            noticeId: row.noticeId,
          }
        })




    }
    },


  };
</script>
