import service from '@/utils/request'

export const createReportSnapshot = (data) => {
  return service({
    url: '/hxzReport/reportSnapshot',
    method: 'post',
    data
  })
}

export const deleteReportSnapshot = (data) => {
  return service({
    url: '/hxzReport/reportSnapshot',
    method: 'delete',
    data
  })
}

export const updateReportSnapshot = (data) => {
  return service({
    url: '/hxzReport/reportSnapshot',
    method: 'put',
    data
  })
}

export const getReportSnapshot = (params) => {
  return service({
    url: '/hxzReport/reportSnapshot',
    method: 'get',
    params
  })
}

export const getReportSnapshotList = (params) => {
  return service({
    url: '/hxzReport/reportSnapshotList',
    method: 'get',
    params
  })
}

export const getDashboard = (params) => {
  return service({
    url: '/hxzReport/dashboard',
    method: 'get',
    params
  })
}

export const getOrderReport = (params) => {
  return service({
    url: '/hxzReport/orderReport',
    method: 'get',
    params
  })
}

export const getDriverReport = (params) => {
  return service({
    url: '/hxzReport/driverReport',
    method: 'get',
    params
  })
}

export const getFinanceReport = (params) => {
  return service({
    url: '/hxzReport/financeReport',
    method: 'get',
    params
  })
}
