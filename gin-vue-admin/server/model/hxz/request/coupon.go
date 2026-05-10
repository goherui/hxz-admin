package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type CouponTemplateSearch struct {
	Name   string `json:"name" form:"name"`
	Type   string `json:"type" form:"type"`
	Status string `json:"status" form:"status"`
	request.PageInfo
}

type CouponRecordSearch struct {
	TemplateID  uint   `json:"templateId" form:"templateId"`
	PassengerID uint   `json:"passengerId" form:"passengerId"`
	Source      string `json:"source" form:"source"`
	ActivityID  uint   `json:"activityId" form:"activityId"`
	Status      string `json:"status" form:"status"`
	request.PageInfo
}

type CouponManualIssue struct {
	TemplateID   uint   `json:"templateId" binding:"required"`
	PassengerIDs []uint `json:"passengerIds" binding:"required"`
	Remark       string `json:"remark"`
}

type ActivitySearch struct {
	Name   string `json:"name" form:"name"`
	Type   string `json:"type" form:"type"`
	Status string `json:"status" form:"status"`
	request.PageInfo
}
