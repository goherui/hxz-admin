# 花小猪运营后台 — 完整设计方案

> 基座框架：Gin-Vue-Admin v2.x | 只做设计，不写实现代码 | 面向平台运营/风控/财务/客服/管理员

---

## 一、项目整体定位与业务边界

### 1.1 项目定位

| 维度 | 说明 |
|------|------|
| 项目名称 | 花小猪运营后台（HXZ-Admin） |
| 项目定位 | 网约车平台内部运营管理系统，支撑日常运营、风控审核、财务结算、客服工单、平台配置等后台业务 |
| 目标用户 | 平台管理员、运营人员、风控审核员、财务人员、客服人员 |
| 业务边界 | **仅做运营后台**，不涉及乘客端/司机端 App 业务，不处理实时叫车、实时导航等 C 端功能 |

### 1.2 业务范围定义

| 范围 | 包含 | 不包含 |
|------|------|--------|
| 乘客管理 | 乘客信息查看、标签、黑名单、封禁 | 乘客注册/登录/叫车流程 |
| 司机管理 | 入驻审核、资质管理、封禁/解封 | 司机端接单/导航/提现 |
| 订单管理 | 订单查询、状态流转、异常标记、人工干预 | 实时派单引擎、实时计价 |
| 行程管理 | 轨迹回放、里程审核、风控标记 | 实时轨迹推送 |
| 派单配置 | 规则配置、权重调整、监控面板 | 派单算法核心引擎 |
| 财务管理 | 流水查询、对账、抽成配置、结算单 | 司机钱包、乘客支付 |
| 营销管理 | 优惠券CRUD、活动配置、发放记录 | 乘客端领券/用券交互 |
| 风控管理 | 黑名单、预警规则、封禁操作 | 实时风控引擎 |
| 客服工单 | 工单CRUD、流转、完结 | 实时IM聊天 |
| 平台配置 | 费率、加价、城市开通 | — |
| 数据报表 | 统计看板、导出 | 大数据实时分析 |

### 1.3 核心角色权限矩阵

| 功能模块 | 管理员(888) | 运营(881) | 风控(882) | 财务(883) | 客服(884) |
|----------|:-----------:|:---------:|:---------:|:---------:|:---------:|
| 乘客用户管理 | ✅ 全部 | ✅ 查看/标签 | ✅ 查看/封禁 | ❌ | ✅ 查看 |
| 司机管理 | ✅ 全部 | ✅ 查看/审核 | ✅ 查看/封禁 | ❌ | ✅ 查看 |
| 订单管理 | ✅ 全部 | ✅ 查看/异常标记 | ✅ 查看/风控标记 | ✅ 查看 | ✅ 查看/异常上报 |
| 行程管理 | ✅ 全部 | ✅ 查看 | ✅ 查看/风控标记 | ❌ | ✅ 查看 |
| 派单规则配置 | ✅ 全部 | ✅ 查看/编辑 | ❌ | ❌ | ❌ |
| 财务管理 | ✅ 全部 | ❌ | ❌ | ✅ 全部 | ❌ |
| 优惠券/营销 | ✅ 全部 | ✅ 全部 | ❌ | ✅ 查看 | ❌ |
| 风控管理 | ✅ 全部 | ❌ | ✅ 全部 | ❌ | ✅ 查看/上报 |
| 客服工单 | ✅ 全部 | ✅ 查看 | ✅ 查看 | ❌ | ✅ 全部 |
| 平台配置 | ✅ 全部 | ✅ 查看 | ❌ | ✅ 费率查看 | ❌ |
| 数据报表 | ✅ 全部 | ✅ 查看 | ✅ 查看 | ✅ 查看 | ❌ |
| 系统管理 | ✅ 全部 | ❌ | ❌ | ❌ | ❌ |

> 角色ID沿用 GVA 框架的 AuthorityId 体系：管理员 888（框架默认），运营 881，风控 882，财务 883，客服 884。

---

## 二、系统架构设计

### 2.1 前后端技术栈

| 层 | 技术选型 | 版本/说明 |
|----|---------|----------|
| 后端框架 | Gin-Vue-Admin (Server) | 基于 Gin + GORM + Casbin |
| 后端语言 | Go | 1.21+ |
| 前端框架 | Gin-Vue-Admin (Web) | 基于 Vue3 + Element Plus + Pinia |
| 数据库 | MySQL | 8.0+, 库名 hxz |
| 缓存 | Redis | 7.x, DB 0 |
| 权限 | Casbin RBAC | 框架内置 |
| ORM | GORM | 框架内置，软删除支持 |

### 2.2 后端分层结构

```
server/
├── api/v1/hxz/                    # API层 — 请求解析、参数校验、响应封装
│   ├── enter.go                    # ApiGroup 注册
│   ├── passenger.go
│   ├── driver.go
│   ├── order.go
│   ├── trip.go
│   ├── dispatch.go
│   ├── finance.go
│   ├── coupon.go
│   ├── risk.go
│   ├── ticket.go
│   ├── platform.go
│   └── report.go
├── model/hxz/                      # Model层 — 数据结构定义
│   ├── passenger.go
│   ├── driver.go
│   ├── order.go
│   ├── trip.go
│   ├── dispatch.go
│   ├── finance.go
│   ├── coupon.go
│   ├── risk.go
│   ├── ticket.go
│   ├── platform.go
│   ├── report.go
│   ├── request/                    # 请求参数结构体
│   │   ├── passenger.go
│   │   ├── driver.go
│   │   ├── order.go
│   │   └── ...
│   └── response/                   # 响应结构体
│       ├── passenger.go
│       ├── driver.go
│       ├── order.go
│       └── ...
├── service/hxz/                    # Service层 — 业务逻辑
│   ├── enter.go                    # ServiceGroup 注册
│   ├── passenger.go
│   ├── driver.go
│   ├── order.go
│   ├── trip.go
│   ├── dispatch.go
│   ├── finance.go
│   ├── coupon.go
│   ├── risk.go
│   ├── ticket.go
│   ├── platform.go
│   └── report.go
└── router/hxz/                     # Router层 — 路由注册
    ├── enter.go                    # RouterGroup 注册
    ├── passenger.go
    ├── driver.go
    ├── order.go
    └── ...
```

**分层职责**：

| 层 | 职责 | 关键约束 |
|----|------|---------|
| Router | 路由注册、中间件绑定（OperationRecord） | 不写业务逻辑 |
| API | 参数绑定、校验、调用Service、封装响应 | 不直接操作DB |
| Service | 核心业务逻辑、事务控制、缓存操作 | 可调用其他Service |
| Model | 数据结构定义、表名映射 | 不含业务逻辑 |

