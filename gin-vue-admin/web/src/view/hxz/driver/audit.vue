<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-select v-model="searchInfo.auditStatus" placeholder="审核状态" style="width: 130px" clearable>
          <el-option label="待审核" :value="1" />
          <el-option label="已通过" :value="2" />
          <el-option label="已驳回" :value="3" />
        </el-select>
        <el-input v-model="searchInfo.city" placeholder="城市" style="width: 150px" clearable />
        <el-date-picker v-model="searchInfo.submitTime" type="daterange" range-separator="至" start-placeholder="提交开始" end-placeholder="提交结束" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="ID" prop="ID" width="80" />
        <el-table-column align="left" label="姓名" prop="name" width="100" />
        <el-table-column align="left" label="手机号" prop="phone" width="130" />
        <el-table-column align="left" label="城市" prop="city" width="100" />
        <el-table-column align="left" label="提交时间" prop="submitTime" width="170" />
        <el-table-column align="left" label="审核状态" prop="auditStatus" width="100">
          <template #default="scope">
            <el-tag :type="scope.row.auditStatus === 1 ? 'warning' : scope.row.auditStatus === 2 ? 'success' : 'danger'">{{ scope.row.auditStatus === 1 ? '待审核' : scope.row.auditStatus === 2 ? '已通过' : '已驳回' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="操作" min-width="160">
          <template #default="scope">
            <el-button v-if="scope.row.auditStatus === 1" type="success" link @click="approveAudit(scope.row)">通过</el-button>
            <el-button v-if="scope.row.auditStatus === 1" type="danger" link @click="openRejectDialog(scope.row)">驳回</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="rejectDialogVisible" title="驳回审核" width="450px">
      <el-form :model="rejectForm" label-width="80px">
        <el-form-item label="驳回原因">
          <el-input v-model="rejectForm.reason" type="textarea" :rows="4" placeholder="请输入驳回原因" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="rejectDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitReject">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getDriverAuditList, approveDriverAudit, rejectDriverAudit } from '@/api/hxzDriver'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'DriverAudit' })

const searchInfo = ref({
  auditStatus: undefined,
  city: '',
  submitTime: []
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
  const table = await getDriverAuditList({
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

const approveAudit = (row) => {
  ElMessageBox.confirm('确定通过该司机的审核吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await approveDriverAudit({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('审核通过')
      getTableData()
    }
  })
}

const rejectDialogVisible = ref(false)
const rejectForm = ref({ id: 0, reason: '' })
const openRejectDialog = (row) => {
  rejectForm.value = { id: row.ID, reason: '' }
  rejectDialogVisible.value = true
}
const submitReject = async () => {
  const res = await rejectDriverAudit(rejectForm.value)
  if (res.code === 0) {
    ElMessage.success('已驳回')
    rejectDialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
