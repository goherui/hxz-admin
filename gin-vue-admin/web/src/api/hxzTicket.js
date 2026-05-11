import service from '@/utils/request'

export const createTicket = (data) => {
  return service({
    url: '/hxzTicket/ticket',
    method: 'post',
    data
  })
}

export const deleteTicket = (data) => {
  return service({
    url: '/hxzTicket/ticket',
    method: 'delete',
    data
  })
}

export const updateTicket = (data) => {
  return service({
    url: '/hxzTicket/ticket',
    method: 'put',
    data
  })
}

export const acceptTicket = (data) => {
  return service({
    url: '/hxzTicket/accept',
    method: 'post',
    data
  })
}

export const replyTicket = (data) => {
  return service({
    url: '/hxzTicket/reply',
    method: 'post',
    data
  })
}

export const transferTicket = (data) => {
  return service({
    url: '/hxzTicket/transfer',
    method: 'post',
    data
  })
}

export const finishTicket = (data) => {
  return service({
    url: '/hxzTicket/complete',
    method: 'post',
    data
  })
}

export const closeTicket = (data) => {
  return service({
    url: '/hxzTicket/close',
    method: 'post',
    data
  })
}

export const getTicketDetail = (params) => {
  return service({
    url: '/hxzTicket/ticket',
    method: 'get',
    params
  })
}

export const getTicketList = (params) => {
  return service({
    url: '/hxzTicket/ticketList',
    method: 'get',
    params
  })
}

export const getTicketLogs = (params) => {
  return service({
    url: '/hxzTicket/ticketLogs',
    method: 'get',
    params
  })
}

export const getTicketStats = (params) => {
  return service({
    url: '/hxzTicket/stats',
    method: 'get',
    params
  })
}