### 2.3 权限体系（RBAC）

沿用 GVA 框架内置的 Casbin RBAC 体系：

- **角色（Authority）**：通过 `sys_authorities` 表管理，每个角色绑定菜单权限和API权限
- **菜单权限**：通过 `sys_authority_menus` 关联表控制前端页面可见性
- **API权限**：通过 Casbin Policy 控制后端接口访问
- **按钮权限**：通过 `sys_authority_btns` 控制页面内操作按钮可见性
- **数据权限**：通过 `sys_data_authority_id` 控制数据可见范围

### 2.4 缓存使用场景

| 场景 | 缓存Key | 数据类型 | TTL | 说明 |
|------|---------|---------|-----|------|
| 派单规则 | `hxz:dispatch:rule:{city_code}` | Hash | 10min | 按城市缓存派单规则 |
| 平台配置 | `hxz:config:{config_key}` | String(JSON) | 30min | 费率、加价等配置 |
| 热点订单 | `hxz:order:hot:{order_no}` | Hash | 5min | 异常/申诉中的订单详情 |
| 司机状态摘要 | `hxz:driver:summary:{driver_id}` | Hash | 5min | 司机基本信息+状态 |
| 乘客标签 | `hxz:passenger:tags:{passenger_id}` | Set | 15min | 乘客标签集合 |
| 黑名单 | `hxz:risk:blacklist` | Set | 10min | 全局黑名单ID集合 |
| 城市开通列表 | `hxz:config:cities` | Hash | 30min | 已开通城市配置 |
| 统计数据 | `hxz:report:daily:{date}` | String(JSON) | 60min | 日报统计缓存 |

---

## 三、核心业务模块清单

### 3.1 乘客用户管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 乘客列表 | 分页查询、多条件筛选（手机号/昵称/注册时间/标签/状态） | 低 |
| 乘客详情 | 基本信息、订单历史、行程记录、标签、封禁记录 | 中 |
| 乘客标签 | 添加/移除标签，标签字典管理 | 低 |
| 乘客封禁 | 封禁/解封操作，记录封禁原因和操作人 | 中 |
| 乘客导出 | 按筛选条件导出Excel | 低 |

### 3.2 司机管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 司机列表 | 分页查询、筛选（手机号/姓名/城市/状态/入驻时间） | 低 |
| 司机详情 | 基本信息、车辆信息、资质证件、订单统计、评分 | 中 |
| 入驻审核 | 审核列表、通过/驳回（附原因）、证件照片查看 | 高 |
| 司机封禁 | 封禁/解封，记录原因，关联未完成订单处理 | 高 |
| 车辆管理 | 车辆信息查看、审核 | 中 |
| 司机导出 | 按条件导出 | 低 |

### 3.3 订单管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 订单列表 | 分页查询、筛选（订单号/乘客/司机/状态/时间/城市/异常标记） | 中 |
| 订单详情 | 完整订单信息、费用明细、状态流转记录、关联行程 | 中 |
| 状态流转 | 查看状态变更历史、人工干预修改状态 | 高 |
| 异常处理 | 标记异常、异常分类、关联风控 | 高 |
| 订单导出 | 按条件导出 | 低 |

### 3.4 行程管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 行程列表 | 分页查询、筛选（行程ID/订单号/司机/乘客/时间） | 低 |
| 轨迹回放 | 地图展示行程轨迹点 | 高 |
| 里程审核 | 实际里程与计费里程对比、偏差标记 | 中 |
| 风控标记 | 行程异常标记（偏航/异常停留/绕路） | 中 |

### 3.5 派单规则配置

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 规则列表 | 按城市/时段查看派单规则 | 低 |
| 规则编辑 | 配置城市、时段、派单半径、权重参数 | 中 |
| 规则版本 | 规则变更历史、回滚 | 中 |
| 派单监控 | 实时派单成功率/响应时间看板 | 高 |
| 人工干预 | 强制指派司机、取消派单 | 高 |

### 3.6 财务管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 流水查询 | 平台收入/支出流水，按时间/类型/状态筛选 | 中 |
| 对账管理 | 订单对账、差异标记、对账报表 | 高 |
| 抽成配置 | 按城市/车型配置平台抽成比例 | 中 |
| 结算管理 | 司机结算单生成、审核、打款 | 高 |
| 财务报表 | 日/周/月收入统计 | 中 |

### 3.7 优惠券/营销活动管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 优惠券模板 | 创建/编辑优惠券模板（金额/折扣/门槛/有效期） | 中 |
| 发放记录 | 按批次/用户查看发放记录 | 低 |
| 活动管理 | 创建/编辑营销活动、关联优惠券 | 中 |
| 使用统计 | 优惠券核销率、活动ROI | 中 |

### 3.8 风控管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 黑名单管理 | 添加/移除黑名单（乘客/司机），支持批量 | 中 |
| 封禁记录 | 查看所有封禁/解封历史 | 低 |
| 预警规则 | 配置预警阈值和触发条件 | 高 |
| 预警列表 | 查看预警事件、处理状态 | 中 |
| 风控画像 | 乘客/司机风控标签和风险评分 | 高 |

### 3.9 客服工单管理

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 工单列表 | 分页查询、筛选（工单号/类型/状态/创建时间/处理人） | 低 |
| 工单详情 | 问题描述、关联订单/乘客/司机、处理记录 | 中 |
| 工单处理 | 接单、回复、转派、完结 | 中 |
| 工单统计 | 工单量/响应时长/完结率 | 低 |

### 3.10 平台配置

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 费率配置 | 按城市/车型/时段配置费率规则 | 中 |
| 加价配置 | 动态加价规则（天气/高峰/供需） | 中 |
| 城市开通 | 城市开通/关闭、城市基础配置 | 低 |
| 系统参数 | 全局参数配置 | 低 |

### 3.11 数据统计报表

| 子功能 | 说明 | 复杂度 |
|--------|------|--------|
| 运营看板 | 核心指标卡片（日订单量/活跃司机/GMV等） | 中 |
| 订单报表 | 按维度统计订单量/金额 | 中 |
| 司机报表 | 司机活跃度/收入分布 | 中 |
| 财务报表 | 收入/支出/抽成统计 | 中 |
| 报表导出 | 按条件导出Excel | 低 |

---

## 四、数据库设计方案

> 完整建表SQL见独立文件 `hxz_init.sql`，此处为设计说明。

### 4.1 设计规范

