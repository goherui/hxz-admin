package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type BlacklistSearch struct {
	request.PageInfo
	TargetType string `json:"targetType" form:"targetType"`
	TargetID   uint   `json:"targetId" form:"targetId"`
	Level      *int   `json:"level" form:"level"`
	Status     *int   `json:"status" form:"status"`
}

type BlacklistAddReq struct {
	TargetType string `json:"targetType" binding:"required"`
	TargetID   uint   `json:"targetId" binding:"required"`
	Reason     string `json:"reason" binding:"required"`
	Level      int    `json:"level"`
	Source     string `json:"source"`
}

type BlacklistRemoveReq struct {
	ID            uint   `json:"id" binding:"required"`
	RemovedReason string `json:"removedReason" binding:"required"`
}

type RiskRuleSearch struct {
	request.PageInfo
	Name     string `json:"name" form:"name"`
	Type     string `json:"type" form:"type"`
	RiskLevel *int  `json:"riskLevel" form:"riskLevel"`
	IsActive *int   `json:"isActive" form:"isActive"`
}

type RiskAlertSearch struct {
	request.PageInfo
	RuleID     uint       `json:"ruleId" form:"ruleId"`
	TargetType string     `json:"targetType" form:"targetType"`
	TargetID   uint       `json:"targetId" form:"targetId"`
	RiskLevel  *int       `json:"riskLevel" form:"riskLevel"`
	Status     *int       `json:"status" form:"status"`
	StartTime  time.Time  `json:"startTime" form:"startTime"`
	EndTime    time.Time  `json:"endTime" form:"endTime"`
}

type RiskAlertHandleReq struct {
	ID           uint   `json:"id" binding:"required"`
	Status       int    `json:"status" binding:"required"`
	HandleResult string `json:"handleResult" binding:"required"`
}

type RiskProfileReq struct {
	TargetType string `json:"targetType" form:"targetType" binding:"required"`
	TargetID   uint   `json:"targetId" form:"targetId" binding:"required"`
}
