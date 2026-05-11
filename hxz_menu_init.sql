-- 花小猪运营后台-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CH-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- =================================-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- =============================================-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(),-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

---- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user',-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- =================================-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, aff-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list',-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component =-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'Order-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- =================================-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, aff-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
---- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DU-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- =-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @h-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record',-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(),-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement',-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- =-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @h-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLIC-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, '-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue', 2, '活动管理', 'calendar', 0, 0, 1)-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue', 2, '活动管理', 'calendar', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
---- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue', 2, '活动管理', 'calendar', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 风控管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue', 2, '活动管理', 'calendar', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 风控管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort,-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue', 2, '活动管理', 'calendar', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 风控管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL-- 花小猪运营后台菜单权限初始化脚本
-- 使用方法: mysql -h localhost -u root -p hxz < hxz_menu_init.sql

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ==============================================
-- 1. 插入菜单数据 (sys_menu)
-- ==============================================

-- 花小猪运营后台 - 根目录
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 1, 0, 'hxz', 'Hxz', 0, 'Layout', 100, '花小猪运营后台', 'guide', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title), icon = VALUES(icon);

SET @hxz_id = LAST_INSERT_ID();

-- ==============================================
-- 乘客管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'passenger', 'HxzPassenger', 0, '', 1, '乘客管理', 'user', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @passenger_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @passenger_id, 'list', 'PassengerList', 0, 'view/hxz/passenger/list.vue', 1, '乘客列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 司机管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'driver', 'HxzDriver', 0, '', 2, '司机管理', 'users', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @driver_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @driver_id, 'list', 'DriverList', 0, 'view/hxz/driver/list.vue', 1, '司机列表', 'list', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @driver_id, 'audit', 'DriverAudit', 0, 'view/hxz/driver/audit.vue', 2, '司机审核', 'check-circle', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 订单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'order', 'HxzOrder', 0, '', 3, '订单管理', 'shopping-cart', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @order_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @order_id, 'list', 'OrderList', 0, 'view/hxz/order/list.vue', 1, '订单列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 行程管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'trip', 'HxzTrip', 0, '', 4, '行程管理', 'map', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @trip_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 3, @trip_id, 'list', 'TripList', 0, 'view/hxz/trip/list.vue', 1, '行程列表', 'list', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 派单管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'dispatch', 'HxzDispatch', 0, '', 5, '派单管理', 'zap', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @dispatch_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @dispatch_id, 'rule', 'DispatchRule', 0, 'view/hxz/dispatch/rule.vue', 1, '派单规则', 'settings', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @dispatch_id, 'manual', 'DispatchManual', 0, 'view/hxz/dispatch/manual.vue', 2, '人工干预', 'hand', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 财务管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'finance', 'HxzFinance', 0, '', 6, '财务管理', 'wallet', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @finance_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @finance_id, 'record', 'FinanceRecord', 0, 'view/hxz/finance/record.vue', 1, '流水记录', 'document', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @finance_id, 'settlement', 'FinanceSettlement', 0, 'view/hxz/finance/settlement.vue', 2, '结算管理', 'credit-card', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 优惠券活动
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'coupon', 'HxzCoupon', 0, '', 7, '优惠券活动', 'ticket', 0, 0, 1)
ON DUPLICATE KEY UPDATE title = VALUES(title);

SET @coupon_id = LAST_INSERT_ID();

INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES 
(NOW(), NOW(), NULL, 3, @coupon_id, 'template', 'CouponTemplate', 0, 'view/hxz/coupon/template.vue', 1, '优惠券模板', 'gift', 0, 0, 1),
(NOW(), NOW(), NULL, 3, @coupon_id, 'activity', 'CouponActivity', 0, 'view/hxz/coupon/activity.vue', 2, '活动管理', 'calendar', 0, 0, 1)
ON DUPLICATE KEY UPDATE component = VALUES(component);

-- ==============================================
-- 风控管理
-- ==============================================
INSERT INTO sys_menu (created_at, updated_at, deleted_at, menu_level, parent_id, path, name, hidden, component, sort, title, icon, cache, affix, breadcrumb)
VALUES (NOW(), NOW(), NULL, 2, @hxz_id, 'risk', 'HxzRisk', 0,