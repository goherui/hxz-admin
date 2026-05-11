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
        <el-table-column align="left" label="车型" prop="carType" width="100" />
        <el-table-column align="left" label="起步里程(km)" prop="startDistance" width="120" />
        <el-table-column align="left" label="起步价(元)" prop="startPrice" width="110" />
        <el-table-column align="left" label="每公里价(元)" prop="perKmPrice" width="120" />
        <el-table-column align="left" label="每分钟价(元)" prop="perMinPrice" width="120" />
        <el-table-column align="left" label="最低消费(元)" prop="minFee" width="110" />
        <el-table-column align="left" label="夜间加价(%) " prop="nightSurcharge" width="120" />
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
    <el-dialog v-model="dialogVisible" :title="dialogType === 'create' ? '新增费率' : '编辑费率'" width="550px">
      <el-form :model="form" label-width="110px">
        <el-form-item label="城市">
          <el-input v-model="form.city" />
        </el-form-item>
        <el-form-item label="车型">
          <el-input v-model="form.carType" />
        </el-form-item>
        <el-form-item label="起步里程(km)">
          <el-input-number v-model="form.startDistance" :min="0" :precision="1" />
        </el-form-item>
        <el-form-item label="起步价(元)">
          <el-input-number v-model="form.startPrice" :min="0" :precision="2" />
        </el-form-item>
        <el-form-item label="每公里价(元)">
          <el-input-number v-model="form.perKmPrice" :min="0" :precision="2" />
        </el-form-item>
        <el-form-item label="每分钟价(元)">
          <el-input-number v-model="form.perMinPrice" :min="0" :precision="2" />
        </el-form-item>
        <el-form-item label="最低消费(元)">
          <el-input-number v-model="form.minFee" :min="0" :precision="2" />
        </el-form-item>
        <el-form-item label="夜间加价(%)">
          <el-input-number v-model="form.nightSurcharge" :min="0" :max="200" />
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
import { getFareList, createFare, updateFare } from '@/api/hxzPlatform'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'PlatformFare' })

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
  const table = await getFareList({
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
const form = ref({ city: '', carType: '', startDistance: 3, startPrice: 10, perKmPrice: 2, perMinPrice: 0.5, minFee: 10, nightSurcharge: 20 })
const openDialog = (type, row) => {
  dialogType.value = type
  if (type === 'create') {
    form.value = { city: '', carType: '', startDistance: 3, startPrice: 10, perKmPrice: 2, perMinPrice: 0.5, minFee: 10, nightSurcharge: 20 }
  } else {
    form.value = { ...row }
  }
  dialogVisible.value = true
}
const submitForm = async () => {
  let res
  if (dialogType.value === 'create') {
    res = await createFare(form.value)
  } else {
    res = await updateFare(form.value)
  }
  if (res.code === 0) {
    ElMessage.success(dialogType.value === 'create' ? '新增成功' : '编辑成功')
    dialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