| 规范项 | 规则 |
|--------|------|
| 表名前缀 | 所有业务表统一 `hxz_` 前缀 |
| 软删除 | 沿用 GVA 框架 `gorm.DeletedAt`，`deleted_at` 字段，`null` 表示未删除 |
| 主键 | `id` bigint unsigned auto_increment，沿用 GVA_MODEL |
| 时间字段 | `created_at`, `updated_at`, `deleted_at`，由 GORM 自动管理 |
| 索引命名 | `idx_表名_字段名` 用于普通索引，`uni_表名_字段名` 用于唯一索引 |
| 状态字段 | 使用 `tinyint`，0/1/2 语义明确，注释标注含义 |
| 金额字段 | 使用 `decimal(12,2)`，单位：元 |
| JSON字段 | 使用 `json` 类型，MySQL 8.0+ 原生支持 |
| 字符集 | `utf8mb4`，排序规则 `utf8mb4_general_ci` |
| 外键 | 不使用物理外键，通过逻辑关联 + 应用层保证一致性 |

### 4.2 数据表总览

| 模块 | 表名 | 说明 |
|------|------|------|
| 乘客管理 | hxz_passengers | 乘客信息表 |
| 乘客管理 | hxz_tag_dict | 标签字典表 |
| 乘客管理 | hxz_passenger_tags | 乘客标签关联表 |
| 乘客/司机 | hxz_ban_records | 封禁记录表（共用） |
| 司机管理 | hxz_drivers | 司机信息表 |
| 司机管理 | hxz_driver_licenses | 司机证件表 |
| 司机管理 | hxz_vehicles | 车辆信息表 |
| 司机管理 | hxz_driver_audit_logs | 司机审核日志表 |
| 订单管理 | hxz_orders | 订单表 |
| 订单管理 | hxz_order_status_logs | 订单状态流转日志表 |
| 行程管理 | hxz_trips | 行程表 |
| 行程管理 | hxz_trip_points | 行程轨迹点表 |
| 派单配置 | hxz_dispatch_rules | 派单规则表 |
| 派单配置 | hxz_dispatch_rule_versions | 派单规则版本历史表 |
| 派单配置 | hxz_dispatch_manual_logs | 人工干预派单日志表 |
| 财务管理 | hxz_finance_records | 财务流水表 |
| 财务管理 | hxz_settlements | 结算单表 |
| 财务管理 | hxz_commission_configs | 抽成配置表 |
| 财务管理 | hxz_reconciliation_records | 对账记录表 |
| 营销管理 | hxz_coupon_templates | 优惠券模板表 |
| 营销管理 | hxz_coupon_records | 优惠券发放记录表 |
| 营销管理 | hxz_activities | 营销活动表 |
| 风控管理 | hxz_blacklists | 黑名单表 |
| 风控管理 | hxz_risk_rules | 风控预警规则表 |
| 风控管理 | hxz_risk_alerts | 风控预警记录表 |
| 客服工单 | hxz_tickets | 工单表 |
| 客服工单 | hxz_ticket_logs | 工单处理记录表 |
| 平台配置 | hxz_platform_configs | 平台配置表 |
| 平台配置 | hxz_cities | 城市配置表 |
| 平台配置 | hxz_fare_rules | 费率规则表 |
| 平台配置 | hxz_surge_rules | 加价规则表 |
| 数据报表 | hxz_report_snapshots | 报表快照表 |

> 共 32 张业务表。各表核心字段、索引设计详见 `hxz_init.sql`。

---

## 五、前后端接口设计方案

### 5.1 接口通用规范

| 项目 | 规范 |
|------|------|
| 基础路径 | `/hxz/` |
| 认证方式 | JWT Token（框架内置，Header: `x-token`） |
| 请求格式 | JSON Body（POST/PUT）、Query Params（GET） |
| 响应格式 | `{ "code": 0, "data": {}, "msg": "success" }` |
| 分页参数 | `{ "page": 1, "pageSize": 10 }` |
| 分页响应 | `{ "list": [], "total": 100, "page": 1, "pageSize": 10 }` |
| 时间格式 | `YYYY-MM-DD HH:mm:ss` |

### 5.2 各模块接口清单

#### 5.2.1 乘客用户管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/passenger/list | 乘客列表 | CRUD | page,pageSize,phone,nickname,status,registerCity,startDate,endDate | PageResult |
| GET | /hxz/passenger/:id | 乘客详情 | CRUD | id | Passenger对象 |
| PUT | /hxz/passenger | 更新乘客信息 | CRUD | Passenger对象 | — |
| DELETE | /hxz/passenger/:id | 删除乘客 | CRUD | id | — |
| POST | /hxz/passenger/ban | 封禁乘客 | **手写** | targetId,reason,banType,unbannedAt | — |
| POST | /hxz/passenger/unban | 解封乘客 | **手写** | targetId,reason | — |
| POST | /hxz/passenger/tag | 添加标签 | **手写** | passengerId,tagId | — |
| DELETE | /hxz/passenger/tag | 移除标签 | **手写** | passengerId,tagId | — |
| GET | /hxz/passenger/banRecords | 封禁记录 | CRUD | targetId | []BanRecord |
| GET | /hxz/passenger/orders | 乘客订单 | **手写** | passengerId,page,pageSize | PageResult |

#### 5.2.2 司机管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/driver/list | 司机列表 | CRUD | page,pageSize,phone,realName,cityCode,status | PageResult |
| GET | /hxz/driver/:id | 司机详情 | CRUD | id | Driver+Vehicle+Licenses |
| PUT | /hxz/driver | 更新司机信息 | CRUD | Driver对象 | — |
| DELETE | /hxz/driver/:id | 删除司机 | CRUD | id | — |
| GET | /hxz/driver/auditList | 审核列表 | **手写** | page,pageSize,auditStatus | PageResult |
| POST | /hxz/driver/audit | 审核操作 | **手写** | driverId,action(1通过/2驳回),reason | — |
| POST | /hxz/driver/ban | 封禁司机 | **手写** | targetId,reason,banType,unbannedAt | — |
| POST | /hxz/driver/unban | 解封司机 | **手写** | targetId,reason | — |
| GET | /hxz/driver/licenses | 证件列表 | CRUD | driverId | []License |
| GET | /hxz/driver/vehicles | 车辆信息 | CRUD | driverId | []Vehicle |
| GET | /hxz/driver/auditLogs | 审核日志 | CRUD | driverId | []AuditLog |

