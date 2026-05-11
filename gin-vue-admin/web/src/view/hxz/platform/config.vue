<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.configKey" placeholder="配置键" style="width: 180px" clearable />
        <el-select v-model="searchInfo.type" placeholder="类型" style="width: 120px" clearable>
          <el-option label="系统" :value="1" />
          <el-option label="业务" :value="2" />
          <el-option label="城市" :value="3" />
        </el-select>
        <el-input v-model="searchInfo.city" placeholder="城市" style="width: 150px" clearable />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openDialog('create')">新增</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="配置键" prop="configKey" width="200" />
        <el-table-column align="left" label="配置值" prop="configValue" min-width="200" />
        <el-table-column align="left" label="类型" prop="type" width="90">
          <template #default="scope">
            <el-tag>{{ scope.row.type === 1 ? '系统' : scope.row.type === 2 ? '业务' : '城市' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="城市" prop="city" width="100" />
        <el-table-column align="left" label="启用" prop="enabled" width="80">
          <template #default="scope">
            <el-switch v-model="scope.row.enabled" :active-value="1" :inactive-value="0" @change="toggleConfig(scope.row)" />
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
    <el-dialog v-model="dialogVisible" :title="dialogType === 'create' ? '新增配置' : '编辑配置'" width="500px">
      <el-form :model="form" label-width="80px">
        <el-form-item label="配置键">
          <el-input v-model="form.configKey" :disabled="dialogType === 'update'" />
        </el-form-item>
        <el-form-item label="配置值">
          <el-input v-model="form.configValue" type="textarea" :rows="3" />
        </el-form-item>
        <el-form-item label="类型">
          <el-select v-model="form.type" placeholder="请选择">
            <el-option label="系统" :value="1" />
            <el-option label="业务" :value="2" />
            <el-option label="城市" :value="3" />
          </el-select>
        </el-form-item>
        <el-form-item label="城市">
          <el-input v-model="form.city" placeholder="城市级别配置时填写" />
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
import { getConfigList, createConfig, updateConfig, toggleConfig as toggleConfigApi } from '@/api/hxzPlatform'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'PlatformConfig' })

const searchInfo = ref({
  configKey: '',
  type: undefined,
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
  const table = await getConfigList({
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
const form = ref({ configKey: '', configValue: '', type: 1, city: '', enabled: 1 })
const openDialog = (type, row) => {
  dialogType.value = type
  if (type === 'create') {
    form.value = { configKey: '', configValue: '', type: 1, city: '', enabled: 1 }
  } else {
    form.value = { ...row }
  }
  dialogVisible.value = true
}
const submitForm = async () => {
  let res
  if (dialogType.value === 'create') {
    res = await createConfig(form.value)
  } else {
    res = await updateConfig(form.value)
  }
  if (res.code === 0) {
    ElMessage.success(dialogType.value === 'create' ? '新增成功' : '编辑成功')
    dialogVisible.value = false
    getTableData()
  }
}

const toggleConfig = async (row) => {
  const res = await toggleConfigApi({ ID: row.ID, enabled: row.enabled })
  if (res.code === 0) {
    ElMessage.success('状态更新成功')
  } else {
    row.enabled = row.enabled === 1 ? 0 : 1
  }
}
</script>

<style></style>
