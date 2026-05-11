<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.city" placeholder="城市" style="width: 150px" clearable />
        <el-input v-model="searchInfo.carType" placeholder="车型" style="width: 120px" clearable />
        <el-select v-model="searchInfo.enabled" placeholder="启用状态" style="width: 120px" clearable>
          <el-option label="启用" :value="1" />
          <el-option label="禁用" :value="0" />
        </el-select>
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
        <el-button type="primary" icon="plus" @click="openDialog('create')">新增</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="规则名称" prop="ruleName" width="150" />
        <el-table-column align="left" label="城市" prop="city" width="100" />
        <el-table-column align="left" label="车型" prop="carType" width="100" />
        <el-table-column align="left" label="时段" prop="timeRange" width="180" />
        <el-table-column align="left" label="最大半径(km)" prop="maxRadius" width="120" />
        <el-table-column align="left" label="权重" prop="weight" width="80" />
        <el-table-column align="left" label="启用" prop="enabled" width="80">
          <template #default="scope">
            <el-switch v-model="scope.row.enabled" :active-value="1" :inactive-value="0" @change="toggleEnabled(scope.row)" />
          </template>
        </el-table-column>
        <el-table-column align="left" label="版本" prop="version" width="80" />
        <el-table-column align="left" label="操作" min-width="160">
          <template #default="scope">
            <el-button type="primary" link @click="openDialog('update', scope.row)">编辑</el-button>
            <el-button type="info" link @click="openVersionDrawer(scope.row)">版本历史</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-dialog v-model="dialogVisible" :title="dialogType === 'create' ? '新增规则' : '编辑规则'" width="550px">
      <el-form :model="form" label-width="100px">
        <el-form-item label="规则名称">
          <el-input v-model="form.ruleName" />
        </el-form-item>
        <el-form-item label="城市">
          <el-input v-model="form.city" />
        </el-form-item>
        <el-form-item label="车型">
          <el-input v-model="form.carType" />
        </el-form-item>
        <el-form-item label="时段">
          <el-input v-model="form.timeRange" placeholder="如: 07:00-09:00" />
        </el-form-item>
        <el-form-item label="最大半径(km)">
          <el-input-number v-model="form.maxRadius" :min="1" :max="100" />
        </el-form-item>
        <el-form-item label="权重">
          <el-input-number v-model="form.weight" :min="1" :max="100" />
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
    <el-drawer v-model="versionDrawerVisible" :show-close="false" size="500px">
      <template #header>
        <div class="flex justify-between items-center">
          <span class="text-lg">版本历史</span>
          <el-button @click="versionDrawerVisible = false">关 闭</el-button>
        </div>
      </template>
      <el-timeline>
        <el-timeline-item v-for="item in versionList" :key="item.version" :timestamp="item.createdAt" placement="top">
          <el-card>
            <p>版本: {{ item.version }}</p>
            <p>操作人: {{ item.operator }}</p>
            <p>变更内容: {{ item.changeDesc }}</p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </el-drawer>
  </div>
</template>

<script setup>
import { getDispatchRuleList, createDispatchRule, updateDispatchRule, toggleDispatchRule, getDispatchRuleVersion } from '@/api/hxzDispatch'
import { ref } from 'vue'
import { ElMessage } from 'element-plus'

defineOptions({ name: 'DispatchRule' })

const searchInfo = ref({
  city: '',
  carType: '',
  enabled: undefined
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
  const table = await getDispatchRuleList({
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
const form = ref({ ruleName: '', city: '', carType: '', timeRange: '', maxRadius: 10, weight: 50, enabled: 1 })
const openDialog = (type, row) => {
  dialogType.value = type
  if (type === 'create') {
    form.value = { ruleName: '', city: '', carType: '', timeRange: '', maxRadius: 10, weight: 50, enabled: 1 }
  } else {
    form.value = { ...row }
  }
  dialogVisible.value = true
}
const submitForm = async () => {
  let res
  if (dialogType.value === 'create') {
    res = await createDispatchRule(form.value)
  } else {
    res = await updateDispatchRule(form.value)
  }
  if (res.code === 0) {
    ElMessage.success(dialogType.value === 'create' ? '新增成功' : '编辑成功')
    dialogVisible.value = false
    getTableData()
  }
}

const toggleEnabled = async (row) => {
  const res = await toggleDispatchRule({ ID: row.ID, enabled: row.enabled })
  if (res.code === 0) {
    ElMessage.success('状态更新成功')
  } else {
    row.enabled = row.enabled === 1 ? 0 : 1
  }
}

const versionDrawerVisible = ref(false)
const versionList = ref([])
const openVersionDrawer = async (row) => {
  const res = await getDispatchRuleVersion({ ruleId: row.ID })
  if (res.code === 0) {
    versionList.value = res.data.list || []
    versionDrawerVisible.value = true
  }
}
</script>

<style></style>
