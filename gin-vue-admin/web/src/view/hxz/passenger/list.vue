<template>
  <div>
    <div class="gva-table-box">
      <div class="gva-btn-list">
        <el-input v-model="searchInfo.phone" placeholder="手机号" style="width: 150px" clearable />
        <el-input v-model="searchInfo.nickname" placeholder="昵称" style="width: 150px" clearable />
        <el-select v-model="searchInfo.status" placeholder="状态" style="width: 120px" clearable>
          <el-option label="正常" :value="1" />
          <el-option label="封禁" :value="2" />
        </el-select>
        <el-input v-model="searchInfo.city" placeholder="注册城市" style="width: 150px" clearable />
        <el-date-picker v-model="searchInfo.registerTime" type="daterange" range-separator="至" start-placeholder="注册开始" end-placeholder="注册结束" style="width: 260px" />
        <el-button type="primary" icon="search" @click="getTableData">搜索</el-button>
      </div>
      <el-table :data="tableData" style="width: 100%" row-key="ID">
        <el-table-column align="left" label="ID" prop="ID" width="80" />
        <el-table-column align="left" label="手机号" prop="phone" width="130" />
        <el-table-column align="left" label="昵称" prop="nickname" width="120" />
        <el-table-column align="left" label="性别" prop="gender" width="80">
          <template #default="scope">
            <span>{{ scope.row.gender === 1 ? '男' : '女' }}</span>
          </template>
        </el-table-column>
        <el-table-column align="left" label="状态" prop="status" width="80">
          <template #default="scope">
            <el-tag :type="scope.row.status === 1 ? 'success' : 'danger'">{{ scope.row.status === 1 ? '正常' : '封禁' }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column align="left" label="注册城市" prop="city" width="100" />
        <el-table-column align="left" label="总行程" prop="totalTrip" width="80" />
        <el-table-column align="left" label="总消费" prop="totalCost" width="100" />
        <el-table-column align="left" label="风控评分" prop="riskScore" width="90" />
        <el-table-column align="left" label="最后活跃" prop="lastActiveTime" width="170" />
        <el-table-column align="left" label="操作" min-width="260">
          <template #default="scope">
            <el-button type="primary" link @click="openDetail(scope.row)">详情</el-button>
            <el-button v-if="scope.row.status === 1" type="danger" link @click="openBanDialog(scope.row)">封禁</el-button>
            <el-button v-if="scope.row.status === 2" type="success" link @click="unbanPassenger(scope.row)">解封</el-button>
            <el-button type="warning" link @click="openTagDialog(scope.row)">标签管理</el-button>
          </template>
        </el-table-column>
      </el-table>
      <div class="gva-pagination">
        <el-pagination :current-page="page" :page-size="pageSize" :page-sizes="[10, 30, 50, 100]" :total="total" layout="total, sizes, prev, pager, next, jumper" @current-change="handleCurrentChange" @size-change="handleSizeChange" />
      </div>
    </div>
    <el-drawer v-model="detailVisible" :show-close="false" size="500px">
      <template #header>
        <div class="flex justify-between items-center">
          <span class="text-lg">乘客详情</span>
          <el-button @click="detailVisible = false">关 闭</el-button>
        </div>
      </template>
      <el-descriptions :column="1" border>
        <el-descriptions-item label="ID">{{ detailData.ID }}</el-descriptions-item>
        <el-descriptions-item label="手机号">{{ detailData.phone }}</el-descriptions-item>
        <el-descriptions-item label="昵称">{{ detailData.nickname }}</el-descriptions-item>
        <el-descriptions-item label="性别">{{ detailData.gender === 1 ? '男' : '女' }}</el-descriptions-item>
        <el-descriptions-item label="状态">{{ detailData.status === 1 ? '正常' : '封禁' }}</el-descriptions-item>
        <el-descriptions-item label="注册城市">{{ detailData.city }}</el-descriptions-item>
        <el-descriptions-item label="总行程">{{ detailData.totalTrip }}</el-descriptions-item>
        <el-descriptions-item label="总消费">{{ detailData.totalCost }}</el-descriptions-item>
        <el-descriptions-item label="风控评分">{{ detailData.riskScore }}</el-descriptions-item>
        <el-descriptions-item label="最后活跃">{{ detailData.lastActiveTime }}</el-descriptions-item>
      </el-descriptions>
    </el-drawer>
    <el-dialog v-model="banDialogVisible" title="封禁乘客" width="450px">
      <el-form :model="banForm" label-width="100px">
        <el-form-item label="封禁类型">
          <el-select v-model="banForm.banType" placeholder="请选择">
            <el-option label="临时封禁" :value="1" />
            <el-option label="永久封禁" :value="2" />
          </el-select>
        </el-form-item>
        <el-form-item label="封禁原因">
          <el-input v-model="banForm.reason" type="textarea" :rows="3" />
        </el-form-item>
        <el-form-item v-if="banForm.banType === 1" label="预计解封时间">
          <el-date-picker v-model="banForm.expectedUnbanTime" type="datetime" placeholder="选择时间" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="banDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="banPassenger">确 定</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="tagDialogVisible" title="标签管理" width="450px">
      <el-form :model="tagForm" label-width="80px">
        <el-form-item label="当前标签">
          <el-tag v-for="tag in tagForm.tags" :key="tag" closable style="margin-right: 6px" @close="removeTag(tag)">{{ tag }}</el-tag>
        </el-form-item>
        <el-form-item label="添加标签">
          <el-input v-model="tagForm.newTag" style="width: 200px" />
          <el-button type="primary" style="margin-left: 10px" @click="addTag">添加</el-button>
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="tagDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="saveTags">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getPassengerList, banPassenger as banPassengerApi, unbanPassenger as unbanPassengerApi, updatePassengerTags } from '@/api/hxzPassenger'
import { ref } from 'vue'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'PassengerList' })

