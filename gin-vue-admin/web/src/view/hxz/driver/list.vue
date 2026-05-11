<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.phone" placeholder="手机号" style="width: 150px" clearable />
        <el-input v-model="searchInfo.name" placeholder="姓名" style="width: 150px" clearable />
        <el-input v-model="searchInfo.city" placeholder="城市" style="width: 150px" clearable />
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="正常" :value="1" />
          <el-option label="审核中" :value="2" />
          <el-option label="封禁" :value="3" />
        </el-select>
        <el-date-picker v-model="searchInfo.joinTime" type="daterange" range-separator="至" start-placeholder="入驻开始" end-placeholder="入驻结束" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="ID" prop="ID" width="80" />
        <el-table-column align="left" label="手机号" prop="phone" width="130" />
        <el-table-column align="left" label="姓名" prop="name" width="100" />
        <el-table-column align="left" label="城市" prop="city" width="100" />
        <el-table-column align="left" label="车型" prop="carModel" width="120" />
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'success' : scope.row.status === 2 ? 'warning' : 'danger'">{{ scope.row.status === 1 ? '正常' : scope.row.status === 2 ? '审核中' : '封禁' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="评分" prop="rating" width="80" />
        <el-table-column align="left" label="总行程" prop="totalTrip" width="80" />
        <el-table-column align="left" label="入驻日期" prop="joinDate" width="120" />
        <el-table-column align="left" label="操作" min-width="220">
          <template #default="scope">
            <el-button type="primary" link @click="openDetail(scope.row)">详情</el-button>
            <el-button v-if="scope.row.status === 2" type="warning" link @click="openAuditDialog(scope.row)">审核</el-button>
            <el-button v-if="scope.row.status === 1" type="danger" link @click="banDriver(scope.row)">封禁</el-button>
            <el-button v-if="scope.row.status === 3" type="success" link @click="unbanDriver(scope.row)">解封</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-drawer v-model="detailVisible" :show-close="false" size="500px">
      <template #header>
        <div class="flex justify-between items-center">
          <span class="text-lg">司机详情</span>
          <el-button @click="detailVisible = false">关 闭</el-button>
        </div>
      </template>
      <el-descriptions :column="1" border>
        <el-descriptions-item label="ID">{{ detailData.ID }}</el-descriptions-item>
        <el-descriptions-item label="手机号">{{ detailData.phone }}</el-descriptions-item>
        <el-descriptions-item label="姓名">{{ detailData.name }}</el-descriptions-item>
        <el-descriptions-item label="城市">{{ detailData.city }}</el-descriptions-item>
        <el-descriptions-item label="车型">{{ detailData.carModel }}</el-descriptions-item>
        <el-descriptions-item label="车牌号">{{ detailData.plateNumber }}</el-descriptions-item>
        <el-descriptions-item label="状态">{{ detailData.status === 1 ? '正常' : detailData.status === 2 ? '审核中' : '封禁' }}</el-descriptions-item>
        <el-descriptions-item label="评分">{{ detailData.rating }}</el-descriptions-item>
        <el-descriptions-item label="总行程">{{ detailData.totalTrip }}</el-descriptions-item>
        <el-descriptions-item label="入驻日期">{{ detailData.joinDate }}</el-descriptions-item>
      </el-descriptions>
    </el-drawer>
    <el-dialog v-model="auditDialogVisible" title="司机审核" width="450px">
      <el-form :model="auditForm" label-width="80px">
        <el-form-item label="审核结果">
          <el-radio-group v-model="auditForm.result">
            <el-radio :value="1">通过</el-radio>
            <el-radio :value="2">驳回</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item v-if="auditForm.result === 2" label="驳回原因">
          <el-input v-model="auditForm.reason" type="textarea" :rows="3" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="auditDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitAudit">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getDriverList, auditDriver, banDriver as banDriverApi, unbanDriver as unbanDriverApi } from '@/api/hxzDriver'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'DriverList' })

const searchInfo = ref({
  phone: '',
  name: '',
  city: '',
  status: undefined,
  joinTime: []
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
  const table = await getDriverList({
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

const detailVisible = ref(false)
const detailData = ref({})
const openDetail = (row) => {
  detailData.value = row
  detailVisible.value = true
}

const auditDialogVisible = ref(false)
const auditForm = ref({ driverId: 0, result: 1, reason: '' })
const openAuditDialog = (row) => {
  auditForm.value = { driverId: row.ID, result: 1, reason: '' }
  auditDialogVisible.value = true
}
const submitAudit = async () => {
  const res = await auditDriver(auditForm.value)
  if (res.code === 0) {
    ElMessage.success('审核成功')
    auditDialogVisible.value = false
    getTableData()
  }
}

const banDriver = (row) => {
  ElMessageBox.confirm('确定要封禁该司机吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await banDriverApi({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('封禁成功')
      getTableData()
    }
  })
}

const unbanDriver = (row) => {
  ElMessageBox.confirm('确定要解封该司机吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await unbanDriverApi({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('解封成功')
      getTableData()
    }
  })
}
</script>

<style></style>
