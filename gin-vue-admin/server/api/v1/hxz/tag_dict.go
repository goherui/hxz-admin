package hxz

import (
	"strconv"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type TagDictApi struct{}

func (api *TagDictApi) CreateTagDict(c *gin.Context) {
	var data hxz.TagDict
	err := c.ShouldBindJSON(&data)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	tagDict, err := tagDictService.CreateTagDict(data)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithData(tagDict, c)
}

func (api *TagDictApi) DeleteTagDict(c *gin.Context) {
	id, _ := strconv.Atoi(c.Query("id"))
	err := tagDictService.DeleteTagDict(uint(id))
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *TagDictApi) UpdateTagDict(c *gin.Context) {
	var data hxz.TagDict
	err := c.ShouldBindJSON(&data)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tagDictService.UpdateTagDict(&data)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *TagDictApi) GetTagDict(c *gin.Context) {
	id, _ := strconv.Atoi(c.Query("id"))
	tagDict, err := tagDictService.GetTagDict(uint(id))
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithData(tagDict, c)
}

func (api *TagDictApi) GetTagDictList(c *gin.Context) {
	var info hxzReq.TagDictSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tagDictService.GetTagDictList(info)
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
