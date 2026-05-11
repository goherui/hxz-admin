<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.ticketNo" placeholder="工单号" style="width: 180px" clearable />
        <el-select v-model="searchInfo.type" placeholder="类型" style="width: 120px" clearable>
          <el-option label="投诉" :value="1" />
          <el-option label="咨询" :value="2" />
          <el-option label="故障" :value="3" />
          <el-option label="其他" :value="4" />
        </el-select>
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="待处理" :value="1" />
          <el-option label="处理中" :value="2" />
          <el-option label="已完结" :value="3" />
          <el-option label="已关闭" :value="4" />
        </el-select>
        <el-select v-model="searchInfo.priority" placeholder="优先级" style="width: 120px" clearable>
          <el-option label="低" :value="1" />
          <el-option label="中" :value="2" />
          <el-option label="高" :value="3" />
          <el-option label="紧急" :value="4" />
        </el-select>
        <el-input v-model="searchInfo.handler" placeholder="处理人" style="width: 120px" clearable />
        <el-date-picker v-model="searchInfo.time" type="daterange" range-separator="至" start-placeholder="开始时间" end-placeholder="结束时间" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openCreateDialog">新建</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="工单号" prop="ticketNo" width="180" />
        <el-table-column align="left" label="标题" prop="title" min-width="150" />
        <el-table-column align="left" label="类型" prop="type" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.type === 1 ? 'danger' : scope.row.type === 2 ? '' : scope.row.type === 3 ? 'warning' : 'info'">{{ scope.row.type === 1 ? '投诉' : scope.row.type === 2 ? '咨询' : scope.row.type === 3 ? '故障' : '其他' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="优先级" prop="priority" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.priority === 4 ? 'danger' : scope.row.priority === 3 ? 'warning' : scope.row.priority === 2 ? '' : 'info'">{{ scope.row.priority === 4 ? '紧急' : scope.row.priority === 3 ? '高' : scope.row.priority === 2 ? '中' : '低' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'danger' : scope.row.status === 2 ? 'warning' : scope.row.status === 3 ? 'success' : 'info'">{{ scope.row.status === 1 ? '待处理' : scope.row.status === 2 ? '处理中' : scope.row.status === 3 ? '已完结' : '已关闭' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="处理人" prop="handler" width="100" />
        <el-table-column align="left" label="创建时间" prop="createTime" width="170" />
        <el-table-column align="left" label="操作" min-width="160">
          <template #default="scope">
            <el-button type="primary" link @click="goDetail(scope.row)">详情</el-button>
            <el-button v-if="scope.row.status === 1" type="success" link @click="acceptTicket(scope.row)">接单</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="createDialogVisible" title="新建工单" width="550px">
      <el-form :model="createForm" label-width="80px">
        <el-form-item label="标题">
          <el-input v-model="createForm.title" />
        </el-form-item>
        <el-form-item label="类型">
          <el-select v-model="createForm.type" placeholder="请选择">
            <el-option label="投诉" :value="1" />
            <el-option label="咨询" :value="2" />
            <el-option label="故障" :value="3" />
            <el-option label="其他" :value="4" />
          </el-select>
        </el-form-item>
        <el-form-item label="优先级">
          <el-select v-model="createForm.priority" placeholder="请选择">
            <el-option label="低" :value="1" />
            <el-option label="中" :value="2" />
            <el-option label="高" :value="3" />
            <el-option label="紧急" :value="4" />
          </el-select>
        </el-form-item>
        <el-form-item label="描述">
          <el-input v-model="createForm.description" type="textarea" :rows="4" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="createDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitCreate">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getTicketList, createTicket, acceptTicket as acceptTicketApi } from '@/api/hxzTicket'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'
import { useRouter } from 'vue-router'

defineOptions({ name: 'TicketList' })

const router = useRouter()

const searchInfo = ref({
  ticketNo: '',
  type: undefined,
  status: undefined,
  priority: undefined,
  handler: '',
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
  const table = await getTicketList({
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

const goDetail = (row) => {
  router.push({ name: 'TicketDetail', params: { id: row.ID } })
}

const acceptTicket = async (row) => {
  const res = await acceptTicketApi({ ID: row.ID })
  if (res.code === 0) {
    ElMessage.success('接单成功')
    getTableData()
  }
}

const createDialogVisible = ref(false)
const createForm = ref({ title: '', type: 1, priority: 2, description: '' })
const openCreateDialog = () => {
  createForm.value = { title: '', type: 1, priority: 2, description: '' }
  createDialogVisible.value = true
}
const submitCreate = async () => {
  const res = await createTicket(createForm.value)
  if (res.code === 0) {
    ElMessage.success('创建成功')
    createDialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