#### 5.2.3 订单管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/order/list | 订单列表 | CRUD | page,pageSize,orderNo,status,cityCode,isAbnormal,startDate,endDate | PageResult |
| GET | /hxz/order/:id | 订单详情 | CRUD | id | Order+StatusLogs |
| PUT | /hxz/order | 更新订单 | CRUD | Order对象 | — |
| POST | /hxz/order/markAbnormal | 标记异常 | **手写** | orderId,abnormalType,remark | — |
| POST | /hxz/order/changeStatus | 人工修改状态 | **手写** | orderId,toStatus,remark | — |
| GET | /hxz/order/statusLogs | 状态流转日志 | CRUD | orderId | []StatusLog |
| GET | /hxz/order/export | 导出订单 | **手写** | 同list筛选条件 | Excel文件 |

#### 5.2.4 行程管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/trip/list | 行程列表 | CRUD | page,pageSize,tripNo,orderNo,driverId,passengerId,isAbnormal | PageResult |
| GET | /hxz/trip/:id | 行程详情 | CRUD | id | Trip对象 |
| GET | /hxz/trip/points | 轨迹点列表 | **手写** | tripId | []TripPoint |
| POST | /hxz/trip/markAbnormal | 标记异常 | **手写** | tripId,abnormalTags,remark | — |
| POST | /hxz/trip/setRiskFlag | 设置风控标记 | **手写** | tripId,riskFlag | — |

#### 5.2.5 派单规则配置

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/dispatch/rule/list | 规则列表 | CRUD | page,pageSize,cityCode,isActive | PageResult |
| GET | /hxz/dispatch/rule/:id | 规则详情 | CRUD | id | DispatchRule |
| POST | /hxz/dispatch/rule | 创建规则 | CRUD | DispatchRule对象 | — |
| PUT | /hxz/dispatch/rule | 更新规则 | **手写** | DispatchRule对象（自动版本+1） | — |
| DELETE | /hxz/dispatch/rule/:id | 删除规则 | CRUD | id | — |
| GET | /hxz/dispatch/rule/versions | 规则版本历史 | CRUD | ruleId | []RuleVersion |
| POST | /hxz/dispatch/rule/rollback | 回滚版本 | **手写** | ruleId,version | — |
| POST | /hxz/dispatch/manual | 人工干预派单 | **手写** | orderId,action,targetDriverId,reason | — |
| GET | /hxz/dispatch/manualLogs | 人工干预日志 | CRUD | page,pageSize,orderId | PageResult |
| GET | /hxz/dispatch/monitor | 派单监控面板 | **手写** | cityCode | 监控统计数据 |

#### 5.2.6 财务管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/finance/record/list | 流水列表 | CRUD | page,pageSize,type,category,status,startDate,endDate | PageResult |
| GET | /hxz/finance/record/:id | 流水详情 | CRUD | id | FinanceRecord |
| GET | /hxz/finance/settlement/list | 结算单列表 | CRUD | page,pageSize,driverId,status,startDate,endDate | PageResult |
| GET | /hxz/finance/settlement/:id | 结算单详情 | CRUD | id | Settlement |
| POST | /hxz/finance/settlement/generate | 生成结算单 | **手写** | driverId,periodStart,periodEnd | — |
| POST | /hxz/finance/settlement/audit | 审核结算单 | **手写** | id,action(1通过/2驳回) | — |
| POST | /hxz/finance/settlement/pay | 确认打款 | **手写** | id | — |
| GET | /hxz/finance/commission/list | 抽成配置列表 | CRUD | page,pageSize,cityCode | PageResult |
| POST | /hxz/finance/commission | 创建抽成配置 | CRUD | CommissionConfig | — |
| PUT | /hxz/finance/commission | 更新抽成配置 | CRUD | CommissionConfig | — |
| GET | /hxz/finance/reconciliation/list | 对账记录列表 | CRUD | page,pageSize,reconcileDate,status | PageResult |
| POST | /hxz/finance/reconciliation/execute | 执行对账 | **手写** | reconcileDate | — |

#### 5.2.7 优惠券/营销活动管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/coupon/template/list | 优惠券模板列表 | CRUD | page,pageSize,type,status | PageResult |
| GET | /hxz/coupon/template/:id | 模板详情 | CRUD | id | CouponTemplate |
| POST | /hxz/coupon/template | 创建模板 | CRUD | CouponTemplate | — |
| PUT | /hxz/coupon/template | 更新模板 | CRUD | CouponTemplate | — |
| PUT | /hxz/coupon/template/publish | 发布模板 | **手写** | id | — |
| PUT | /hxz/coupon/template/offline | 下架模板 | **手写** | id | — |
| GET | /hxz/coupon/record/list | 发放记录列表 | CRUD | page,pageSize,templateId,passengerId,status | PageResult |
| POST | /hxz/coupon/record/issue | 人工发放 | **手写** | templateId,passengerIds | — |
| GET | /hxz/activity/list | 活动列表 | CRUD | page,pageSize,type,status | PageResult |
| GET | /hxz/activity/:id | 活动详情 | CRUD | id | Activity |
| POST | /hxz/activity | 创建活动 | CRUD | Activity | — |
| PUT | /hxz/activity | 更新活动 | CRUD | Activity | — |
| PUT | /hxz/activity/pause | 暂停活动 | **手写** | id | — |
| PUT | /hxz/activity/resume | 恢复活动 | **手写** | id | — |

#### 5.2.8 风控管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/risk/blacklist/list | 黑名单列表 | CRUD | page,pageSize,targetType,status | PageResult |
| POST | /hxz/risk/blacklist | 添加黑名单 | **手写** | targetType,targetId,reason,level | — |
| DELETE | /hxz/risk/blacklist/:id | 移除黑名单 | **手写** | id,removedReason | — |
| GET | /hxz/risk/rule/list | 预警规则列表 | CRUD | page,pageSize,type,isActive | PageResult |
| POST | /hxz/risk/rule | 创建规则 | CRUD | RiskRule | — |
| PUT | /hxz/risk/rule | 更新规则 | CRUD | RiskRule | — |
| GET | /hxz/risk/alert/list | 预警列表 | CRUD | page,pageSize,targetType,status,riskLevel,startDate,endDate | PageResult |
| POST | /hxz/risk/alert/handle | 处理预警 | **手写** | id,handleResult | — |
| GET | /hxz/risk/profile | 风控画像 | **手写** | targetType,targetId | 风控画像数据 |

