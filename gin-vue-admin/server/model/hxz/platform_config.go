package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type PlatformConfig struct {
	global.GVA_MODEL
	ConfigKey   string `json:"configKey" form:"configKey" gorm:"column:config_key;type:varchar(100);comment:配置键"`
	ConfigValue string `json:"configValue" form:"configValue" gorm:"column:config_value;type:text;comment:配置值"`
	ConfigType  string `json:"configType" form:"configType" gorm:"column:config_type;type:varchar(50);comment:配置类型"`
	CityCode    string `json:"cityCode" form:"cityCode" gorm:"column:city_code;type:varchar(20);comment:城市编码"`
	Description string `json:"description" form:"description" gorm:"column:description;type:varchar(500);comment:配置描述"`
	IsActive    int    `json:"isActive" form:"isActive" gorm:"column:is_active;type:tinyint;default:1;comment:是否启用 1是 0否"`
}

func (PlatformConfig) TableName() string {
	return "platform_configs"
}
