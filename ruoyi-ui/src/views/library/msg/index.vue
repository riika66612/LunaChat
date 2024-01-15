<template xmlns:c="http://www.w3.org/1999/html">
  <div class="app-container">
    <el-card class="box-card">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="消息标题" prop="msgTitle">
        <el-input
          v-model="queryParams.msgTitle"
          placeholder="请输入消息标题"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <!--<el-form-item label="内容级别" prop="contentLevel">
        <el-input
          v-model="queryParams.contentLevel"
          placeholder="请输入内容级别"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="接受者字符串" prop="receiveCodes">
        <el-input
          v-model="queryParams.receiveCodes"
          placeholder="请输入接受者字符串"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="接受者名称字符串" prop="receiveNames">
        <el-input
          v-model="queryParams.receiveNames"
          placeholder="请输入接受者名称字符串"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发送者用户编码" prop="sendUserCode">
        <el-input
          v-model="queryParams.sendUserCode"
          placeholder="请输入发送者用户编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="发送者" prop="note1">
        <el-input
          v-model="queryParams.note1"
          placeholder="请输入发送者"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发送时间" prop="sendDate">
        <el-date-picker clearable
          v-model="queryParams.sendDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择发送时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="阅读状态" prop="readStatus">
        <!--<el-input
          v-model="queryParams.readStatus"
          placeholder="请输入阅读状态"
          clearable
          @keyup.enter.native="handleQuery"
        />-->
        <el-select
          v-model="queryParams.readStatus"
          placeholder="请选择阅读状态"
          clearable
        >
        <el-option key="选项1" label="未读" value="0" />
          <el-option key="选项2" label="已读" value="1" />
        </el-select>
      </el-form-item>
      <!--<el-form-item label="是否有附件" prop="isAttac">
        <el-input
          v-model="queryParams.isAttac"
          placeholder="请输入是否有附件"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="通知类型" prop="notifyTypes">
        <el-input
          v-model="queryParams.notifyTypes"
          placeholder="请输入通知类型"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="创建者" prop="createBy">
        <el-input
          v-model="queryParams.createBy"
          placeholder="请输入创建者"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="创建时间" prop="createTime">
        <el-date-picker clearable
          v-model="queryParams.createTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择创建时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="更新者" prop="updateBy">
        <el-input
          v-model="queryParams.updateBy"
          placeholder="请输入更新者"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="更新时间" prop="updateTime">
        <el-date-picker clearable
          v-model="queryParams.updateTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择更新时间">
        </el-date-picker>
      </el-form-item>-->
      <br/>
      <div style="text-align: right;">
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </div>
      <br/>
    </el-form>

    <!--<el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:inner:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:inner:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:inner:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:inner:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>-->

    <el-table v-loading="loading" :data="innerList" border @selection-change="handleSelectionChange">