#### 5.2.9 客服工单管理

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/ticket/list | 工单列表 | CRUD | page,pageSize,type,status,priority,handlerId,startDate,endDate | PageResult |
| GET | /hxz/ticket/:id | 工单详情 | CRUD | id | Ticket+Logs |
| POST | /hxz/ticket | 创建工单 | CRUD | Ticket对象 | — |
| POST | /hxz/ticket/accept | 接单 | **手写** | ticketId | — |
| POST | /hxz/ticket/reply | 回复工单 | **手写** | ticketId,content | — |
| POST | /hxz/ticket/transfer | 转派工单 | **手写** | ticketId,targetHandlerId,reason | — |
| POST | /hxz/ticket/complete | 完结工单 | **手写** | ticketId,result | — |
| POST | /hxz/ticket/close | 关闭工单 | **手写** | ticketId,reason | — |
| GET | /hxz/ticket/logs | 工单日志 | CRUD | ticketId | []TicketLog |
| GET | /hxz/ticket/stats | 工单统计 | **手写** | startDate,endDate | 统计数据 |

#### 5.2.10 平台配置

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/platform/config/list | 配置列表 | CRUD | page,pageSize,configType,cityCode | PageResult |
| POST | /hxz/platform/config | 创建配置 | CRUD | PlatformConfig | — |
| PUT | /hxz/platform/config | 更新配置 | CRUD | PlatformConfig | — |
| DELETE | /hxz/platform/config/:id | 删除配置 | CRUD | id | — |
| GET | /hxz/platform/city/list | 城市列表 | CRUD | page,pageSize,isOpened | PageResult |
| POST | /hxz/platform/city | 添加城市 | CRUD | City | — |
| PUT | /hxz/platform/city | 更新城市 | CRUD | City | — |
| PUT | /hxz/platform/city/open | 开通城市 | **手写** | id | — |
| PUT | /hxz/platform/city/close | 关闭城市 | **手写** | id | — |
| GET | /hxz/platform/fare/list | 费率列表 | CRUD | page,pageSize,cityCode | PageResult |
| POST | /hxz/platform/fare | 创建费率 | CRUD | FareRule | — |
| PUT | /hxz/platform/fare | 更新费率 | CRUD | FareRule | — |
| GET | /hxz/platform/surge/list | 加价规则列表 | CRUD | page,pageSize,cityCode | PageResult |
| POST | /hxz/platform/surge | 创建加价规则 | CRUD | SurgeRule | — |
| PUT | /hxz/platform/surge | 更新加价规则 | CRUD | SurgeRule | — |

#### 5.2.11 数据统计报表

| 方法 | 路径 | 用途 | 生成方式 | 入参 | 出参 |
|------|------|------|---------|------|------|
| GET | /hxz/report/dashboard | 运营看板 | **手写** | cityCode,date | 看板数据 |
| GET | /hxz/report/order | 订单报表 | **手写** | cityCode,startDate,endDate,groupBy | 报表数据 |
| GET | /hxz/report/driver | 司机报表 | **手写** | cityCode,startDate,endDate | 报表数据 |
| GET | /hxz/report/finance | 财务报表 | **手写** | cityCode,startDate,endDate | 报表数据 |
| GET | /hxz/report/export | 导出报表 | **手写** | reportType,筛选条件 | Excel文件 |

### 5.3 接口生成方式汇总

| 生成方式 | 数量 | 说明 |
|---------|------|------|
| CRUD生成 | ~45个 | 基础增删改查，使用GVA自动代码生成器 |
| 手写Service | ~35个 | 涉及业务逻辑、事务、缓存、跨表操作 |

**手写Service层的关键逻辑清单**：

| 模块 | 手写逻辑 | 复杂度 |
|------|---------|--------|
| 乘客 | 封禁/解封（同步更新passenger.status+写入ban_record+更新Redis黑名单） | 中 |
| 司机 | 审核通过/驳回（更新driver.status+写入audit_log+审核证件/车辆） | 高 |
| 司机 | 封禁（检查未完成订单+更新状态+写入记录+Redis） | 高 |
| 订单 | 标记异常（更新order+创建风控预警+通知） | 中 |
| 订单 | 人工修改状态（写入status_log+校验状态流转合法性） | 高 |
| 行程 | 轨迹回放（批量查询trip_points+组装前端地图数据） | 中 |
| 派单 | 更新规则（自动版本+1+写入version快照+刷新Redis缓存） | 中 |
| 派单 | 人工干预（写入manual_log+通知派单引擎） | 高 |
| 派单 | 监控面板（聚合实时统计数据） | 高 |
| 财务 | 生成结算单（聚合订单+计算抽成+创建settlement+扣减余额） | 高 |
| 财务 | 执行对账（比对订单金额与流水+生成差异报告） | 高 |
| 优惠券 | 人工发放（批量创建coupon_record+扣减库存） | 中 |
| 风控 | 添加黑名单（更新Redis+同步封禁状态） | 中 |
| 工单 | 转派/完结（写入ticket_log+更新handler） | 中 |
| 报表 | 各类统计（聚合查询+缓存结果） | 中 |

---

## 六、前端页面设计方案

### 6.1 通用页面规范

| 规范项 | 说明 |
|--------|------|
| 列表页 | 顶部搜索区 + 操作按钮区 + 数据表格 + 分页器 |
| 详情页 | 侧边抽屉(Drawer) 或 新页面，Tab切换不同信息区 |
| 表单页 | 弹窗(Dialog) 用于简单表单，独立页面用于复杂表单 |
| 统计页 | 卡片指标 + 图表(ECharts) + 数据表格 |
| 导出 | 列表页工具栏"导出"按钮，调用后端导出接口 |
| 权限控制 | 按钮级别权限控制，使用 `v-auth` 指令 |

### 6.2 各模块页面设计

#### 6.2.1 乘客用户管理

**乘客列表页** `view/hxz/passenger/list.vue`

| 区域 | 内容 |
|------|------|
| 搜索条件 | 手机号、昵称、状态(下拉)、注册城市(下拉)、注册时间(日期范围)、标签(多选) |
| 操作按钮 | 【导出】(权限: hxz:passenger:export) |
| 表格列 | ID、手机号(脱敏)、昵称、性别、状态(Tag)、注册城市、总行程数、总消费、风控评分、最后活跃时间、操作 |
| 操作列 | 【详情】【封禁/解封】【标签管理】 |

**乘客详情页** `view/hxz/passenger/detail.vue` (Drawer)

| Tab | 内容 |
|-----|------|
| 基本信息 | 头像、手机号、昵称、性别、注册时间、状态 |
| 订单记录 | 关联订单列表（分页） |
| 封禁记录 | 封禁/解封历史时间线 |
| 标签信息 | 当前标签列表、添加/移除标签 |

#### 6.2.2 司机管理

**司机列表页** `view/hxz/driver/list.vue`

