<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.orderNo" placeholder="订单号" style="width: 180px" clearable />
        <el-input v-model="searchInfo.passengerPhone" placeholder="乘客手机" style="width: 140px" clearable />
        <el-input v-model="searchInfo.driverPhone" placeholder="司机手机" style="width: 140px" clearable />
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="待接单" :value="1" />
          <el-option label="已接单" :value="2" />
          <el-option label="行程中" :value="3" />
          <el-option label="已完成" :value="4" />
          <el-option label="已取消" :value="5" />
          <el-option label="异常" :value="6" />
        </el-select>
        <el-input v-model="searchInfo.city" placeholder="城市" style="width: 120px" clearable />
        <el-select v-model="searchInfo.abnormalMark" placeholder="异常标记" style="width: 120px" clearable>
          <el-option label="正常" :value="0" />
          <el-option label="异常" :value="1" />
        </el-select>
        <el-date-picker v-model="searchInfo.createTime" type="daterange" range-separator="至" start-placeholder="创建开始" end-placeholder="创建结束" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="订单号" prop="orderNo" width="180" />
        <el-table-column align="left" label="乘客" prop="passengerName" width="90" />
        <el-table-column align="left" label="司机" prop="driverName" width="90" />
        <el-table-column align="left" label="车型" prop="carType" width="90" />
        <el-table-column align="left" label="起点→终点" min-width="200">
          <template #default="scope">
            <span>{{ scope.row.startPoint }} → {{ scope.row.endPoint }}</span>
          </template>
        </el-table-column>
        <el-table-column align="left" label="金额" prop="amount" width="90" />
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="orderStatusType(scope.row.status)">{{ orderStatusText(scope.row.status) }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="异常" prop="abnormalMark" width="70">
          <template #default="scope">
            <el-tag :type="scope.row.abnormalMark === 1 ? 'danger' : 'info'" size="small">{{ scope.row.abnormalMark === 1 ? '异常' : '正常' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="创建时间" prop="createTime" width="170" />
        <el-table-column align="left" label="操作" min-width="200">
          <template #default="scope">
            <el-button type="primary" link @click="openDetail(scope.row)">详情</el-button>
            <el-button v-if="scope.row.abnormalMark === 0" type="warning" link @click="markAbnormal(scope.row)">标记异常</el-button>
            <el-button type="info" link @click="openStatusDialog(scope.row)">修改状态</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-drawer v-model="detailVisible" :show-close="false" size="550px">
      <template #header>
        <div class="flex justify-between items-center">
          <span class="text-lg">订单详情</span>
          <el-button @click="detailVisible = false">关 闭</el-button>
        </div>
      </template>
      <el-descriptions :column="1" border>
        <el-descriptions-item label="订单号">{{ detailData.orderNo }}</el-descriptions-item>
        <el-descriptions-item label="乘客">{{ detailData.passengerName }}</el-descriptions-item>
        <el-descriptions-item label="司机">{{ detailData.driverName }}</el-descriptions-item>
        <el-descriptions-item label="车型">{{ detailData.carType }}</el-descriptions-item>
        <el-descriptions-item label="起点">{{ detailData.startPoint }}</el-descriptions-item>
        <el-descriptions-item label="终点">{{ detailData.endPoint }}</el-descriptions-item>
        <el-descriptions-item label="金额">{{ detailData.amount }}</el-descriptions-item>
        <el-descriptions-item label="状态">{{ orderStatusText(detailData.status) }}</el-descriptions-item>
        <el-descriptions-item label="异常标记">{{ detailData.abnormalMark === 1 ? '异常' : '正常' }}</el-descriptions-item>
        <el-descriptions-item label="创建时间">{{ detailData.createTime }}</el-descriptions-item>
      </el-descriptions>
    </el-drawer>
    <el-dialog v-model="statusDialogVisible" title="修改订单状态" width="400px">
      <el-form :model="statusForm" label-width="80px">
        <el-form-item label="订单状态">
          <el-select v-model="statusForm.status" placeholder="请选择">
            <el-option label="待接单" :value="1" />
            <el-option label="已接单" :value="2" />
            <el-option label="行程中" :value="3" />
            <el-option label="已完成" :value="4" />
            <el-option label="已取消" :value="5" />
            <el-option label="异常" :value="6" />
          </el-select>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="statusDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitStatus">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getOrderList, markOrderAbnormal, updateOrderStatus } from '@/api/hxzOrder'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'OrderList' })

const orderStatusType = (status) => {
  const map = { 1: 'info', 2: '', 3: 'warning', 4: 'success', 5: 'info', 6: 'danger' }
  return map[status] || 'info'
}

const orderStatusText = (status) => {
  const map = { 1: '待接单', 2: '已接单', 3: '行程中', 4: '已完成', 5: '已取消', 6: '异常' }
  return map[status] || '未知'
}

const searchInfo = ref({
  orderNo: '',
  passengerPhone: '',
  driverPhone: '',
  status: undefined,
  city: '',
  abnormalMark: undefined,
  createTime: []
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
  const table = await getOrderList({
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

const markAbnormal = (row) => {
  ElMessageBox.confirm('确定标记该订单为异常吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await markOrderAbnormal({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('已标记异常')
      getTableData()
    }
  })
}

const statusDialogVisible = ref(false)
const statusForm = ref({ id: 0, status: 1 })
const openStatusDialog = (row) => {
  statusForm.value = { id: row.ID, status: row.status }
  statusDialogVisible.value = true
}
const submitStatus = async () => {
  const res = await updateOrderStatus(statusForm.value)
  if (res.code === 0) {
    ElMessage.success('状态修改成功')
    statusDialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
