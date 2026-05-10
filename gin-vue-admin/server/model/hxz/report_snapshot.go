package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type ReportSnapshot struct {
	global.GVA_MODEL
	ReportType  string     `json:"reportType" form:"reportType" gorm:"column:report_type;type:varchar(50);comment:报表类型 dashboard/order/driver/finance"`
	ReportDate  string     `json:"reportDate" form:"reportDate" gorm:"column:report_date;type:varchar(20);index;comment:报表日期"`
	Data        string     `json:"data" form:"data" gorm:"column:data;type:text;comment:报表数据JSON"`
	GeneratedAt *time.Time `json:"generatedAt" form:"generatedAt" gorm:"column:generated_at;comment:生成时间"`
}

func (ReportSnapshot) TableName() string {
	return "report_snapshots"
}
