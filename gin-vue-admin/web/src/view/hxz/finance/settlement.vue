<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.settlementNo" placeholder="结算单号" style="width: 180px" clearable />
        <el-input v-model="searchInfo.driver" placeholder="司机" style="width: 150px" clearable />
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="待审核" :value="1" />
          <el-option label="已审核" :value="2" />
          <el-option label="已打款" :value="3" />
          <el-option label="已驳回" :value="4" />
        </el-select>
        <el-date-picker v-model="searchInfo.time" type="daterange" range-separator="至" start-placeholder="开始时间" end-placeholder="结束时间" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="generateSettlement">生成结算</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="结算单号" prop="settlementNo" width="180" />
        <el-table-column align="left" label="司机" prop="driverName" width="100" />
        <el-table-column align="left" label="周期" prop="period" width="180" />
        <el-table-column align="left" label="总金额" prop="totalAmount" width="100" />
        <el-table-column align="left" label="抽成" prop="commission" width="90" />
        <el-table-column align="left" label="实结" prop="actualAmount" width="100" />
        <el-table-column align="left" label="状态" prop="status" width="100">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'warning' : scope.row.status === 2 ? '' : scope.row.status === 3 ? 'success' : 'danger'">{{ scope.row.status === 1 ? '待审核' : scope.row.status === 2 ? '已审核' : scope.row.status === 3 ? '已打款' : '已驳回' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="操作" min-width="180">
          <template #default="scope">
            <el-button v-if="scope.row.status === 1" type="primary" link @click="auditSettlement(scope.row)">审核</el-button>
            <el-button v-if="scope.row.status === 2" type="success" link @click="paySettlement(scope.row)">打款</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { getSettlementList, generateSettlement as generateSettlementApi, auditSettlement as auditSettlementApi, paySettlement as paySettlementApi } from '@/api/hxzFinance'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'FinanceSettlement' })

const searchInfo = ref({
  settlementNo: '',
  driver: '',
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
  const table = await getSettlementList({
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

const generateSettlement = () => {
  ElMessageBox.confirm('确定生成本期结算单吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await generateSettlementApi({})
    if (res.code === 0) {
      ElMessage.success('结算单生成成功')
      getTableData()
    }
  })
}

const auditSettlement = (row) => {
  ElMessageBox.confirm('确定审核通过该结算单吗?', '提示', {
    confirmButtonText: '通过',
    cancelButtonText: '驳回',
    distinguishCancelAndClose: true,
    type: 'warning'
  }).then(async () => {
    const res = await auditSettlementApi({ ID: row.ID, result: 1 })
    if (res.code === 0) {
      ElMessage.success('审核通过')
      getTableData()
    }
  }).catch(async (action) => {
    if (action === 'cancel') {
      const res = await auditSettlementApi({ ID: row.ID, result: 0 })
      if (res.code === 0) {
        ElMessage.info('已驳回')
        getTableData()
      }
    }
  })
}

const paySettlement = (row) => {
  ElMessageBox.confirm('确定对该结算单进行打款吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await paySettlementApi({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('打款成功')
      getTableData()
    }
  })
}
</script>

<style></style>
