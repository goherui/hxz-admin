package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type TagDictService struct{}

var TagDictServiceApp = new(TagDictService)

func (s *TagDictService) CreateTagDict(data hxz.TagDict) (tagDict hxz.TagDict, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *TagDictService) DeleteTagDict(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.TagDict{}, id).Error
	return err
}

func (s *TagDictService) UpdateTagDict(data *hxz.TagDict) (err error) {
	err = global.GVA_DB.Save(data).Error
	return err
}

func (s *TagDictService) GetTagDict(id uint) (tagDict hxz.TagDict, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&tagDict).Error
	return
}

func (s *TagDictService) GetTagDictList(info hxzReq.TagDictSearch) (list []hxz.TagDict, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.TagDict{})
	if info.Name != "" {
		db = db.Where("name LIKE ?", "%"+info.Name+"%")
	}
	if info.Type != "" {
		db = db.Where("type = ?", info.Type)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("sort asc, id desc").Find(&list).Error
	return
}
