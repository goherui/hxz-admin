import service from '@/utils/request'

export const createConfig = (data) => {
  return service({
    url: '/hxzPlatform/platformConfig',
    method: 'post',
    data
  })
}

export const deleteConfig = (data) => {
  return service({
    url: '/hxzPlatform/platformConfig',
    method: 'delete',
    data
  })
}

export const updateConfig = (data) => {
  return service({
    url: '/hxzPlatform/platformConfig',
    method: 'put',
    data
  })
}

export const toggleConfig = (data) => {
  return service({
    url: '/hxzPlatform/toggleConfig',
    method: 'put',
    data
  })
}

export const getConfig = (params) => {
  return service({
    url: '/hxzPlatform/platformConfig',
    method: 'get',
    params
  })
}

export const getConfigList = (params) => {
  return service({
    url: '/hxzPlatform/platformConfigList',
    method: 'get',
    params
  })
}

export const createCity = (data) => {
  return service({
    url: '/hxzPlatform/city',
    method: 'post',
    data
  })
}

export const updateCity = (data) => {
  return service({
    url: '/hxzPlatform/city',
    method: 'put',
    data
  })
}

export const toggleCityStatus = (data) => {
  return service({
    url: '/hxzPlatform/toggleCity',
    method: 'put',
    data
  })
}

export const openCity = (data) => {
  return service({
    url: '/hxzPlatform/openCity',
    method: 'put',
    data
  })
}

export const closeCity = (data) => {
  return service({
    url: '/hxzPlatform/closeCity',
    method: 'put',
    data
  })
}

export const getCity = (params) => {
  return service({
    url: '/hxzPlatform/city',
    method: 'get',
    params
  })
}

export const getCityList = (params) => {
  return service({
    url: '/hxzPlatform/cityList',
    method: 'get',
    params
  })
}

export const createFare = (data) => {
  return service({
    url: '/hxzPlatform/fareRule',
    method: 'post',
    data
  })
}

export const deleteFare = (data) => {
  return service({
    url: '/hxzPlatform/fareRule',
    method: 'delete',
    data
  })
}

export const updateFare = (data) => {
  return service({
    url: '/hxzPlatform/fareRule',
    method: 'put',
    data
  })
}

export const getFare = (params) => {
  return service({
    url: '/hxzPlatform/fareRule',
    method: 'get',
    params
  })
}

export const getFareList = (params) => {
  return service({
    url: '/hxzPlatform/fareRuleList',
    method: 'get',
    params
  })
}

export const createSurge = (data) => {
  return service({
    url: '/hxzPlatform/surgeRule',
    method: 'post',
    data
  })
}

export const deleteSurge = (data) => {
  return service({
    url: '/hxzPlatform/surgeRule',
    method: 'delete',
    data
  })
}

export const updateSurge = (data) => {
  return service({
    url: '/hxzPlatform/surgeRule',
    method: 'put',
    data
  })
}

export const toggleSurge = (data) => {
  return service({
    url: '/hxzPlatform/toggleSurge',
    method: 'put',
    data
  })
}

export const getSurge = (params) => {
  return service({
    url: '/hxzPlatform/surgeRule',
    method: 'get',
    params
  })
}

export const getSurgeList = (params) => {
  return service({
    url: '/hxzPlatform/surgeRuleList',
    method: 'get',
    params
  })
}
