<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.name" placeholder="名称" style="width: 150px" clearable />
        <el-select v-model="searchInfo.type" placeholder="类型" style="width: 120px" clearable>
          <el-option label="拉新" :value="1" />
          <el-option label="促活" :value="2" />
          <el-option label="召回" :value="3" />
        </el-select>
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="进行中" :value="1" />
          <el-option label="已暂停" :value="2" />
          <el-option label="已结束" :value="3" />
        </el-select>
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openDialog('create')">新增</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="名称" prop="name" width="150" />
        <el-table-column align="left" label="类型" prop="type" width="90">
          <template #default="scope">
            <el-tag>{{ scope.row.type === 1 ? '拉新' : scope.row.type === 2 ? '促活' : '召回' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="时间范围" prop="timeRange" width="300" />
        <el-table-column align="left" label="状态" prop="status" width="100">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'success' : scope.row.status === 2 ? 'warning' : 'info'">{{ scope.row.status === 1 ? '进行中' : scope.row.status === 2 ? '已暂停' : '已结束' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="操作" min-width="200">
          <template #default="scope">
            <el-button type="primary" link @click="openDialog('update', scope.row)">编辑</el-button>
            <el-button v-if="scope.row.status === 1" type="warning" link @click="pauseActivity(scope.row)">暂停</el-button>
            <el-button v-if="scope.row.status === 2" type="success" link @click="resumeActivity(scope.row)">恢复</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="dialogVisible" :title="dialogType === 'create' ? '新增活动' : '编辑活动'" width="550px">
      <el-form :model="form" label-width="80px">
        <el-form-item label="名称">
          <el-input v-model="form.name" />
        </el-form-item>
        <el-form-item label="类型">
          <el-select v-model="form.type" placeholder="请选择">
            <el-option label="拉新" :value="1" />
            <el-option label="促活" :value="2" />
            <el-option label="召回" :value="3" />
          </el-select>
        </el-form-item>
        <el-form-item label="时间范围">
          <el-date-picker v-model="form.timeRange" type="daterange" range-separator="至" start-placeholder="开始" end-placeholder="结束" style="width: 100%" />
        </el-form-item>
        <el-form-item label="关联券模板">
          <el-input v-model="form.couponTemplateId" placeholder="优惠券模板ID" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getCouponActivityList, createCouponActivity, updateCouponActivity, pauseCouponActivity, resumeCouponActivity } from '@/api/hxzCoupon'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'CouponActivity' })

const searchInfo = ref({
  name: '',
  type: undefined,
  status: undefined
})

const page = ref(1)
const total = ref(0)
const pageSize = ref(10)
const tableData = ref([])

const handleSizeChange = (val) => {
  pageSize.value = val
  getTableData()
}

const handleCurrentChange = (val) => {
  page.value = val
  getTableData()
}

const getTableData = async () => {
  const table = await getCouponActivityList({
    page: page.value,
    pageSize: pageSize.value,
    ...searchInfo.value
  })
  if (table.code === 0) {
    tableData.value = table.data.list
    total.value = table.data.total
    page.value = table.data.page
    pageSize.value = table.data.pageSize
  }
}

getTableData()

const dialogVisible = ref(false)
const dialogType = ref('create')
const form = ref({ name: '', type: 1, timeRange: [], couponTemplateId: '' })
const openDialog = (type, row) => {
  dialogType.value = type
  if (type === 'create') {
    form.value = { name: '', type: 1, timeRange: [], couponTemplateId: '' }
  } else {
    form.value = { ...row }
  }
  dialogVisible.value = true
}
const submitForm = async () => {
  let res
  if (dialogType.value === 'create') {
    res = await createCouponActivity(form.value)
  } else {
    res = await updateCouponActivity(form.value)
  }
  if (res.code === 0) {
    ElMessage.success(dialogType.value === 'create' ? '新增成功' : '编辑成功')
    dialogVisible.value = false
    getTableData()
  }
}

const pauseActivity = (row) => {
  ElMessageBox.confirm('确定暂停该活动吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await pauseCouponActivity({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('已暂停')
      getTableData()
    }
  })
}

const resumeActivity = (row) => {
  ElMessageBox.confirm('确定恢复该活动吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await resumeCouponActivity({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('已恢复')
      getTableData()
    }
  })
}
</script>

<style></style>
