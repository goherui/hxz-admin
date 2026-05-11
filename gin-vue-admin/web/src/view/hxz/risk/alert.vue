<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-select v-model="searchInfo.objectType" placeholder="对象类型" style="width: 120px" clearable>
          <el-option label="乘客" :value="1" />
          <el-option label="司机" :value="2" />
          <el-option label="订单" :value="3" />
        </el-select>
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="待处理" :value="1" />
          <el-option label="处理中" :value="2" />
          <el-option label="已处理" :value="3" />
        </el-select>
        <el-select v-model="searchInfo.riskLevel" placeholder="风险等级" style="width: 120px" clearable>
          <el-option label="低" :value="1" />
          <el-option label="中" :value="2" />
          <el-option label="高" :value="3" />
        </el-select>
        <el-date-picker v-model="searchInfo.time" type="daterange" range-separator="至" start-placeholder="开始时间" end-placeholder="结束时间" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="规则" prop="ruleName" width="150" />
        <el-table-column align="left" label="对象" prop="objectName" width="120" />
        <el-table-column align="left" label="风险等级" prop="riskLevel" width="100">
          <template #default="scope">
            <el-tag :type="scope.row.riskLevel === 1 ? 'info' : scope.row.riskLevel === 2 ? 'warning' : 'danger'">{{ scope.row.riskLevel === 1 ? '低' : scope.row.riskLevel === 2 ? '中' : '高' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="摘要" prop="summary" min-width="250" />
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'danger' : scope.row.status === 2 ? 'warning' : 'success'">{{ scope.row.status === 1 ? '待处理' : scope.row.status === 2 ? '处理中' : '已处理' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="时间" prop="time" width="170" />
        <el-table-column align="left" label="操作" min-width="100">
          <template #default="scope">
            <el-button v-if="scope.row.status !== 3" type="primary" link @click="openHandleDialog(scope.row)">处理</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="handleDialogVisible" title="处理预警" width="450px">
      <el-form :model="handleForm" label-width="80px">
        <el-form-item label="处理方式">
          <el-select v-model="handleForm.action" placeholder="请选择">
            <el-option label="标记处理中" :value="2" />
            <el-option label="标记已处理" :value="3" />
          </el-select>
        </el-form-item>
        <el-form-item label="处理备注">
          <el-input v-model="handleForm.remark" type="textarea" :rows="3" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="handleDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitHandle">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getRiskAlertList, handleRiskAlert } from '@/api/hxzRisk'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'RiskAlert' })

const searchInfo = ref({
  objectType: undefined,
  status: undefined,
  riskLevel: undefined,
  time: []
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
  const table = await getRiskAlertList({
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

const handleDialogVisible = ref(false)
const handleForm = ref({ id: 0, action: 3, remark: '' })
const openHandleDialog = (row) => {
  handleForm.value = { id: row.ID, action: 3, remark: '' }
  handleDialogVisible.value = true
}
const submitHandle = async () => {
  const res = await handleRiskAlert(handleForm.value)
  if (res.code === 0) {
    ElMessage.success('处理成功')
    handleDialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
