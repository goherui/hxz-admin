import service from '@/utils/request'

export const createTrip = (data) => {
  return service({
    url: '/hxzTrip/trip',
    method: 'post',
    data
  })
}

export const deleteTrip = (data) => {
  return service({
    url: '/hxzTrip/trip',
    method: 'delete',
    data
  })
}

export const deleteTripByIds = (data) => {
  return service({
    url: '/hxzTrip/tripByIds',
    method: 'delete',
    data
  })
}

export const updateTrip = (data) => {
  return service({
    url: '/hxzTrip/trip',
    method: 'put',
    data
  })
}

export const markTripAbnormal = (data) => {
  return service({
    url: '/hxzTrip/markAbnormal',
    method: 'post',
    data
  })
}

export const setTripRiskFlag = (data) => {
  return service({
    url: '/hxzTrip/setRiskFlag',
    method: 'post',
    data
  })
}

export const getTrip = (params) => {
  return service({
    url: '/hxzTrip/trip',
    method: 'get',
    params
  })
}

export const getTripList = (params) => {
  return service({
    url: '/hxzTrip/tripList',
    method: 'get',
    params
  })
}

export const getTripPoints = (params) => {
  return service({
    url: '/hxzTrip/points',
    method: 'get',
    params
  })
}
