<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.recordNo" placeholder="流水号" style="width: 180px" clearable />
        <el-select v-model="searchInfo.type" placeholder="类型" style="width: 120px" clearable>
          <el-option label="收入" :value="1" />
          <el-option label="支出" :value="2" />
          <el-option label="退款" :value="3" />
        </el-select>
        <el-select v-model="searchInfo.category" placeholder="分类" style="width: 120px" clearable>
          <el-option label="车费" :value="1" />
          <el-option label="抽成" :value="2" />
          <el-option label="优惠券" :value="3" />
          <el-option label="其他" :value="4" />
        </el-select>
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="成功" :value="1" />
          <el-option label="失败" :value="2" />
          <el-option label="处理中" :value="3" />
        </el-select>
        <el-date-picker v-model="searchInfo.time" type="daterange" range-separator="至" start-placeholder="开始时间" end-placeholder="结束时间" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="流水号" prop="recordNo" width="180" />
        <el-table-column align="left" label="关联订单" prop="orderNo" width="180" />
        <el-table-column align="left" label="类型" prop="type" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.type === 1 ? 'success' : scope.row.type === 2 ? 'danger' : 'warning'">{{ scope.row.type === 1 ? '收入' : scope.row.type === 2 ? '支出' : '退款' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="分类" prop="category" width="90">
          <template #default="scope">
            <span>{{ categoryText(scope.row.category) }}</span>
          </template>
        </el-table-column>
        <el-table-column align="left" label="金额" prop="amount" width="120" />
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'success' : scope.row.status === 2 ? 'danger' : 'warning'">{{ scope.row.status === 1 ? '成功' : scope.row.status === 2 ? '失败' : '处理中' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="时间" prop="time" min-width="170" />
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { getFinanceRecordList } from '@/api/hxzFinance'
import { ref } from 'vue'

defineOptions({ name: 'FinanceRecord' })

const categoryText = (category) => {
  const map = { 1: '车费', 2: '抽成', 3: '优惠券', 4: '其他' }
  return map[category] || '未知'
}

const searchInfo = ref({
  recordNo: '',
  type: undefined,
  category: undefined,
  status: undefined,
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
  const table = await getFinanceRecordList({
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
</script>

<style></style>
