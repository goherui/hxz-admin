import service from '@/utils/request'

export const createDispatchRule = (data) => {
  return service({
    url: '/hxzDispatch/rule',
    method: 'post',
    data
  })
}

export const deleteDispatchRule = (data) => {
  return service({
    url: '/hxzDispatch/rule',
    method: 'delete',
    data
  })
}

export const deleteDispatchRuleByIds = (data) => {
  return service({
    url: '/hxzDispatch/ruleByIds',
    method: 'delete',
    data
  })
}

export const updateDispatchRule = (data) => {
  return service({
    url: '/hxzDispatch/rule',
    method: 'put',
    data
  })
}

export const toggleDispatchRule = (data) => {
  return service({
    url: '/hxzDispatch/toggleRule',
    method: 'put',
    data
  })
}

export const rollbackDispatch = (data) => {
  return service({
    url: '/hxzDispatch/rollback',
    method: 'post',
    data
  })
}

export const createDispatchManual = (data) => {
  return service({
    url: '/hxzDispatch/manual',
    method: 'post',
    data
  })
}

export const getDispatchRule = (params) => {
  return service({
    url: '/hxzDispatch/rule',
    method: 'get',
    params
  })
}

export const getDispatchRuleList = (params) => {
  return service({
    url: '/hxzDispatch/ruleList',
    method: 'get',
    params
  })
}

export const getDispatchRuleVersion = (params) => {
  return service({
    url: '/hxzDispatch/versions',
    method: 'get',
    params
  })
}

export const getDispatchManualList = (params) => {
  return service({
    url: '/hxzDispatch/manualLogs',
    method: 'get',
    params
  })
}

export const getDispatchMonitor = (params) => {
  return service({
    url: '/hxzDispatch/monitor',
    method: 'get',
    params
  })
}
