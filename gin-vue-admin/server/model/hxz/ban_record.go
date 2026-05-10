package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type BanRecord struct {
	global.GVA_MODEL
	TargetType    string     `json:"targetType" form:"targetType" gorm:"column:target_type;type:varchar(20);comment:封禁对象类型"`
	TargetID      uint       `json:"targetId" form:"targetId" gorm:"column:target_id;comment:封禁对象ID"`
	Reason        string     `json:"reason" form:"reason" gorm:"column:reason;type:varchar(500);comment:封禁原因"`
	BanType       string     `json:"banType" form:"banType" gorm:"column:ban_type;type:varchar(20);comment:封禁类型"`
	Status        int        `json:"status" form:"status" gorm:"column:status;type:tinyint;default:1;comment:状态 1封禁中 2已解封"`
	OperatorID    uint       `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
	UnbannedAt    *time.Time `json:"unbannedAt" form:"unbannedAt" gorm:"column:unbanned_at;comment:解封时间"`
	UnbannedBy    uint       `json:"unbannedBy" form:"unbannedBy" gorm:"column:unbanned_by;comment:解封操作人ID"`
	UnbannedReason string   `json:"unbannedReason" form:"unbannedReason" gorm:"column:unbanned_reason;type:varchar(500);comment:解封原因"`
}

func (BanRecord) TableName() string {
	return "ban_records"
}
