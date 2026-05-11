<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.cityName" placeholder="城市名" style="width: 150px" clearable />
        <el-input v-model="searchInfo.province" placeholder="省份" style="width: 150px" clearable />
        <el-select v-model="searchInfo.openStatus" placeholder="开通状态" style="width: 120px" clearable>
          <el-option label="已开通" :value="1" />
          <el-option label="未开通" :value="0" />
        </el-select>
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="城市编码" prop="cityCode" width="120" />
        <el-table-column align="left" label="城市名" prop="cityName" width="120" />
        <el-table-column align="left" label="省份" prop="province" width="120" />
        <el-table-column align="left" label="开通状态" prop="openStatus" width="120">
          <template #default="scope">
            <el-switch v-model="scope.row.openStatus" :active-value="1" :inactive-value="0" @change="toggleCityStatus(scope.row)" />
          </template>
        </el-table-column>
        <el-table-column align="left" label="开通日期" prop="openDate" width="170" />
        <el-table-column align="left" label="操作" min-width="100">
          <template #default="scope">
            <el-button type="primary" link @click="openEditDialog(scope.row)">编辑</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="editDialogVisible" title="编辑城市" width="450px">
      <el-form :model="editForm" label-width="80px">
        <el-form-item label="城市编码">
          <el-input v-model="editForm.cityCode" disabled />
        </el-form-item>
        <el-form-item label="城市名">
          <el-input v-model="editForm.cityName" />
        </el-form-item>
        <el-form-item label="省份">
          <el-input v-model="editForm.province" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="editDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitEdit">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getCityList, updateCity, toggleCityStatus as toggleCityStatusApi } from '@/api/hxzPlatform'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'PlatformCity' })

const searchInfo = ref({
  cityName: '',
  province: '',
  openStatus: undefined
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
  const table = await getCityList({
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

const toggleCityStatus = async (row) => {
  const res = await toggleCityStatusApi({ ID: row.ID, openStatus: row.openStatus })
  if (res.code === 0) {
    ElMessage.success('状态更新成功')
  } else {
    row.openStatus = row.openStatus === 1 ? 0 : 1
  }
}

const editDialogVisible = ref(false)
const editForm = ref({ cityCode: '', cityName: '', province: '' })
const openEditDialog = (row) => {
  editForm.value = { ...row }
  editDialogVisible.value = true
}
const submitEdit = async () => {
  const res = await updateCity(editForm.value)
  if (res.code === 0) {
    ElMessage.success('编辑成功')
    editDialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
