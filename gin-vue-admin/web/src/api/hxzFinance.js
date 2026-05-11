import service from '@/utils/request'

export const createFinanceRecord = (data) => {
  return service({
    url: '/hxzFinance/financeRecord',
    method: 'post',
    data
  })
}

export const updateFinanceRecord = (data) => {
  return service({
    url: '/hxzFinance/financeRecord',
    method: 'put',
    data
  })
}

export const deleteFinanceRecord = (data) => {
  return service({
    url: '/hxzFinance/financeRecord',
    method: 'delete',
    data
  })
}

export const getFinanceRecord = (params) => {
  return service({
    url: '/hxzFinance/financeRecord',
    method: 'get',
    params
  })
}

export const getFinanceRecordList = (params) => {
  return service({
    url: '/hxzFinance/financeRecordList',
    method: 'get',
    params
  })
}

export const generateSettlement = (data) => {
  return service({
    url: '/hxzFinance/settlement/generate',
    method: 'post',
    data
  })
}

export const auditSettlement = (data) => {
  return service({
    url: '/hxzFinance/settlement/audit',
    method: 'post',
    data
  })
}

export const paySettlement = (data) => {
  return service({
    url: '/hxzFinance/settlement/pay',
    method: 'post',
    data
  })
}

export const getSettlement = (params) => {
  return service({
    url: '/hxzFinance/settlement',
    method: 'get',
    params
  })
}

export const getSettlementList = (params) => {
  return service({
    url: '/hxzFinance/settlementList',
    method: 'get',
    params
  })
}

export const createCommissionConfig = (data) => {
  return service({
    url: '/hxzFinance/commissionConfig',
    method: 'post',
    data
  })
}

export const deleteCommissionConfig = (data) => {
  return service({
    url: '/hxzFinance/commissionConfig',
    method: 'delete',
    data
  })
}

export const updateCommissionConfig = (data) => {
  return service({
    url: '/hxzFinance/commissionConfig',
    method: 'put',
    data
  })
}

export const getCommissionConfig = (params) => {
  return service({
    url: '/hxzFinance/commissionConfig',
    method: 'get',
    params
  })
}

export const getCommissionConfigList = (params) => {
  return service({
    url: '/hxzFinance/commissionConfigList',
    method: 'get',
    params
  })
}

export const executeReconciliation = (data) => {
  return service({
    url: '/hxzFinance/reconciliation/execute',
    method: 'post',
    data
  })
}

export const getReconciliationRecord = (params) => {
  return service({
    url: '/hxzFinance/reconciliationRecord',
    method: 'get',
    params
  })
}

export const getReconciliationRecordList = (params) => {
  return service({
    url: '/hxzFinance/reconciliationRecordList',
    method: 'get',
    params
  })
}