| 区域 | 内容 |
|------|------|
| 搜索条件 | 手机号、姓名、城市(下拉)、状态(下拉)、入驻时间(日期范围) |
| 操作按钮 | 【导出】 |
| 表格列 | ID、手机号(脱敏)、姓名、城市、车型、状态(Tag)、评分、总行程、入驻日期、操作 |
| 操作列 | 【详情】【审核】(待审核时)【封禁/解封】 |

**司机详情页** `view/hxz/driver/detail.vue` (Drawer) — Tab: 基本信息/证件信息/车辆信息/审核日志/订单统计

**司机审核页** `view/hxz/driver/audit.vue` — 审核列表 + 审核对话框（左侧证件照片+右侧操作）

#### 6.2.3 订单管理

**订单列表页** `view/hxz/order/list.vue`

| 区域 | 内容 |
|------|------|
| 搜索条件 | 订单号、乘客手机号、司机手机号、状态(下拉)、城市(下拉)、异常标记(下拉)、创建时间(日期范围) |
| 操作按钮 | 【导出】 |
| 表格列 | 订单号、乘客、司机、车型、起点→终点、金额、状态(Tag)、异常标记、创建时间、操作 |
| 操作列 | 【详情】【标记异常】(未异常时)【修改状态】(管理员) |

**订单详情页** `view/hxz/order/detail.vue` (Drawer) — Tab: 订单信息/状态流转/行程信息/风控信息

#### 6.2.4 行程管理

**行程列表页** `view/hxz/trip/list.vue` — 搜索: 行程编号/订单号/司机/乘客/异常 | 操作: 详情/轨迹回放

**行程详情页** `view/hxz/trip/detail.vue` (Drawer) — Tab: 行程信息/轨迹回放(地图)/风控标记

**轨迹回放页** `view/hxz/trip/track.vue` — 全屏地图 + 播放控制条

#### 6.2.5 派单规则配置

**派单规则列表页** `view/hxz/dispatch/rule.vue` — 搜索: 城市/车型/启用状态 | 操作: 新增/编辑/版本历史/启用禁用

**规则编辑页** (Dialog) — 基础信息 + 派单参数 + 权重配置(Slider, 三者之和=100) + 优先级

**版本历史页** (Drawer) — 版本号/变更说明/操作人/时间，支持回滚

**人工干预页** `view/hxz/dispatch/manual.vue` — 操作区(订单号/操作类型/目标司机/原因) + 干预日志列表

**派单监控页** `view/hxz/dispatch/monitor.vue` — 指标卡片(成功率/响应时间/待派单量/在线司机) + 趋势图表

#### 6.2.6 财务管理

**财务流水列表页** `view/hxz/finance/record.vue` — 搜索: 流水号/类型/分类/状态/时间 | 导出

**结算单列表页** `view/hxz/finance/settlement.vue` — 搜索: 结算单号/司机/状态/时间 | 操作: 生成/审核/打款

**抽成配置页** `view/hxz/finance/commission.vue` — 标准CRUD表格

**对账管理页** `view/hxz/finance/reconciliation.vue` — 搜索: 日期/状态 | 操作: 执行对账/查看差异

#### 6.2.7 优惠券/营销活动管理

**优惠券模板列表页** `view/hxz/coupon/template.vue` — 操作: 新增/编辑/发布/下架/发放

**营销活动列表页** `view/hxz/coupon/activity.vue` — 操作: 新增/编辑/暂停/恢复

**发放记录页** `view/hxz/coupon/record.vue` — 按模板/乘客/状态筛选

#### 6.2.8 风控管理

**黑名单列表页** `view/hxz/risk/blacklist.vue` — 操作: 添加/批量添加/移除

**预警规则列表页** `view/hxz/risk/rule.vue` — 标准CRUD + 启用/禁用Switch

**预警列表页** `view/hxz/risk/alert.vue` — 搜索: 对象类型/状态/风险等级/时间 | 操作: 处理

**风控画像页** `view/hxz/risk/profile.vue` — 输入ID展示风控标签/评分/历史预警

#### 6.2.9 客服工单管理

**工单列表页** `view/hxz/ticket/list.vue` — 搜索: 工单号/类型/状态/优先级/处理人/时间 | 操作: 新建/详情/接单

**工单详情页** `view/hxz/ticket/detail.vue` (新页面) — 顶部基础信息 + 左侧处理时间线 + 右侧关联信息 + 底部操作栏

**工单统计页** `view/hxz/ticket/stats.vue` — 工单量趋势/类型分布/响应时长/完结率

#### 6.2.10 平台配置

**平台配置页** `view/hxz/platform/config.vue` — 按configType分Tab的CRUD

**城市管理页** `view/hxz/platform/city.vue` — Switch控制开通/关闭

**费率配置页** `view/hxz/platform/fare.vue` — 按城市+车型维度展示

**加价规则页** `view/hxz/platform/surge.vue` — 标准CRUD

#### 6.2.11 数据统计报表

**运营看板页** `view/hxz/report/dashboard.vue` — 筛选(城市/日期) + 指标卡片 + 图表(订单趋势/收入趋势/城市分布)

**订单/司机/财务报表页** — 各自独立页面，筛选+图表+明细表格+导出

---

## 七、菜单与权限设计方案

### 7.1 完整菜单层级结构

```
花小猪运营后台
├── 运营看板 (dashboard)
│   └── 运营看板 (/hxz/dashboard)
├── 乘客管理 (passengerManage)
│   ├── 乘客列表 (/hxz/passenger/list)
│   └── 标签字典 (/hxz/passenger/tagDict)
├── 司机管理 (driverManage)
│   ├── 司机列表 (/hxz/driver/list)
│   ├── 司机审核 (/hxz/driver/audit)
│   └── 封禁记录 (/hxz/driver/banRecords)
├── 订单管理 (orderManage)
│   ├── 订单列表 (/hxz/order/list)
│   └── 异常订单 (/hxz/order/abnormal)
├── 行程管理 (tripManage)
│   ├── 行程列表 (/hxz/trip/list)
│   └── 轨迹回放 (/hxz/trip/track)
├── 派单配置 (dispatchManage)
│   ├── 派单规则 (/hxz/dispatch/rule)
│   ├── 人工干预 (/hxz/dispatch/manual)
│   └── 派单监控 (/hxz/dispatch/monitor)
├── 财务管理 (financeManage)
│   ├── 财务流水 (/hxz/finance/record)
│   ├── 结算管理 (/hxz/finance/settlement)
│   ├── 抽成配置 (/hxz/finance/commission)
│   └── 对账管理 (/hxz/finance/reconciliation)
├── 营销管理 (marketingManage)
│   ├── 优惠券模板 (/hxz/coupon/template)
│   ├── 发放记录 (/hxz/coupon/record)
│   └── 营销活动 (/hxz/coupon/activity)
├── 风控管理 (riskManage)
│   ├── 黑名单 (/hxz/risk/blacklist)
│   ├── 预警规则 (/hxz/risk/rule)
│   ├── 预警列表 (/hxz/risk/alert)
│   └── 风控画像 (/hxz/risk/profile)
├── 客服工单 (ticketManage)
│   ├── 工单列表 (/hxz/ticket/list)
│   └── 工单统计 (/hxz/ticket/stats)
├── 平台配置 (platformManage)
│   ├── 城市管理 (/hxz/platform/city)
│   ├── 费率配置 (/hxz/platform/fare)
│   ├── 加价规则 (/hxz/platform/surge)
│   └── 系统参数 (/hxz/platform/config)
├── 数据报表 (reportManage)
│   ├── 订单报表 (/hxz/report/order)
│   ├── 司机报表 (/hxz/report/driver)
│   └── 财务报表 (/hxz/report/finance)
└── 系统管理 (system) ← 框架内置
    ├── 用户管理
    ├── 角色管理
    ├── 菜单管理
    ├── API管理
    └── ...
```

