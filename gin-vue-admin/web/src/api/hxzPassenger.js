import service from '@/utils/request'

export const createPassenger = (data) => {
  return service({
    url: '/hxzPassenger/passenger',
    method: 'post',
    data
  })
}

export const deletePassenger = (data) => {
  return service({
    url: '/hxzPassenger/passenger',
    method: 'delete',
    data
  })
}

export const deletePassengerByIds = (data) => {
  return service({
    url: '/hxzPassenger/passengerByIds',
    method: 'delete',
    data
  })
}

export const updatePassenger = (data) => {
  return service({
    url: '/hxzPassenger/passenger',
    method: 'put',
    data
  })
}

export const banPassenger = (data) => {
  return service({
    url: '/hxzPassenger/ban',
    method: 'post',
    data
  })
}

export const unbanPassenger = (data) => {
  return service({
    url: '/hxzPassenger/unban',
    method: 'post',
    data
  })
}

export const updatePassengerTags = (data) => {
  return service({
    url: '/hxzPassenger/tag',
    method: 'put',
    data
  })
}

export const addPassengerTag = (data) => {
  return service({
    url: '/hxzPassenger/tag',
    method: 'post',
    data
  })
}

export const removePassengerTag = (data) => {
  return service({
    url: '/hxzPassenger/tag',
    method: 'delete',
    data
  })
}

export const getPassenger = (params) => {
  return service({
    url: '/hxzPassenger/passenger',
    method: 'get',
    params
  })
}

export const getPassengerList = (params) => {
  return service({
    url: '/hxzPassenger/passengerList',
    method: 'get',
    params
  })
}

export const getPassengerBanRecords = (params) => {
  return service({
    url: '/hxzPassenger/banRecords',
    method: 'get',
    params
  })
}

export const getPassengerTagDictList = (params) => {
  return service({
    url: '/hxzPassenger/tagDictList',
    method: 'get',
    params
  })
}
