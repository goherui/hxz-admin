import service from '@/utils/request'

export const addBlacklist = (data) => {
  return service({
    url: '/hxzRisk/blacklist',
    method: 'post',
    data
  })
}

export const removeBlacklist = (data) => {
  return service({
    url: '/hxzRisk/blacklist',
    method: 'delete',
    data
  })
}

export const getBlacklist = (params) => {
  return service({
    url: '/hxzRisk/blacklist',
    method: 'get',
    params
  })
}

export const getBlacklistList = (params) => {
  return service({
    url: '/hxzRisk/blacklistList',
    method: 'get',
    params
  })
}

export const createRiskRule = (data) => {
  return service({
    url: '/hxzRisk/riskRule',
    method: 'post',
    data
  })
}

export const deleteRiskRule = (data) => {
  return service({
    url: '/hxzRisk/riskRule',
    method: 'delete',
    data
  })
}

export const updateRiskRule = (data) => {
  return service({
    url: '/hxzRisk/riskRule',
    method: 'put',
    data
  })
}

export const getRiskRule = (params) => {
  return service({
    url: '/hxzRisk/riskRule',
    method: 'get',
    params
  })
}

export const getRiskRuleList = (params) => {
  return service({
    url: '/hxzRisk/riskRuleList',
    method: 'get',
    params
  })
}

export const handleRiskAlert = (data) => {
  return service({
    url: '/hxzRisk/handleAlert',
    method: 'post',
    data
  })
}

export const getRiskAlertList = (params) => {
  return service({
    url: '/hxzRisk/riskAlertList',
    method: 'get',
    params
  })
}

export const getRiskProfile = (params) => {
  return service({
    url: '/hxzRisk/profile',
    method: 'get',
    params
  })
}
