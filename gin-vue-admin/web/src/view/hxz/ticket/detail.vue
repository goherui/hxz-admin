<template>
  <div>
    <el-card shadow="never" style="margin-bottom: 16px">
      <el-descriptions :column="3" border>
        <el-descriptions-item label="工单号">{{ ticketInfo.ticketNo }}</el-descriptions-item>
        <el-descriptions-item label="标题">{{ ticketInfo.title }}</el-descriptions-item>
        <el-descriptions-item label="类型">
          <el-tag :type="ticketInfo.type === 1 ? 'danger' : ticketInfo.type === 2 ? '' : ticketInfo.type === 3 ? 'warning' : 'info'">{{ ticketInfo.type === 1 ? '投诉' : ticketInfo.type === 2 ? '咨询' : ticketInfo.type === 3 ? '故障' : '其他' }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="优先级">
          <el-tag :type="ticketInfo.priority === 4 ? 'danger' : ticketInfo.priority === 3 ? 'warning' : ticketInfo.priority === 2 ? '' : 'info'">{{ ticketInfo.priority === 4 ? '紧急' : ticketInfo.priority === 3 ? '高' : ticketInfo.priority === 2 ? '中' : '低' }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="状态">
          <el-tag :type="ticketInfo.status === 1 ? 'danger' : ticketInfo.status === 2 ? 'warning' : ticketInfo.status === 3 ? 'success' : 'info'">{{ ticketInfo.status === 1 ? '待处理' : ticketInfo.status === 2 ? '处理中' : ticketInfo.status === 3 ? '已完结' : '已关闭' }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="处理人">{{ ticketInfo.handler }}</el-descriptions-item>
        <el-descriptions-item label="创建时间">{{ ticketInfo.createTime }}</el-descriptions-item>
        <el-descriptions-item label="描述" :span="3">{{ ticketInfo.description }}</el-descriptions-item>
      </el-descriptions>
    </el-card>
    <el-row :gutter="16">
      <el-col :span="14">
        <el-card shadow="never">
          <template #header>
            <span>处理记录</span>
          </template>
          <el-timeline>
            <el-timeline-item v-for="record in recordList" :key="record.ID" :timestamp="record.time" placement="top">
              <el-card shadow="never">
                <p style="font-weight: bold">{{ record.operator }} - {{ record.action }}</p>
                <p>{{ record.content }}</p>
              </el-card>
            </el-timeline-item>
          </el-timeline>
        </el-card>
      </el-col>
      <el-col :span="10">
        <el-card shadow="never">
          <template #header>
            <span>关联信息</span>
          </template>
          <el-descriptions :column="1" border>
            <el-descriptions-item label="关联订单">{{ ticketInfo.relatedOrder || '无' }}</el-descriptions-item>
            <el-descriptions-item label="关联乘客">{{ ticketInfo.relatedPassenger || '无' }}</el-descriptions-item>
            <el-descriptions-item label="关联司机">{{ ticketInfo.relatedDriver || '无' }}</el-descriptions-item>
          </el-descriptions>
        </el-card>
      </el-col>
    </el-row>
    <el-card shadow="never" style="margin-top: 16px">
      <template #header>
        <span>操作</span>
      </template>
      <el-button type="primary" @click="openReplyDialog">回复</el-button>
      <el-button type="warning" @click="openTransferDialog">转派</el-button>
      <el-button type="success" @click="finishTicket">完结</el-button>
      <el-button type="info" @click="closeTicket">关闭</el-button>
    </el-card>
    <el-dialog v-model="replyDialogVisible" title="回复" width="500px">
      <el-input v-model="replyContent" type="textarea" :rows="4" placeholder="请输入回复内容" />
      <template #footer>
        <el-button @click="replyDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitReply">确 定</el-button>
      </template>
    </el-dialog>
    <el-dialog v-model="transferDialogVisible" title="转派" width="450px">
      <el-form :model="transferForm" label-width="80px">
        <el-form-item label="转派给">
          <el-input v-model="transferForm.handler" placeholder="处理人" />
        </el-form-item>
        <el-form-item label="转派原因">
          <el-input v-model="transferForm.reason" type="textarea" :rows="3" />
        </el-form-item>
      </el-form>
      <template #footer>
        <el-button @click="transferDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitTransfer">确 定</el-button>
      </template>
    </el-dialog>
  </div>
</template>

<script setup>
import { getTicketDetail, replyTicket, transferTicket, finishTicket as finishTicketApi, closeTicket as closeTicketApi } from '@/api/hxzTicket'
import { ref, onMounted } from 'vue'
import { useRoute } from 'vue-router'
import { ElMessage, ElMessageBox } from 'element-plus'

defineOptions({ name: 'TicketDetail' })

const route = useRoute()
const ticketId = route.params.id

const ticketInfo = ref({})
const recordList = ref([])

const getDetail = async () => {
  const res = await getTicketDetail({ ID: Number(ticketId) })
  if (res.code === 0) {
    ticketInfo.value = res.data.ticket
    recordList.value = res.data.records || []
  }
}

onMounted(() => {
  getDetail()
})

const replyDialogVisible = ref(false)
const replyContent = ref('')
const openReplyDialog = () => {
  replyContent.value = ''
  replyDialogVisible.value = true
}
const submitReply = async () => {
  const res = await replyTicket({ ticketId: Number(ticketId), content: replyContent.value })
  if (res.code === 0) {
    ElMessage.success('回复成功')
    replyDialogVisible.value = false
    getDetail()
  }
}

const transferDialogVisible = ref(false)
const transferForm = ref({ handler: '', reason: '' })
const openTransferDialog = () => {
  transferForm.value = { handler: '', reason: '' }
  transferDialogVisible.value = true
}
const submitTransfer = async () => {
  const res = await transferTicket({ ticketId: Number(ticketId), ...transferForm.value })
  if (res.code === 0) {
    ElMessage.success('转派成功')
    transferDialogVisible.value = false
    getDetail()
  }
}

const finishTicket = () => {
  ElMessageBox.confirm('确定完结该工单吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await finishTicketApi({ ID: Number(ticketId) })
    if (res.code === 0) {
      ElMessage.success('已完结')
      getDetail()
    }
  })
}

const closeTicket = () => {
  ElMessageBox.confirm('确定关闭该工单吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async () => {
    const res = await closeTicketApi({ ID: Number(ticketId) })
    if (res.code === 0) {
      ElMessage.success('已关闭')
      getDetail()
    }
  })
}
</script>

<style></style>
