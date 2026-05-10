package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type Passenger struct {
	global.GVA_MODEL
	Phone         string     `json:"phone" form:"phone" gorm:"column:phone;type:varchar(20);comment:手机号"`
	Nickname      string     `json:"nickname" form:"nickname" gorm:"column:nickname;type:varchar(50);comment:昵称"`
	Avatar        string     `json:"avatar" form:"avatar" gorm:"column:avatar;type:varchar(255);comment:头像"`
	Gender        int        `json:"gender" form:"gender" gorm:"column:gender;type:tinyint;default:0;comment:性别 0未知 1男 2女"`
	Status        int        `json:"status" form:"status" gorm:"column:status;type:tinyint;default:1;comment:状态 1正常 2封禁"`
	RegisterCity  string     `json:"registerCity" form:"registerCity" gorm:"column:register_city;type:varchar(50);comment:注册城市"`
	RegisterSource string    `json:"registerSource" form:"registerSource" gorm:"column:register_source;type:varchar(50);comment:注册来源"`
	LastActiveAt  *time.Time `json:"lastActiveAt" form:"lastActiveAt" gorm:"column:last_active_at;comment:最后活跃时间"`
	TotalTrips    int        `json:"totalTrips" form:"totalTrips" gorm:"column:total_trips;type:int;default:0;comment:总行程数"`
	TotalAmount   float64    `json:"totalAmount" form:"totalAmount" gorm:"column:total_amount;type:decimal(12,2);default:0;comment:总消费金额"`
	RiskScore     int        `json:"riskScore" form:"riskScore" gorm:"column:risk_score;type:int;default:0;comment:风险分值"`
	Remark        string     `json:"remark" form:"remark" gorm:"column:remark;type:varchar(500);comment:备注"`
	Tags          []TagDict  `json:"tags" gorm:"many2many:passenger_tags;"`
}

func (Passenger) TableName() string {
	return "passengers"
}
