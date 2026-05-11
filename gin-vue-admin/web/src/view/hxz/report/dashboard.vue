<template>
  <div>
    <div class="gva-btn-list" style="margin-bottom: 16px">
      <el-select v-model="filterCity" placeholder="城市" style="width: 150px" clearable />
      <el-date-picker v-model="filterDate" type="date" placeholder="日期" style="width: 180px" />
      <el-button type="primary" icon="search" @click="loadDashboard">查询</el-button>
    </div>
    <el-row :gutter="16" style="margin-bottom: 16px">
      <el-col :span="4">
        <el-card shadow="hover">
          <el-statistic title="日订单量" :value="dashboard.dailyOrders" />
        </el-card>
      </el-col>
      <el-col :span="4">
        <el-card shadow="hover">
          <el-statistic title="日GMV(元)" :value="dashboard.dailyGMV" :precision="2" />
        </el-card>
      </el-col>
      <el-col :span="4">
        <el-card shadow="hover">
          <el-statistic title="活跃司机" :value="dashboard.activeDrivers" />
        </el-card>
      </el-col>
      <el-col :span="4">
        <el-card shadow="hover">
          <el-statistic title="活跃乘客" :value="dashboard.activePassengers" />
        </el-card>
      </el-col>
      <el-col :span="4">
        <el-card shadow="hover">
          <el-statistic title="取消率(%)" :value="dashboard.cancelRate" :precision="1" />
        </el-card>
      </el-col>
      <el-col :span="4">
        <el-card shadow="hover">
          <el-statistic title="平均等待(min)" :value="dashboard.avgWaitTime" :precision="1" />
        </el-card>
      </el-col>
    </el-row>
    <el-row :gutter="16">
      <el-col :span="8">
        <el-card shadow="hover">
          <template #header>
            <span>订单趋势(近7天)</span>
          </template>
          <div v-for="item in dashboard.orderTrend" :key="item.date" style="display: flex; justify-content: space-between; padding: 6px 0; border-bottom: 1px solid #f0f0f0">
            <span>{{ item.date }}</span>
            <el-statistic :value="item.count" style="--el-statistic-content-font-size: 16px" />
          </div>
        </el-card>
      </el-col>
      <el-col :span="8">
        <el-card shadow="hover">
          <template #header>
            <span>城市排名(日订单)</span>
          </template>
          <div v-for="item in dashboard.cityRank" :key="item.city" style="display: flex; justify-content: space-between; padding: 6px 0; border-bottom: 1px solid #f0f0f0">
            <span>{{ item.city }}</span>
            <el-statistic :value="item.orderCount" style="--el-statistic-content-font-size: 16px" />
          </div>
        </el-card>
      </el-col>
      <el-col :span="8">
        <el-card shadow="hover">
          <template #header>
            <span>实时指标</span>
          </template>
          <div style="padding: 8px 0">
            <el-descriptions :column="1" border>
              <el-descriptions-item label="在线司机">{{ dashboard.realtime.onlineDrivers }}</el-descriptions-item>
              <el-descriptions-item label="等待订单">{{ dashboard.realtime.pendingOrders }}</el-descriptions-item>
              <el-descriptions-item label="进行中行程">{{ dashboard.realtime.activeTrips }}</el-descriptions-item>
              <el-descriptions-item label="今日异常">{{ dashboard.realtime.todayAbnormal }}</el-descriptions-item>
            </el-descriptions>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script setup>
import { getDashboard } from '@/api/hxzReport'
import { ref, onMounted } from 'vue'

defineOptions({ name: 'ReportDashboard' })

const filterCity = ref('')
const filterDate = ref('')

const dashboard = ref({
  dailyOrders: 0,
  dailyGMV: 0,
  activeDrivers: 0,
  activePassengers: 0,
  cancelRate: 0,
  avgWaitTime: 0,
  orderTrend: [],
  cityRank: [],
  realtime: {
    onlineDrivers: 0,
    pendingOrders: 0,
    activeTrips: 0,
    todayAbnormal: 0
  }
})

const loadDashboard = async () => {
  const res = await getDashboard({
    city: filterCity.value,
    date: filterDate.value
  })
  if (res.code === 0) {
    dashboard.value = res.data
  }
}

onMounted(() => {
  loadDashboard()
})
</script>

<style></style>
