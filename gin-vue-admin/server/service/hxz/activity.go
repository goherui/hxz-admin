package hxz

import (
	"errors"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type ActivityService struct{}

var ActivityServiceApp = new(ActivityService)

func (s *ActivityService) CreateActivity(activity hxz.Activity) (err error) {
	activity.Status = "draft"
	err = global.GVA_DB.Create(&activity).Error
	return
}

func (s *ActivityService) DeleteActivity(id uint) (err error) {
	var activity hxz.Activity
	if err = global.GVA_DB.Where("id = ?", id).First(&activity).Error; err != nil {
		return err
	}
	if activity.Status == "active" {
		return errors.New("进行中的活动不能删除")
	}
	err = global.GVA_DB.Delete(&activity).Error
	return
}

func (s *ActivityService) UpdateActivity(activity *hxz.Activity) (err error) {
	var old hxz.Activity
	if err = global.GVA_DB.Where("id = ?", activity.ID).First(&old).Error; err != nil {
		return err
	}
	if old.Status == "active" {
		return errors.New("进行中的活动不能修改")
	}
	err = global.GVA_DB.Save(activity).Error
	return
}

func (s *ActivityService) GetActivity(id uint) (activity hxz.Activity, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&activity).Error
	return
}

func (s *ActivityService) GetActivityList(info request.ActivitySearch) (list []hxz.Activity, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.Activity{})
	if info.Name != "" {
		db = db.Where("name LIKE ?", "%"+info.Name+"%")
	}
	if info.Type != "" {
		db = db.Where("type = ?", info.Type)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *ActivityService) PauseActivity(id uint) (err error) {
	var activity hxz.Activity
	if err = global.GVA_DB.Where("id = ?", id).First(&activity).Error; err != nil {
		return err
	}
	if activity.Status != "active" {
		return errors.New("只有进行中的活动可以暂停")
	}
	err = global.GVA_DB.Model(&activity).Update("status", "paused").Error
	return
}

func (s *ActivityService) ResumeActivity(id uint) (err error) {
	var activity hxz.Activity
	if err = global.GVA_DB.Where("id = ?", id).First(&activity).Error; err != nil {
		return err
	}
	if activity.Status != "paused" {
		return errors.New("只有已暂停的活动可以恢复")
	}
	err = global.GVA_DB.Model(&activity).Update("status", "active").Error
	return
}
