<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.city" placeholder="城市" style="width: 150px" clearable />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openDialog('create')">新增</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="城市" prop="city" width="100" />
        <el-table-column align="left" label="触发类型" prop="triggerType" width="120">
          <template #default="scope">
            <el-tag>{{ scope.row.triggerType === 1 ? '供需比' : scope.row.triggerType === 2 ? '等待时长' : '区域密度' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="加价倍率" prop="surgeMultiplier" width="100" />
        <el-table-column align="left" label="最大倍率" prop="maxMultiplier" width="100" />
        <el-table-column align="left" label="时段" prop="timeRange" width="180" />
        <el-table-column align="left" label="启用" prop="enabled" width="80">
          <template #default="scope">
            <el-switch v-model="scope.row.enabled" :active-value="1" :inactive-value="0" @change="toggleSurge(scope.row)" />
          </template>
        </el-table-column>
        <el-table-column align="left" label="操作" min-width="100">
          <template #default="scope">
            <el-button type="primary" link @click="openDialog('update', scope.row)">编辑</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="dialogVisible" :title="dialogType === 'create' ? '新增加价规则' : '编辑加价规则'" width="500px">
      <el-form :model="form" label-width="100px">
        <el-form-item label="城市">
          <el-input v-model="form.city" />
        </el-form-item>
        <el-form-item label="触发类型">
          <el-select v-model="form.triggerType" placeholder="请选择">
            <el-option label="供需比" :value="1" />
            <el-option label="等待时长" :value="2" />
            <el-option label="区域密度" :value="3" />
          </el-select>
        </el-form-item>
        <el-form-item label="加价倍率">
          <el-input-number v-model="form.surgeMultiplier" :min="1" :max="5" :precision="1" :step="0.1" />
        </el-form-item>
        <el-form-item label="最大倍率">
          <el-input-number v-model="form.maxMultiplier" :min="1" :max="10" :precision="1" :step="0.1" />
        </el-form-item>
        <el-form-item label="时段">
          <el-input v-model="form.timeRange" placeholder="如: 07:00-09:00,17:00-19:00" />
        </el-form-item>
        <el-form-item label="启用">
          <el-switch v-model="form.enabled" :active-value="1" :inactive-value="0" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getSurgeList, createSurge, updateSurge, toggleSurge as toggleSurgeApi } from '@/api/hxzPlatform'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'PlatformSurge' })

const searchInfo = ref({
  city: ''
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
  const table = await getSurgeList({
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

const dialogVisible = ref(false)
const dialogType = ref('create')
const form = ref({ city: '', triggerType: 1, surgeMultiplier: 1.5, maxMultiplier: 3, timeRange: '', enabled: 1 })
const openDialog = (type, row) => {
  dialogType.value = type
  if (type === 'create') {
    form.value = { city: '', triggerType: 1, surgeMultiplier: 1.5, maxMultiplier: 3, timeRange: '', enabled: 1 }
  } else {
    form.value = { ...row }
  }
  dialogVisible.value = true
}
const submitForm = async () => {
  let res
  if (dialogType.value === 'create') {
    res = await createSurge(form.value)
  } else {
    res = await updateSurge(form.value)
  }
  if (res.code === 0) {
    ElMessage.success(dialogType.value === 'create' ? '新增成功' : '编辑成功')
    dialogVisible.value = false
    getTableData()
  }
}

const toggleSurge = async (row) => {
  const res = await toggleSurgeApi({ ID: row.ID, enabled: row.enabled })
  if (res.code === 0) {
    ElMessage.success('状态更新成功')
  } else {
    row.enabled = row.enabled === 1 ? 0 : 1
  }
}
</script>

<style></style>