### 7.2 角色与权限分配方案

| AuthorityId | 角色名 | 说明 | 默认路由 |
|-------------|--------|------|---------|
| 888 | 管理员 | 全部权限 | /hxz/dashboard |
| 881 | 运营 | 乘客/司机/订单/行程/派单/营销/报表 | /hxz/dashboard |
| 882 | 风控 | 乘客(查看+封禁)/司机(查看+封禁)/订单(查看+风控)/行程(查看+风控)/风控管理 | /hxz/dashboard |
| 883 | 财务 | 订单(查看)/财务管理/平台配置(费率查看)/报表 | /hxz/finance/record |
| 884 | 客服 | 乘客(查看)/司机(查看)/订单(查看+异常上报)/工单管理 | /hxz/ticket/list |

### 7.3 按钮权限Key清单

命名规范：`hxz:模块:操作`

```
hxz:passenger:list / detail / ban / unban / tag / export
hxz:driver:list / detail / audit / ban / unban / export
hxz:order:list / detail / markAbnormal / changeStatus / export
hxz:trip:list / detail / track / markAbnormal
hxz:dispatch:list / create / update / delete / manual / monitor
hxz:finance:record / settlement / commission / reconcile
hxz:coupon:template / record / issue
hxz:activity:list / create
hxz:risk:blacklist / rule / alert / profile
hxz:ticket:list / create / handle / stats
hxz:platform:city / fare / surge / config
hxz:report:dashboard / order / driver / finance / export
```

---

## 八、Redis 缓存设计方案

### 8.1 缓存Key设计规范

| 规范项 | 规则 |
|--------|------|
| Key前缀 | `hxz:` 统一前缀 |
| 分隔符 | `:` 冒号分隔层级 |
| 命名格式 | `hxz:模块:业务:标识` |
| 过期策略 | 所有Key必须设置TTL，禁止永久缓存 |
| 序列化 | String存JSON，Hash存字段，Set存ID集合 |

### 8.2 各场景缓存策略

| 缓存场景 | Key格式 | 类型 | TTL | 更新策略 | 用途 |
|---------|---------|------|-----|---------|------|
| 派单规则 | `hxz:dispatch:rule:{city}:{type}` | Hash | 10min | Cache-Aside，变更时删除Key | 派单引擎高频读取 |
| 平台配置 | `hxz:config:{key}:{city}` | String | 30min | Cache-Aside，变更时删除Key | 费率/加价等配置 |
| 热点订单 | `hxz:order:hot:{order_no}` | Hash | 5min | Cache-Aside，状态变更时删除 | 异常/申诉订单 |
| 司机摘要 | `hxz:driver:summary:{id}` | Hash | 5min | Cache-Aside，信息变更时删除 | 列表页关联查询 |
| 乘客标签 | `hxz:passenger:tags:{id}` | Set | 15min | Cache-Aside，标签变更时删除 | 标签快速查询 |
| 黑名单 | `hxz:risk:blacklist:{type}` | Set | 10min | Cache-Aside，名单变更时删除 | O(1)判断是否黑名单 |
| 城市列表 | `hxz:config:cities` | Hash | 30min | Cache-Aside，城市变更时删除 | 城市下拉选项 |
| 日报统计 | `hxz:report:daily:{date}` | String | 60min | 每日首次访问时写入 | 看板/报表 |

### 8.3 缓存更新与刷新机制

采用 **Cache-Aside（旁路缓存）** 模式：

**读取流程**：
1. 查询Redis缓存
2. 缓存命中 → 直接返回
3. 缓存未命中 → 查询DB → 写入Redis（带TTL） → 返回

**更新流程**：
1. 更新DB（先DB后缓存，保证数据最终一致）
2. 删除Redis对应Key
3. 下次读取时自动回填缓存

**异常处理**：
- Redis不可用时降级为直接查DB，不影响核心业务
- 缓存穿透防护：对查询结果为空的Key设置短TTL（1分钟）的空值缓存
- 缓存雪崩防护：TTL添加随机偏移（±10%），避免大量Key同时过期

---

## 九、开发实施路线图

### 阶段一：基础设施搭建（1-2天）

| 任务 | 验收标准 |
|------|---------|
| 执行建表SQL，导入32张业务表 | 所有表创建成功，无SQL错误 |
| 配置Redis连接 | config.yaml中Redis配置正确，应用启动可连接 |
| 配置MySQL连接 | config.yaml中MySQL指向hxz库，连接正常 |
| 创建5个角色（881-884） | 角色表中有对应记录 |
| 注册hxz ServiceGroup/ApiGroup/RouterGroup | enter.go中注册完成，编译通过 |

### 阶段二：CRUD代码生成（3-5天）

| 任务 | 验收标准 |
|------|---------|
| 使用GVA代码生成器，逐表生成CRUD | 每张表生成Model/Request/Service/API/Router |
| 注册所有业务路由到initBizRouter | 路由注册完成，编译通过 |
| 验证CRUD接口基本可用 | Postman测试每个模块的列表/详情/创建/更新/删除 |

### 阶段三：手写Service业务逻辑（5-8天）