const searchInfo = ref({
  phone: '',
  nickname: '',
  status: undefined,
  city: '',
  registerTime: []
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
  const table = await getPassengerList({
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

const detailVisible = ref(false)
const detailData = ref({})
const openDetail = (row) => {
  detailData.value = row
  detailVisible.value = true
}

const banDialogVisible = ref(false)
const banForm = ref({ passengerId: 0, banType: 1, reason: '', expectedUnbanTime: '' })
const openBanDialog = (row) => {
  banForm.value = { passengerId: row.ID, banType: 1, reason: '', expectedUnbanTime: '' }
  banDialogVisible.value = true
}
const banPassenger = async () => {
  const res = await banPassengerApi(banForm.value)
  if (res.code === 0) {
    ElMessage.success('封禁成功')
    banDialogVisible.value = false
    getTableData()
  }
}

const unbanPassenger = async (row) => {
  ElMessageBox.confirm('确定要解封该乘客吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await unbanPassengerApi({ ID: row.ID })
    if (res.code === 0) {
      ElMessage.success('解封成功')
      getTableData()
    }
  })
}

const tagDialogVisible = ref(false)
const tagForm = ref({ passengerId: 0, tags: [], newTag: '' })
const openTagDialog = (row) => {
  tagForm.value = { passengerId: row.ID, tags: row.tags || [], newTag: '' }
  tagDialogVisible.value = true
}
const addTag = () => {
  if (tagForm.value.newTag && !tagForm.value.tags.includes(tagForm.value.newTag)) {
    tagForm.value.tags.push(tagForm.value.newTag)
    tagForm.value.newTag = ''
  }
}
const removeTag = (tag) => {
  tagForm.value.tags = tagForm.value.tags.filter(t => t !== tag)
}
const saveTags = async () => {
  const res = await updatePassengerTags({ ID: tagForm.value.passengerId, tags: tagForm.value.tags })
  if (res.code === 0) {
    ElMessage.success('标签更新成功')
    tagDialogVisible.value = false
    getTableData()
  }
}
</script>

<style></style>
