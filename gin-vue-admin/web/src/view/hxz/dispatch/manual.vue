<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="interveneForm.orderNo" placeholder="订单号" style="width: 200px" clearable />
        <el-select v-model="interveneForm.actionType" placeholder="操作类型" style="width: 150px">
          <el-option label="改派司机" :value="1" />
          <el-option label="取消订单" :value="2" />
          <el-option label="强制接单" :value="3" />
        </el-select>
        <el-input v-model="interveneForm.targetDriver" placeholder="目标司机ID" style="width: 150px" clearable />
        <el-input v-model="interveneForm.reason" placeholder="原因" style="width: 200px" clearable />
        <el-button type="primary" @click="submitIntervene">执行干预</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="ID" prop="ID" width="80" />
        <el-table-column align="left" label="订单号" prop="orderNo" width="180" />
        <el-table-column align="left" label="操作类型" prop="actionType" width="120">
          <template #default="scope">
            <el-tag :type="scope.row.actionType === 1 ? 'warning' : scope.row.actionType === 2 ? 'danger' : 'success'">{{ scope.row.actionType === 1 ? '改派司机' : scope.row.actionType === 2 ? '取消订单' : '强制接单' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="目标司机ID" prop="targetDriver" width="120" />
        <el-table-column align="left" label="原司机ID" prop="originDriver" width="120" />
        <el-table-column align="left" label="原因" prop="reason" min-width="200" />
        <el-table-column align="left" label="操作人" prop="operator" width="100" />
        <el-table-column align="left" label="操作时间" prop="operateTime" width="170" />
        <el-table-column align="left" label="结果" prop="result" width="100">
          <template #default="scope">
            <el-tag :type="scope.row.result === 1 ? 'success' : 'danger'">{{ scope.row.result === 1 ? '成功' : '失败' }}</el-tag>
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
import { getDispatchManualList, createDispatchManual } from '@/api/hxzDispatch'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'DispatchManual' })

const interveneForm = ref({
  orderNo: '',
  actionType: undefined,
  targetDriver: '',
  reason: ''
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
  const table = await getDispatchManualList({
    page: page.value,
    pageSize: pageSize.value
  })
  if (table.code === 0) {
    tableData.value = table.data.list
    total.value = table.data.total
    page.value = table.data.page
    pageSize.value = table.data.pageSize
  }
}

getTableData()

const submitIntervene = async () => {
  const res = await createDispatchManual(interveneForm.value)
  if (res.code === 0) {
    ElMessage.success('干预操作成功')
    interveneForm.value = { orderNo: '', actionType: undefined, targetDriver: '', reason: '' }
    getTableData()
  }
}
</script>

<style></style>