| 任务 | 验收标准 |
|------|---------|
| 乘客封禁/解封逻辑 | 封禁后status变更+ban_record写入+Redis更新 |
| 司机审核逻辑 | 审核后status变更+audit_log写入+证件/车辆状态联动 |
| 司机封禁逻辑 | 封禁后检查未完成订单+状态变更+记录写入 |
| 订单异常标记 | 异常标记后order更新+风控预警自动创建 |
| 订单状态人工修改 | 状态流转合法性校验+status_log写入 |
| 派单规则更新 | 版本自动+1+version快照写入+Redis缓存刷新 |
| 派单人工干预 | manual_log写入+通知机制 |
| 财务结算单生成 | 订单聚合+抽成计算+settlement创建 |
| 财务对账执行 | 订单金额与流水比对+差异报告 |
| 优惠券人工发放 | 批量创建coupon_record+库存扣减 |
| 黑名单管理 | Redis黑名单同步+封禁状态联动 |
| 工单流转 | 接单/回复/转派/完结+ticket_log写入 |
| 报表统计 | 聚合查询+Redis缓存 |

### 阶段四：前端页面开发（8-12天）

| 任务 | 验收标准 |
|------|---------|
| 乘客管理页面（列表+详情+封禁+标签） | 页面渲染正常，CRUD操作可用 |
| 司机管理页面（列表+详情+审核+封禁） | 审核流程完整，证件照片可查看 |
| 订单管理页面（列表+详情+异常+状态修改） | 状态流转正确，导出可用 |
| 行程管理页面（列表+详情+轨迹回放） | 地图轨迹回放正常 |
| 派单配置页面（规则+版本+干预+监控） | 规则CRUD+版本管理+监控面板 |
| 财务管理页面（流水+结算+抽成+对账） | 结算流程完整，对账可用 |
| 营销管理页面（优惠券+活动+发放） | 优惠券全流程可用 |
| 风控管理页面（黑名单+预警+画像） | 黑名单管理+预警处理 |
| 客服工单页面（列表+详情+统计） | 工单流转完整 |
| 平台配置页面（城市+费率+加价+参数） | 配置CRUD可用 |
| 数据报表页面（看板+报表+导出） | 图表渲染正常，导出可用 |

### 阶段五：权限配置与测试（3-5天）

| 任务 | 验收标准 |
|------|---------|
| 创建完整菜单树 | 所有二级菜单在系统中可见 |
| 配置5个角色的菜单权限 | 各角色只能看到授权菜单 |
| 配置Casbin API权限 | 各角色只能调用授权接口 |
| 配置按钮权限 | 各角色页面按钮可见性正确 |
| 端到端权限测试 | 以每个角色登录验证权限隔离 |

### 阶段六：集成测试与上线（3-5天）

| 任务 | 验收标准 |
|------|---------|
| 全模块功能测试 | 所有CRUD和手写逻辑功能正常 |
| 权限边界测试 | 越权操作被正确拦截 |
| 缓存一致性测试 | 数据变更后缓存正确刷新 |
| 并发场景测试 | 封禁/结算等操作无数据竞争 |
| 性能测试 | 列表页查询<500ms，报表查询<3s |
| 部署上线 | Docker部署成功，生产环境可用 |

---

## 十、风险点与避坑方案

### 10.1 事务一致性

| 风险 | 避坑方案 |
|------|---------|
| 封禁操作需更新多表（passenger/driver + ban_record + Redis），部分失败导致数据不一致 | 使用GORM事务包裹DB操作，Redis操作放在事务提交后执行；若Redis操作失败，通过定时任务补偿 |
| 结算单生成涉及订单聚合+金额计算+余额扣减 | 整个流程放在一个DB事务中，使用 `SELECT ... FOR UPDATE` 锁定关键行 |
| 优惠券发放需扣减库存+批量创建记录 | 使用Redis DECR原子扣减库存，DB操作在事务中执行，库存不足时回滚 |

### 10.2 缓存一致性

| 风险 | 避坑方案 |
|------|---------|
| Cache-Aside模式下，DB更新成功但Redis删除失败，导致缓存脏数据 | 设置合理TTL（最长30分钟），脏数据自动过期；关键数据（派单规则）增加手动刷新接口 |
| 大量Key同时过期导致缓存雪崩 | TTL添加随机偏移（±10%），避免同时过期 |
| 恶意查询不存在的Key导致缓存穿透 | 对空结果设置短TTL（1分钟）的空值缓存；使用布隆过滤器预判 |

### 10.3 软删除

| 风险 | 避坑方案 |
|------|---------|
| GORM软删除导致唯一索引冲突（删除后重新创建同phone/id_card的记录） | 唯一索引包含 `deleted_at` 字段，如 `UNIQUE KEY uni_hxz_drivers_id_card (id_card, deleted_at)` |
| 软删除记录关联查询问题 | 列表查询默认 `WHERE deleted_at IS NULL`，关联查询注意Preload的conditions |
| 大量软删除记录影响查询性能 | 定期归档历史软删除数据到归档表 |

### 10.4 权限控制

| 风险 | 避坑方案 |
|------|---------|
| 只做了菜单权限，未做API权限，导致可直接调用接口越权 | 同时配置菜单权限和Casbin API权限，双重校验 |
| 按钮权限未生效，所有用户都能看到操作按钮 | 前端使用 `v-auth` 指令控制按钮显隐，后端接口同时校验权限 |
| 数据权限未隔离，运营能看到财务数据 | 利用GVA的数据权限机制，配置角色的DataAuthority |

### 10.5 不改动框架底层源码

| 风险 | 避坑方案 |
|------|---------|
| 修改GVA框架源码导致后续升级困难 | 所有业务代码放在 `hxz` 子包下，不修改 `system`/`example` 包的任何文件 |
| 修改 `gorm_biz.go`/`router_biz.go` 导致框架更新冲突 | 只在这两个文件的占位函数中添加业务代码，不修改函数签名和框架调用方式 |
| 修改 `enter.go` 注册方式 | 按照框架现有模式，在 `enter.go` 中添加 HxzGroup，不改变原有结构 |

### 10.6 其他风险

| 风险 | 避坑方案 |
|------|---------|
| 手机号/身份证等敏感信息泄露 | 数据库加密存储，列表页脱敏显示（138****1234），详情页需权限才能查看完整信息 |
| 大数据量导出导致内存溢出 | 导出采用流式写入，限制单次导出最大条数（10万条），超限提示缩小筛选范围 |
| 订单状态流转不合法 | 在Service层定义状态机，校验 from_status → to_status 的合法性，拒绝非法流转 |
| 轨迹点数据量过大 | 轨迹点按trip_id分页查询，前端按时间窗口加载，避免一次性加载全部点 |
| 并发封禁/解封冲突 | 使用乐观锁（version字段）或数据库行锁，防止并发操作导致状态不一致 |