<!--      <el-table-column type="selection" width="55" align="center" />-->
      <el-table-column type="index" label="序号" width="55" :index="indexMethod" align="center" />
      <!--<el-table-column label="ID" align="center" prop="id" />-->
      <el-table-column label="消息标题" align="center" prop="msgTitle" />
      <!--<el-table-column label="内容级别" align="center" prop="contentLevel" />
      <el-table-column label="内容类型" align="center" prop="contentType" />
      <el-table-column label="消息内容" align="center" prop="msgContent" />-->
      <!--<el-table-column label="接受者类型" align="center" prop="receiveType" />
      <el-table-column label="接受者字符串" align="center" prop="receiveCodes" />
      <el-table-column label="接受者名称字符串" align="center" prop="receiveNames" />
      <el-table-column label="发送者用户编码" align="center" prop="sendUserCode" />-->
      <el-table-column label="发送者" align="center" prop="note1" />
      <el-table-column label="发送时间" align="center" prop="sendDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.sendDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="阅读状态" align="center" prop="readStatus" />
      <el-table-column label="阅读时间" align="center" prop="readDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.readDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <!--<el-table-column label="是否有附件" align="center" prop="isAttac" />
      <el-table-column label="通知类型" align="center" prop="notifyTypes" />
      <el-table-column label="状态" align="center" prop="status" />
      <el-table-column label="创建者" align="center" prop="createBy" />
      <el-table-column label="创建时间" align="center" prop="createTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="更新者" align="center" prop="updateBy" />
      <el-table-column label="更新时间" align="center" prop="updateTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.updateTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>-->
      <!--<el-table-column label="备注" align="center" prop="remark" />-->
      <!--<el-table-column label="备注1" align="center" prop="note1" />
      <el-table-column label="备注2" align="center" prop="note2" />
      <el-table-column label="备注3" align="center" prop="note3" />
      <el-table-column label="备注4" align="center" prop="note4" />
      <el-table-column label="备注5" align="center" prop="note5" />
      <el-table-column label="备注6" align="center" prop="note6" />
      <el-table-column label="备注7" align="center" prop="note7" />
      <el-table-column label="备注8" align="center" prop="note8" />
      <el-table-column label="备注9" align="center" prop="note9" />
      <el-table-column label="备注10" align="center" prop="note10" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-view"
            @click="handleDetail(scope.row,scope.index)"
          >详细</el-button>
          <!--<el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:inner:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:inner:remove']"
          >删除</el-button>-->
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
    <!-- 添加或修改内部消息对话框 -->
    <!--<el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="消息标题" prop="msgTitle">
          <el-input v-model="form.msgTitle" placeholder="请输入消息标题" />
        </el-form-item>
        <el-form-item label="内容级别" prop="contentLevel">
          <el-input v-model="form.contentLevel" placeholder="请输入内容级别" />
        </el-form-item>
        <el-form-item label="消息内容">
          <editor v-model="form.msgContent" :min-height="192"/>
        </el-form-item>
        <el-form-item label="接受者字符串" prop="receiveCodes">
          <el-input v-model="form.receiveCodes" placeholder="请输入接受者字符串" />
        </el-form-item>
        <el-form-item label="接受者名称字符串" prop="receiveNames">
          <el-input v-model="form.receiveNames" placeholder="请输入接受者名称字符串" />
        </el-form-item>
        <el-form-item label="发送者用户编码" prop="sendUserCode">
          <el-input v-model="form.sendUserCode" placeholder="请输入发送者用户编码" />
        </el-form-item>
        <el-form-item label="发送者用户姓名" prop="sendUserName">
          <el-input v-model="form.sendUserName" placeholder="请输入发送者用户姓名" />
        </el-form-item>
        <el-form-item label="发送时间" prop="sendDate">
          <el-date-picker clearable
            v-model="form.sendDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择发送时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="是否有附件" prop="isAttac">
          <el-input v-model="form.isAttac" placeholder="请输入是否有附件" />
        </el-form-item>
        <el-form-item label="通知类型" prop="notifyTypes">
          <el-input v-model="form.notifyTypes" placeholder="请输入通知类型" />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        &lt;!&ndash;<el-form-item label="备注1" prop="note1">
          <el-input v-model="form.note1" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注2" prop="note2">
          <el-input v-model="form.note2" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注3" prop="note3">
          <el-input v-model="form.note3" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注4" prop="note4">
          <el-input v-model="form.note4" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注5" prop="note5">
          <el-input v-model="form.note5" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注6" prop="note6">
          <el-input v-model="form.note6" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注7" prop="note7">
          <el-input v-model="form.note7" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注8" prop="note8">
          <el-input v-model="form.note8" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注9" prop="note9">
          <el-input v-model="form.note9" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="备注10" prop="note10">
          <el-input v-model="form.note10" type="textarea" placeholder="请输入内容" />
        </el-form-item>&ndash;&gt;
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>-->

    <!-- 消息详情 -->
    <el-dialog :title="title" :visible.sync="open" :showClose="false" width="1300px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="150px">
        <el-container>
