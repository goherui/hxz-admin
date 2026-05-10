package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type Blacklist struct {
	global.GVA_MODEL
	TargetType    string     `json:"targetType" form:"targetType" gorm:"column:target_type;type:varchar(20);comment:对象类型 passenger/driver"`
	TargetID      uint       `json:"targetId" form:"targetId" gorm:"column:target_id;comment:对象ID"`
	Reason        string     `json:"reason" form:"reason" gorm:"column:reason;type:varchar(500);comment:拉黑原因"`
	Level         int        `json:"level" form:"level" gorm:"column:level;type:tinyint;default:1;comment:风险等级 1低 2中 3高"`
	Source        string     `json:"source" form:"source" gorm:"column:source;type:varchar(50);comment:来源"`
	OperatorID    uint       `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
	Status        int        `json:"status" form:"status" gorm:"column:status;type:tinyint;default:1;comment:状态 1生效 2已移除"`
	RemovedBy     uint       `json:"removedBy" form:"removedBy" gorm:"column:removed_by;comment:移除操作人ID"`
	RemovedReason string     `json:"removedReason" form:"removedReason" gorm:"column:removed_reason;type:varchar(500);comment:移除原因"`
	RemovedAt     *time.Time `json:"removedAt" form:"removedAt" gorm:"column:removed_at;comment:移除时间"`
}

func (Blacklist) TableName() string {
	return "blacklists"
}
