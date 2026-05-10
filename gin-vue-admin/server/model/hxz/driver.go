package hxz

import (
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type Driver struct {
	global.GVA_MODEL
	Phone         string     `json:"phone" form:"phone" gorm:"column:phone;type:varchar(20);comment:手机号"`
	RealName      string     `json:"realName" form:"realName" gorm:"column:real_name;type:varchar(50);comment:真实姓名"`
	IdCard        string     `json:"idCard" form:"idCard" gorm:"column:id_card;type:varchar(20);comment:身份证号"`
	Gender        int        `json:"gender" form:"gender" gorm:"column:gender;type:tinyint;default:0;comment:性别 0未知 1男 2女"`
	Avatar        string     `json:"avatar" form:"avatar" gorm:"column:avatar;type:varchar(255);comment:头像"`
	CityCode      string     `json:"cityCode" form:"cityCode" gorm:"column:city_code;type:varchar(20);comment:城市编码"`
	Status        int        `json:"status" form:"status" gorm:"column:status;type:tinyint;default:1;comment:状态 1待审核 2正常 3审核拒绝 4封禁"`
	AuditStatus   int        `json:"auditStatus" form:"auditStatus" gorm:"column:audit_status;type:tinyint;default:0;comment:审核状态 0未审核 1审核中 2通过 3拒绝"`
	ServiceStatus int        `json:"serviceStatus" form:"serviceStatus" gorm:"column:service_status;type:tinyint;default:0;comment:服务状态 0离线 1在线 2服务中"`
	Rating        float64    `json:"rating" form:"rating" gorm:"column:rating;type:decimal(3,2);default:5.00;comment:评分"`
	TotalTrips    int        `json:"totalTrips" form:"totalTrips" gorm:"column:total_trips;type:int;default:0;comment:总行程数"`
	TotalIncome   float64    `json:"totalIncome" form:"totalIncome" gorm:"column:total_income;type:decimal(12,2);default:0;comment:总收入"`
	JoinDate      *time.Time `json:"joinDate" form:"joinDate" gorm:"column:join_date;comment:入驻日期"`
	RiskScore     int        `json:"riskScore" form:"riskScore" gorm:"column:risk_score;type:int;default:0;comment:风险分值"`
	Remark        string     `json:"remark" form:"remark" gorm:"column:remark;type:varchar(500);comment:备注"`
}

func (Driver) TableName() string {
	return "drivers"
}
