<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.name" placeholder="名称" style="width: 150px" clearable />
        <el-select v-model="searchInfo.type" placeholder="类型" style="width: 120px" clearable>
          <el-option label="满减" :value="1" />
          <el-option label="折扣" :value="2" />
          <el-option label="直减" :value="3" />
        </el-select>
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="草稿" :value="1" />
          <el-option label="已发布" :value="2" />
          <el-option label="已下架" :value="3" />
        </el-select>
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openDialog('create')">新增</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="名称" prop="name" width="150" />
        <el-table-column align="left" label="类型" prop="type" width="90">
          <template #default="scope">
            <el-tag>{{ scope.row.type === 1 ? '满减' : scope.row.type === 2 ? '折扣' : '直减' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="面额" prop="denomination" width="90" />
        <el-table-column align="left" label="门槛" prop="threshold" width="90" />
        <el-table-column align="left" label="总量" prop="totalCount" width="80" />
        <el-table-column align="left" label="已用" prop="usedCount" width="80" />
        <el-table-column align="left" label="剩余" prop="remainCount" width="80" />
        <el-table-column align="left" label="有效期" prop="validPeriod" width="200" />
        <el-table-column align="left" label="状态" prop="status" width="90">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'info' : scope.row.status === 2 ? 'success' : 'danger'">{{ scope.row.status === 1 ? '草稿' : scope.row.status === 2 ? '已发布' : '已下架' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="操作" min-width="240">
          <template #default="scope">
            <el-button type="primary" link @click="openDialog('update', scope.row)">编辑</el-button>
            <el-button v-if="scope.row.status === 1" type="success" link @click="publishCoupon(scope.row)">发布</el-button>
            <el-button v-if="scope.row.status === 2" type="warning" link @click="offlineCoupon(scope.row)">下架</el-button>
            <el-button v-if="scope.row.status === 2" type="info" link @click="openDistributeDialog(scope.row)">发放</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="dialogVisible" :title="dialogType === 'create' ? '新增优惠券' : '编辑优惠券'" width="550px">
      <el-form :model="form" label-width="80px">
        <el-form-item label="名称">
          <el-input v-model="form.name" />
        </el-form-item>
        <el-form-item label="类型">
          <el-select v-model="form.type" placeholder="请选择">
            <el-option label="满减" :value="1" />
            <el-option label="折扣" :value="2" />
            <el-option label="直减" :value="3" />
          </el-select>
        </el-form-item>
        <el-form-item label="面额">
          <el-input-number v-model="form.denomination" :min="0" :precision="2" />
        </el-form-item>
        <el-form-item label="门槛">
          <el-input-number v-model="form.threshold" :min="0" :precision="2" />
        </el-form-item>
        <el-form-item label="总量">
          <el-input-number v-model="form.totalCount" :min="1" />
        </el-form-item>
        <el-form-item label="有效期">
          <el-date-picker v-model="form.validPeriod" type="daterange" range-separator="至" start-placeholder="开始" end-placeholder="结束" style="width: 100%" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm">确 定</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="distributeDialogVisible" title="发放优惠券" width="450px">
      <el-form :model="distributeForm" label-width="80px">
        <el-form-item label="发放方式">
          <el-select v-model="distributeForm.method">
            <el-option label="指定用户" :value="1" />
            <el-option label="全部用户" :value="2" />
          </el-select>
        </el-form-item>
        <el-form-item v-if="distributeForm.method === 1" label="用户ID">
          <el-input v-model="distributeForm.userIds" type="textarea" :rows="3" placeholder="多个用户ID用逗号分隔" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="distributeDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitDistribute">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getCouponTemplateList, createCouponTemplate, updateCouponTemplate, publishCouponTemplate, offlineCouponTemplate, distributeCouponTemplate } from '@/api/hxzCoupon'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'CouponTemplate' })

const searchInfo = ref({
  name: '',
  type: undefined,
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
  const table = await getCouponTemplateList({
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
const form = ref({ name: '', type: 1, denomination: 0, threshold: 0, totalCount: 100, validPeriod: [] })
const openDialog = (type, row) => {
  dialogType.value = type
  if (type === 'create') {
    form.value = { name: '', type: 1, denomination: 0, threshold: 0, totalCount: 100, validPeriod: [] }
  } else {
    form.value = { ...row }
  }
  dialogVisible.value = true
}
const submitForm = async () => {
  let res
  if (dialogType.value === 'create') {
    res = await createCouponTemplate(form.value)
  } else {
    res = await updateCouponTemplate(form.value)
  }
  if (res.code === 0) {
    ElMessage.success(dialogType.value === 'create' ? '新增成功' : '编辑成功')
    dialogVisible.value = false
    getTableData()
  }
}

const publishCoupon = (row) => {
  ElMessageBox.confirm('确定发布该优惠券吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await publishCouponTemplate({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('发布成功')
      getTableData()
    }
  })
}

const offlineCoupon = (row) => {
  ElMessageBox.confirm('确定下架该优惠券吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await offlineCouponTemplate({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('已下架')
      getTableData()
    }
  })
}

const distributeDialogVisible = ref(false)
const distributeForm = ref({ templateId: 0, method: 1, userIds: '' })
const openDistributeDialog = (row) => {
  distributeForm.value = { templateId: row.ID, method: 1, userIds: '' }
  distributeDialogVisible.value = true
}
const submitDistribute = async () => {
  const res = await distributeCouponTemplate(distributeForm.value)
  if (res.code === 0) {
    ElMessage.success('发放成功')
    distributeDialogVisible.value = false
  }
}
</script>

<style></style>
