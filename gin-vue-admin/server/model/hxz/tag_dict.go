package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type TagDict struct {
	global.GVA_MODEL
	Name  string `json:"name" form:"name" gorm:"column:name;type:varchar(50);comment:标签名称"`
	Type  string `json:"type" form:"type" gorm:"column:type;type:varchar(50);comment:标签类型"`
	Color string `json:"color" form:"color" gorm:"column:color;type:varchar(20);comment:标签颜色"`
	Sort  int    `json:"sort" form:"sort" gorm:"column:sort;type:int;default:0;comment:排序"`
}

func (TagDict) TableName() string {
	return "tag_dicts"
}
