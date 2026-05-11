<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-select v-model="searchInfo.type" placeholder="类型" style="width: 120px" clearable>
          <el-option label="乘客" :value="1" />
          <el-option label="司机" :value="2" />
        </el-select>
        <el-select v-model="searchInfo.level" placeholder="级别" style="width: 120px" clearable>
          <el-option label="低" :value="1" />
          <el-option label="中" :value="2" />
          <el-option label="高" :value="3" />
        </el-select>
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="生效中" :value="1" />
          <el-option label="已移除" :value="0" />
        </el-select>
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openAddDialog">添加</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="类型" prop="type" width="90">
          <template #default="scope">
            <el-tag>{{ scope.row.type === 1 ? '乘客' : '司机' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="对象ID" prop="objectId" width="120" />
        <el-table-column align="left" label="原因" prop="reason" min-width="200" />
        <el-table-column align="left" label="级别" prop="level" width="80">
          <template #default="scope">
            <el-tag :type="scope.row.level === 1 ? 'info' : scope.row.level === 2 ? 'warning' : 'danger'">{{ scope.row.level === 1 ? '低' : scope.row.level === 2 ? '中' : '高' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="来源" prop="source" width="100" />
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'danger' : 'info'">{{ scope.row.status === 1 ? '生效中' : '已移除' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="加入时间" prop="joinTime" width="170" />
        <el-table-column align="left" label="操作" min-width="100">
          <template #default="scope">
            <el-button v-if="scope.row.status === 1" type="danger" link @click="removeBlacklist(scope.row)">移除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="addDialogVisible" title="添加黑名单" width="450px">
      <el-form :model="addForm" label-width="80px">
        <el-form-item label="类型">
          <el-select v-model="addForm.type" placeholder="请选择">
            <el-option label="乘客" :value="1" />
            <el-option label="司机" :value="2" />
          </el-select>
        </el-form-item>
        <el-form-item label="对象ID">
          <el-input v-model="addForm.objectId" />
        </el-form-item>
        <el-form-item label="原因">
          <el-input v-model="addForm.reason" type="textarea" :rows="3" />
        </el-form-item>
        <el-form-item label="级别">
          <el-select v-model="addForm.level" placeholder="请选择">
            <el-option label="低" :value="1" />
            <el-option label="中" :value="2" />
            <el-option label="高" :value="3" />
          </el-select>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="addDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitAdd">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getBlacklistList, addBlacklist, removeBlacklist as removeBlacklistApi } from '@/api/hxzRisk'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'RiskBlacklist' })

const searchInfo = ref({
  type: undefined,
  level: undefined,
  status: undefined
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
  const table = await getBlacklistList({
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

const addDialogVisible = ref(false)
const addForm = ref({ type: 1, objectId: '', reason: '', level: 2 })
const openAddDialog = () => {
  addForm.value = { type: 1, objectId: '', reason: '', level: 2 }
  addDialogVisible.value = true
}
const submitAdd = async () => {
  const res = await addBlacklist(addForm.value)
  if (res.code === 0) {
    ElMessage.success('添加成功')
    addDialogVisible.value = false
    getTableData()
  }
}

const removeBlacklist = (row) => {
  ElMessageBox.confirm('确定将该对象移出黑名单吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await removeBlacklistApi({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('已移除')
      getTableData()
    }
  })
}
</script>

<style></style>
