<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.tripNo" placeholder="行程编号" style="width: 180px" clearable />
        <el-input v-model="searchInfo.orderNo" placeholder="订单号" style="width: 180px" clearable />
        <el-input v-model="searchInfo.driver" placeholder="司机" style="width: 120px" clearable />
        <el-input v-model="searchInfo.passenger" placeholder="乘客" style="width: 120px" clearable />
        <el-select v-model="searchInfo.abnormal" placeholder="是否异常" style="width: 120px" clearable>
          <el-option label="正常" :value="0" />
          <el-option label="异常" :value="1" />
        </el-select>
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="行程编号" prop="tripNo" width="180" />
        <el-table-column align="left" label="订单号" prop="orderNo" width="180" />
        <el-table-column align="left" label="司机" prop="driverName" width="100" />
        <el-table-column align="left" label="乘客" prop="passengerName" width="100" />
        <el-table-column align="left" label="里程(km)" prop="distance" width="100" />
        <el-table-column align="left" label="时长(min)" prop="duration" width="100" />
        <el-table-column align="left" label="异常" prop="abnormal" width="80">
          <template #default="scope">
            <el-tag :type="scope.row.abnormal === 1 ? 'danger' : 'success'" size="small">{{ scope.row.abnormal === 1 ? '异常' : '正常' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="开始时间" prop="startTime" width="170" />
        <el-table-column align="left" label="操作" min-width="100">
          <template #default="scope">
            <el-button type="primary" link @click="openDetail(scope.row)">详情</el-button>
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
          <span class="text-lg">行程详情</span>
          <el-button @click="detailVisible = false">关 闭</el-button>
        </div>
      </template>
      <el-descriptions :column="1" border>
        <el-descriptions-item label="行程编号">{{ detailData.tripNo }}</el-descriptions-item>
        <el-descriptions-item label="订单号">{{ detailData.orderNo }}</el-descriptions-item>
        <el-descriptions-item label="司机">{{ detailData.driverName }}</el-descriptions-item>
        <el-descriptions-item label="乘客">{{ detailData.passengerName }}</el-descriptions-item>
        <el-descriptions-item label="起点">{{ detailData.startPoint }}</el-descriptions-item>
        <el-descriptions-item label="终点">{{ detailData.endPoint }}</el-descriptions-item>
        <el-descriptions-item label="里程(km)">{{ detailData.distance }}</el-descriptions-item>
        <el-descriptions-item label="时长(min)">{{ detailData.duration }}</el-descriptions-item>
        <el-descriptions-item label="异常">{{ detailData.abnormal === 1 ? '异常' : '正常' }}</el-descriptions-item>
        <el-descriptions-item label="开始时间">{{ detailData.startTime }}</el-descriptions-item>
        <el-descriptions-item label="结束时间">{{ detailData.endTime }}</el-descriptions-item>
      </el-descriptions>
    </el-drawer>
  </div>
</template>

<script setup>
import { getTripList } from '@/api/hxzTrip'
import { ref } from 'vue'

defineOptions({ name: 'TripList' })

const searchInfo = ref({
  tripNo: '',
  orderNo: '',
  driver: '',
  passenger: '',
  abnormal: undefined
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
  const table = await getTripList({
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
</script>

<style></style>
