import service from '@/utils/request'

export const createDriver = (data) => {
  return service({
    url: '/hxzDriver/driver',
    method: 'post',
    data
  })
}

export const deleteDriver = (data) => {
  return service({
    url: '/hxzDriver/driver',
    method: 'delete',
    data
  })
}

export const deleteDriverByIds = (data) => {
  return service({
    url: '/hxzDriver/driverByIds',
    method: 'delete',
    data
  })
}

export const updateDriver = (data) => {
  return service({
    url: '/hxzDriver/driver',
    method: 'put',
    data
  })
}

export const auditDriver = (data) => {
  return service({
    url: '/hxzDriver/audit',
    method: 'post',
    data
  })
}

export const approveDriverAudit = (data) => {
  return service({
    url: '/hxzDriver/audit',
    method: 'post',
    data: { ...data, result: 1 }
  })
}

export const rejectDriverAudit = (data) => {
  return service({
    url: '/hxzDriver/audit',
    method: 'post',
    data: { ...data, result: 2 }
  })
}

export const banDriver = (data) => {
  return service({
    url: '/hxzDriver/ban',
    method: 'post',
    data
  })
}

export const unbanDriver = (data) => {
  return service({
    url: '/hxzDriver/unban',
    method: 'post',
    data
  })
}

export const getDriver = (params) => {
  return service({
    url: '/hxzDriver/driver',
    method: 'get',
    params
  })
}

export const getDriverList = (params) => {
  return service({
    url: '/hxzDriver/driverList',
    method: 'get',
    params
  })
}

export const getDriverAuditList = (params) => {
  return service({
    url: '/hxzDriver/auditList',
    method: 'get',
    params
  })
}

export const getDriverLicenses = (params) => {
  return service({
    url: '/hxzDriver/licenses',
    method: 'get',
    params
  })
}

export const getDriverVehicles = (params) => {
  return service({
    url: '/hxzDriver/vehicles',
    method: 'get',
    params
  })
}

export const getDriverAuditLogs = (params) => {
  return service({
    url: '/hxzDriver/auditLogs',
    method: 'get',
    params
  })
}
