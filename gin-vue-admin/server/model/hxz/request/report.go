package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type ReportDashboardReq struct {
	CityCode string `json:"cityCode" form:"cityCode"`
	Date     string `json:"date" form:"date"`
}

type ReportOrderReq struct {
	request.PageInfo
	CityCode string `json:"cityCode" form:"cityCode"`
	StartDate string `json:"startDate" form:"startDate"`
	EndDate   string `json:"endDate" form:"endDate"`
}

type ReportDriverReq struct {
	request.PageInfo
	CityCode  string `json:"cityCode" form:"cityCode"`
	StartDate string `json:"startDate" form:"startDate"`
	EndDate   string `json:"endDate" form:"endDate"`
}

type ReportFinanceReq struct {
	request.PageInfo
	CityCode  string `json:"cityCode" form:"cityCode"`
	StartDate string `json:"startDate" form:"startDate"`
	EndDate   string `json:"endDate" form:"endDate"`
}
