import service from '@/utils/request'

export const createOrder = (data) => {
  return service({
    url: '/hxzOrder/order',
    method: 'post',
    data
  })
}

export const deleteOrder = (data) => {
  return service({
    url: '/hxzOrder/order',
    method: 'delete',
    data
  })
}

export const deleteOrderByIds = (data) => {
  return service({
    url: '/hxzOrder/orderByIds',
    method: 'delete',
    data
  })
}

export const updateOrder = (data) => {
  return service({
    url: '/hxzOrder/order',
    method: 'put',
    data
  })
}

export const markOrderAbnormal = (data) => {
  return service({
    url: '/hxzOrder/markAbnormal',
    method: 'post',
    data
  })
}

export const updateOrderStatus = (data) => {
  return service({
    url: '/hxzOrder/changeStatus',
    method: 'post',
    data
  })
}

export const getOrder = (params) => {
  return service({
    url: '/hxzOrder/order',
    method: 'get',
    params
  })
}

export const getOrderList = (params) => {
  return service({
    url: '/hxzOrder/orderList',
    method: 'get',
    params
  })
}

export const getOrderStatusLogs = (params) => {
  return service({
    url: '/hxzOrder/statusLogs',
    method: 'get',
    params
  })
}
