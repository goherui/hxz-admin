package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type PassengerSearch struct {
	request.PageInfo
	Phone          string `json:"phone" form:"phone"`
	Nickname       string `json:"nickname" form:"nickname"`
	Status         *int   `json:"status" form:"status"`
	RegisterCity   string `json:"registerCity" form:"registerCity"`
	RegisterSource string `json:"registerSource" form:"registerSource"`
	Gender         *int   `json:"gender" form:"gender"`
}

type PassengerBanReq struct {
	ID       uint   `json:"id" binding:"required"`
	Reason   string `json:"reason" binding:"required"`
	BanType  string `json:"banType" binding:"required"`
}

type PassengerUnbanReq struct {
	ID             uint   `json:"id" binding:"required"`
	UnbannedReason string `json:"unbannedReason" binding:"required"`
}

type TagDictSearch struct {
	request.PageInfo
	Name string `json:"name" form:"name"`
	Type string `json:"type" form:"type"`
}

type PassengerTagReq struct {
	PassengerID uint `json:"passengerId" binding:"required"`
	TagID       uint `json:"tagId" binding:"required"`
}

type PassengerTagBatchReq struct {
	PassengerID uint   `json:"passengerId" binding:"required"`
	TagIDs      []uint `json:"tagIds" binding:"required"`
}

type BanRecordSearch struct {
	request.PageInfo
	TargetType string `json:"targetType" form:"targetType"`
	TargetID   uint   `json:"targetId" form:"targetId"`
	Status     *int   `json:"status" form:"status"`
	StartTime  time.Time `json:"startTime" form:"startTime"`
	EndTime    time.Time `json:"endTime" form:"endTime"`
}