<!--          <el-header>
            <el-divider content-position="left">
              <p style="color: #00afff; font-size: 20px;">消息详情</p>
            </el-divider>
          </el-header>-->
          <el-main>
            <el-row>
              <el-col :span="12">
                <el-form-item label="消息标题" prop="msgTitle">
                  <el-input v-model="form.msgTitle" readonly="true"/>
                </el-form-item>
              </el-col>
              <el-col :span="12">
                <el-form-item label="发送时间" prop="sendDate">
                  <el-date-picker clearable
                                  v-model="form.sendDate"
                                  type="date"
                                  value-format="yyyy-MM-dd"
                                  placeholder="请选择发送时间"
                                  readonly="true">
                  </el-date-picker>
                </el-form-item>
              </el-col>
            </el-row>

            <el-col :span="20">
              <el-form-item label="消息内容">
                <editor v-model="form.msgContent" :min-height="192" readOnly="true"/>
              </el-form-item>
            </el-col>

          </el-main>
        </el-container>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button><router-link to="/batai/bartai">前 往</router-link></el-button>
<!--        <el-button><router-link :to="form.note2"  >前 往</router-link></el-button>-->
        <!--<el-button @click="towardDeal(form.note2)">前 往 处 理</el-button>-->
        <el-button @click="detailCancel">返 回</el-button>

      </div>
      <!--<div slot="footer" class="dialog-footer">
        <el-button><router-link to="/notice/noticelist">前 往</router-link></el-button>
      </div>-->
    </el-dialog>
  </div>
</template>

<script>
import { listInner, getInner, delInner, addInner, updateInner } from "@/api/library/msg/inner";
// import {TextToCode} from "element-china-area-data";
import BasicInfoForm from "../../tool/gen/basicInfoForm";

export default {
  name: "Inner",
  components: {BasicInfoForm},
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
      // 内部消息表格数据
      innerList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        msgTitle: null,
        contentLevel: null,
        contentType: null,
        msgContent: null,
        receiveType: null,
        receiveCodes: null,
        receiveNames: null,
        sendUserCode: null,
        sendUserName: null,
        sendDate: null,
        isAttac: null,
        notifyTypes: null,
        status: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null,
        // 以下record表里的
        receiveUserCode: null,
        receiveUserName: null,
        readStatus: null,
        readDate: null,
        isStar: null,
        // 以上record表里的
        note1: null,
        note2: null,
        note3: null,
        note4: null,
        note5: null,
        note6: null,
        note7: null,
        note8: null,
        note9: null,
        note10: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
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
    /** 查询内部消息列表 */
    getList() {
      this.loading = true;
      listInner(this.queryParams).then(response => {
        this.innerList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 取消按钮
    detailCancel() {
      this.open = false;
      this.getList();
    },
    // 前往处理按钮
    towardDeal(url) {
      console.log(url)
      this.route.push({
        path: url
      })
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        msgTitle: null,
        contentLevel: null,
        contentType: null,
        msgContent: null,
        receiveType: null,
        receiveCodes: null,
        receiveNames: null,
        sendUserCode: null,
        sendUserName: null,
        sendDate: null,
        isAttac: null,
        notifyTypes: null,
        status: "0",
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null,
        note1: null,
        note2: null,
        note3: null,
        note4: null,
        note5: null,
        note6: null,
        note7: null,
        note8: null,
        note9: null,
        note10: null
      };
      this.resetForm("form");
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
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加内部消息";
    },
    /** 详细按钮操作 */
    handleDetail(row) {
      const id = row.id || this.ids
      getInner(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "消息详细";
      });
    },
    /** 修改按钮操作 */
    /*handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getInner(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改内部消息";
      });
    },*/
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateInner(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addInner(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除内部消息编号为"' + ids + '"的数据项？').then(function() {
        return delInner(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/inner/export', {
        ...this.queryParams
      }, `inner_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
