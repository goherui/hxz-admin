import service from '@/utils/request'

export const createCouponTemplate = (data) => {
  return service({
    url: '/hxzCoupon/couponTemplate',
    method: 'post',
    data
  })
}

export const deleteCouponTemplate = (data) => {
  return service({
    url: '/hxzCoupon/couponTemplate',
    method: 'delete',
    data
  })
}

export const updateCouponTemplate = (data) => {
  return service({
    url: '/hxzCoupon/couponTemplate',
    method: 'put',
    data
  })
}

export const publishCouponTemplate = (data) => {
  return service({
    url: '/hxzCoupon/publishTemplate',
    method: 'put',
    data
  })
}

export const offlineCouponTemplate = (data) => {
  return service({
    url: '/hxzCoupon/offlineTemplate',
    method: 'put',
    data
  })
}

export const distributeCouponTemplate = (data) => {
  return service({
    url: '/hxzCoupon/issueCoupon',
    method: 'post',
    data
  })
}

export const getCouponTemplate = (params) => {
  return service({
    url: '/hxzCoupon/couponTemplate',
    method: 'get',
    params
  })
}

export const getCouponTemplateList = (params) => {
  return service({
    url: '/hxzCoupon/couponTemplateList',
    method: 'get',
    params
  })
}

export const getCouponRecordList = (params) => {
  return service({
    url: '/hxzCoupon/couponRecordList',
    method: 'get',
    params
  })
}

export const createCouponActivity = (data) => {
  return service({
    url: '/hxzCoupon/activity',
    method: 'post',
    data
  })
}

export const deleteCouponActivity = (data) => {
  return service({
    url: '/hxzCoupon/activity',
    method: 'delete',
    data
  })
}

export const updateCouponActivity = (data) => {
  return service({
    url: '/hxzCoupon/activity',
    method: 'put',
    data
  })
}

export const pauseCouponActivity = (data) => {
  return service({
    url: '/hxzCoupon/pauseActivity',
    method: 'put',
    data
  })
}

export const resumeCouponActivity = (data) => {
  return service({
    url: '/hxzCoupon/resumeActivity',
    method: 'put',
    data
  })
}

export const getCouponActivity = (params) => {
  return service({
    url: '/hxzCoupon/activity',
    method: 'get',
    params
  })
}

export const getCouponActivityList = (params) => {
  return service({
    url: '/hxzCoupon/activityList',
    method: 'get',
    params
  })
}
