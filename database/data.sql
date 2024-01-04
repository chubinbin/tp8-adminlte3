/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50739
Source Host           : localhost:3306
Source Database       : tp6_adminlte3

Target Server Type    : MYSQL
Target Server Version : 50739
File Encoding         : 65001

Date: 2023-03-10 15:36:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) unsigned NOT NULL COMMENT '用户',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'URL',
  `log_method` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  `log_ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作IP',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台操作日志';

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', '2', '登录', '/admin/auth/login.html', 'POST', '127.0.0.1', '1678424738', '1678424738', '0');
INSERT INTO `admin_log` VALUES ('2', '2', '退出', '/auth/logout.html', 'POST', '127.0.0.1', '1678429467', '1678429467', '0');
INSERT INTO `admin_log` VALUES ('3', '2', '登录', '/admin/auth/login.html?redirect=%2Fadmin%2Findex%2Findex.html', 'POST', '127.0.0.1', '1678431016', '1678431016', '0');
INSERT INTO `admin_log` VALUES ('4', '2', '删除菜单', '/admin/admin_menu/del.html', 'POST', '127.0.0.1', '1678431840', '1678431840', '0');
INSERT INTO `admin_log` VALUES ('5', '2', '角色授权', '/admin/AdminRole/access.html?id=1', 'POST', '127.0.0.1', '1678431893', '1678431893', '0');
INSERT INTO `admin_log` VALUES ('6', '2', '添加角色', '/admin/AdminRole/add.html', 'POST', '127.0.0.1', '1678431994', '1678431994', '0');
INSERT INTO `admin_log` VALUES ('7', '2', '退出', '/admin/auth/logout.html', 'POST', '127.0.0.1', '1678432044', '1678432044', '0');
INSERT INTO `admin_log` VALUES ('8', '2', '登录', '/admin/auth/login.html?redirect=%2Fadmin%2Findex%2Findex.html', 'POST', '127.0.0.1', '1678432061', '1678432061', '0');
INSERT INTO `admin_log` VALUES ('9', '2', '修改菜单', '/admin/AdminMenu/edit.html?id=16', 'POST', '127.0.0.1', '1678433200', '1678433200', '0');
INSERT INTO `admin_log` VALUES ('10', '1', '登录', '/admin/auth/login.html?redirect=%2Fadmin%2Fadmin_log%2Findex.html', 'POST', '127.0.0.1', '1678433294', '1678433294', '0');
INSERT INTO `admin_log` VALUES ('11', '2', '修改角色', '/admin/AdminRole/edit.html?id=2', 'POST', '127.0.0.1', '1678433397', '1678433397', '0');
INSERT INTO `admin_log` VALUES ('12', '2', '添加用户', '/admin/AdminUser/add.html', 'POST', '127.0.0.1', '1678433450', '1678433450', '0');
INSERT INTO `admin_log` VALUES ('13', '1', '退出', '/admin/auth/logout.html', 'POST', '127.0.0.1', '1678433483', '1678433483', '0');
INSERT INTO `admin_log` VALUES ('14', '3', '登录', '/admin/auth/login.html?redirect=%2Fadmin%2Findex%2Findex.html', 'POST', '127.0.0.1', '1678433500', '1678433500', '0');

-- ----------------------------
-- Table structure for admin_log_data
-- ----------------------------
DROP TABLE IF EXISTS `admin_log_data`;
CREATE TABLE `admin_log_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_log_id` int(10) unsigned NOT NULL COMMENT '日志ID',
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '日志内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台操作日志数据';

-- ----------------------------
-- Records of admin_log_data
-- ----------------------------
INSERT INTO `admin_log_data` VALUES ('1', '1', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/auth\\/login.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryS7WhPZTyJkDlBzNm\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"cache-control\":\"no-cache\",\"pragma\":\"no-cache\",\"content-length\":\"576\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"username\":\"super_admin\",\"password\":\"admin123\",\"captcha\":\"6233\",\"remember\":\"on\",\"__token__\":\"a64322cea08324ef1174a9d2c747339e\"}}', '1678424738', '1678424738', '0');
INSERT INTO `admin_log_data` VALUES ('2', '2', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; admin_user_id=2; admin_user_sign=b2c4f10291fd13257e37362e8ee9a2ea; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"0\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\",\"content-type\":\"\"},\"param\":[]}', '1678429467', '1678429467', '0');
INSERT INTO `admin_log_data` VALUES ('3', '3', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/auth\\/login.html?redirect=%2Fadmin%2Findex%2Findex.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundary9do1MFq5JA1cvF9v\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"570\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"redirect\":\"\\/admin\\/index\\/index.html\",\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"2938\",\"remember\":\"on\",\"__token__\":\"1e7996f1d1270c0c80b8ad391cf085fa\"}}', '1678431016', '1678431016', '0');
INSERT INTO `admin_log_data` VALUES ('4', '4', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0; admin_user_id=2; admin_user_sign=b2c4f10291fd13257e37362e8ee9a2ea\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/admin_menu\\/index.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"application\\/x-www-form-urlencoded; charset=UTF-8\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"48\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"id\":\"26\",\"__token__\":\"c2c73b201a2b787af80be4cbe57b809f\"}}', '1678431840', '1678431840', '0');
INSERT INTO `admin_log_data` VALUES ('5', '5', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0; admin_user_id=2; admin_user_sign=b2c4f10291fd13257e37362e8ee9a2ea\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/AdminRole\\/access.html?id=1\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryK4GLAG2ikDCVKwmd\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"4581\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"id\":\"1\",\"url\":[\"1\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"43\",\"44\",\"47\",\"48\",\"53\",\"54\",\"55\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"32\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"33\",\"49\",\"50\",\"51\",\"52\"],\"__token__\":\"a8cbe3ec59b437e830a3e331fc029917\"}}', '1678431893', '1678431893', '0');
INSERT INTO `admin_log_data` VALUES ('6', '6', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0; admin_user_id=2; admin_user_sign=b2c4f10291fd13257e37362e8ee9a2ea\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/AdminRole\\/add.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundarygDM6lWGEU1AYvBHB\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"491\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"description\":\"\\u4e0d\\u9700\\u8981\\u6743\\u9650\\u8ba4\\u8bc1\",\"status\":\"1\",\"__token__\":\"4a71490465f3b908d535d9688af3ff7f\"}}', '1678431994', '1678431994', '0');
INSERT INTO `admin_log_data` VALUES ('7', '7', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0; admin_user_id=2; admin_user_sign=b2c4f10291fd13257e37362e8ee9a2ea\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/admin_role\\/index.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"0\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\",\"content-type\":\"\"},\"param\":[]}', '1678432044', '1678432044', '0');
INSERT INTO `admin_log_data` VALUES ('8', '8', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/auth\\/login.html?redirect=%2Fadmin%2Findex%2Findex.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryyug5oYlUALRVGUJe\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"473\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"redirect\":\"\\/admin\\/index\\/index.html\",\"username\":\"admin\",\"password\":\"admin123\",\"captcha\":\"0473\",\"__token__\":\"105ea9fa2a53ab10295a466da8ae4fe9\"}}', '1678432061', '1678432061', '0');
INSERT INTO `admin_log_data` VALUES ('9', '9', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/AdminMenu\\/edit.html?id=16\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryNQJK9WWCdGT87zCm\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"892\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"id\":\"16\",\"parent_id\":\"2\",\"name\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"url\":\"admin\\/admin_log\\/index\",\"sort_number\":\"1000\",\"icon\":\"fas fa-keyboard\",\"is_show\":\"0\",\"log_method\":\"\\u4e0d\\u8bb0\\u5f55\",\"__token__\":\"5e3fb54d649331db6fe4d36a0f62e9a1\"}}', '1678433200', '1678433200', '0');
INSERT INTO `admin_log_data` VALUES ('10', '10', '{\"header\":{\"cookie\":\"AppSId=d82646ae9061b16a5a3fe85d3a8c17c6\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/auth\\/login.html?redirect=%2Fadmin%2Fadmin_log%2Findex.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"accept-language\":\"zh-CN,zh;q=0.8\",\"sec-gpc\":\"1\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryB51rTHlhKpkMBUAp\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/111.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"481\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"redirect\":\"\\/admin\\/admin_log\\/index.html\",\"username\":\"develop_admin\",\"password\":\"admin123\",\"captcha\":\"4200\",\"__token__\":\"0c76928477dd25e4962a08acc32bb7db\"}}', '1678433294', '1678433294', '0');
INSERT INTO `admin_log_data` VALUES ('11', '11', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/AdminRole\\/edit.html?id=2\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryaOYvrDsSw0SATkqw\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"473\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"id\":\"2\",\"name\":\"\\u6d4b\\u8bd5\",\"description\":\"\\u6d4b\\u8bd5\\u4eba\\u5458\",\"status\":\"1\",\"__token__\":\"630ac6d9b959671cb49644e9507ae61d\"}}', '1678433398', '1678433398', '0');
INSERT INTO `admin_log_data` VALUES ('12', '12', '{\"header\":{\"cookie\":\"AppSId=365b2cca4ec0f725740222cb018f6e07; device_id_uid_2=4242eeaace5dbf866360f9a8756dc879cf723d12; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-language\":\"zh-CN,zh;q=0.9\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/AdminUser\\/add.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryuwdgMvdbA7ZBcime\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/110.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"663\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"role\":[\"2\"],\"nickname\":\"\\u6d4b\\u8bd5\",\"username\":\"test\",\"password\":\"admin123\",\"status\":\"1\",\"__token__\":\"960873da6417b752bf2f4eb071d6c96a\"}}', '1678433450', '1678433450', '0');
INSERT INTO `admin_log_data` VALUES ('13', '13', '{\"header\":{\"cookie\":\"AppSId=d82646ae9061b16a5a3fe85d3a8c17c6; device_id_uid_1=310ad1a843ad91ce1dd51a4601f94af1bf2ef093; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/admin_log\\/index.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"accept-language\":\"zh-CN,zh;q=0.8\",\"sec-gpc\":\"1\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/111.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"0\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\",\"content-type\":\"\"},\"param\":[]}', '1678433483', '1678433483', '0');
INSERT INTO `admin_log_data` VALUES ('14', '14', '{\"header\":{\"cookie\":\"AppSId=d82646ae9061b16a5a3fe85d3a8c17c6; device_id_uid_1=310ad1a843ad91ce1dd51a4601f94af1bf2ef093; DarkMode=0; HeaderFixed=0; DropdownLegacyOffset=0; NoBorder=0; SidebarCollapsed=0; SidebarFixed=0; SidebarMini=0; SidebarMiniMd=0; SidebarMiniXs=0; FlatSidebar=0; LegacySidebar=0; CompactSidebar=0; ChildIndentSidebar=0; ChildHideSidebar=0; NoExpandSidebar=0; FootFixed=0; TextSmBody=0; TextSmHeader=0; TextSmBrand=0; TextSmSidebar=0; TextSmFooter=0\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/tp6adminlte3.com\\/admin\\/auth\\/login.html?redirect=%2Fadmin%2Findex%2Findex.html\",\"origin\":\"http:\\/\\/tp6adminlte3.com\",\"accept-language\":\"zh-CN,zh;q=0.8\",\"sec-gpc\":\"1\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundary7MLmldFGacwAB6ln\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/111.0.0.0 Safari\\/537.36\",\"x-requested-with\":\"XMLHttpRequest\",\"accept\":\"application\\/json, text\\/javascript, *\\/*; q=0.01\",\"content-length\":\"472\",\"connection\":\"keep-alive\",\"host\":\"tp6adminlte3.com\"},\"param\":{\"redirect\":\"\\/admin\\/index\\/index.html\",\"username\":\"test\",\"password\":\"admin123\",\"captcha\":\"6562\",\"__token__\":\"82aed4a2372f969d810c7120d75e58f8\"}}', '1678433500', '1678433500', '0');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级菜单',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fas fa-list' COMMENT '图标',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为顶部菜单',
  `sort_number` int(10) unsigned NOT NULL DEFAULT '1000' COMMENT '排序号',
  `log_method` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '不记录' COMMENT '记录日志方法',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台菜单';

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '后台首页', 'admin/index/index', 'fas fa-home', '1', '1', '99', '不记录', '1678423461', '1678423461', '0');
INSERT INTO `admin_menu` VALUES ('2', '0', '系统管理', 'admin/system/manage', 'fas fa-desktop', '1', '1', '1099', '不记录', '1678423461', '1678423461', '0');
INSERT INTO `admin_menu` VALUES ('3', '2', '用户管理', 'admin/admin_user/index', 'fas fa-user', '1', '0', '1000', '不记录', '1678423461', '1678423461', '0');
INSERT INTO `admin_menu` VALUES ('4', '3', '添加用户', 'admin/admin_user/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423461', '1678423461', '0');
INSERT INTO `admin_menu` VALUES ('5', '3', '修改用户', 'admin/admin_user/edit', 'fas fa-edit', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('6', '3', '删除用户', 'admin/admin_user/del', 'fas fa-close', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('7', '2', '角色管理', 'admin/admin_role/index', 'fas fa-user-friends', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('8', '7', '添加角色', 'admin/admin_role/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('9', '7', '修改角色', 'admin/admin_role/edit', 'fas fa-edit', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('10', '7', '删除角色', 'admin/admin_role/del', 'fas fa-close', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('11', '7', '角色授权', 'admin/admin_role/access', 'fas fa-key', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('12', '2', '菜单管理', 'admin/admin_menu/index', 'fas fa-align-justify', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('13', '12', '添加菜单', 'admin/admin_menu/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('14', '12', '修改菜单', 'admin/admin_menu/edit', 'fas fa-edit', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('15', '12', '删除菜单', 'admin/admin_menu/del', 'fas fa-close', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('16', '2', '操作日志', 'admin/admin_log/index', 'fas fa-keyboard', '0', '0', '1000', '不记录', '1678423462', '1678433200', '0');
INSERT INTO `admin_menu` VALUES ('17', '16', '查看操作日志详情', 'admin/admin_log/view', 'fas fa-search-plus', '0', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('18', '2', '个人资料', 'admin/admin_user/profile', 'fas fa-smile', '1', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('19', '0', '用户管理', 'admin/user/mange', 'fas fa-users', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('20', '19', '用户管理', 'admin/user/index', 'fas fa-user', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('21', '20', '添加用户', 'admin/user/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('22', '20', '修改用户', 'admin/user/edit', 'fas fa-pencil', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('23', '20', '删除用户', 'admin/user/del', 'fas fa-trash', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('24', '20', '启用用户', 'admin/user/enable', 'fas fa-circle', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('25', '20', '禁用用户', 'admin/user/disable', 'fas fa-circle', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('26', '19', '用户等级管理', 'admin/user_level/index', 'fas fa-th-list', '1', '0', '1000', '不记录', '1678423462', '1678431840', '1678431840');
INSERT INTO `admin_menu` VALUES ('27', '26', '添加用户等级', 'admin/user_level/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('28', '26', '修改用户等级', 'admin/user_level/edit', 'fas fa-pencil', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('29', '26', '删除用户等级', 'admin/user_level/del', 'fas fa-trash', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('30', '26', '启用用户等级', 'admin/user_level/enable', 'fas fa-circle', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('31', '26', '禁用用户等级', 'admin/user_level/disable', 'fas fa-circle', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('32', '2', '开发管理', 'admin/develop/manager', 'fas fa-code', '1', '0', '1005', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('33', '32', '代码生成', 'admin/generate/index', 'fas fa-file-code', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('34', '32', '设置配置', 'admin/develop/setting', 'fas fa-cogs', '1', '0', '995', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('35', '34', '设置管理', 'admin/setting/index', 'fas fa-cog', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('36', '35', '添加设置', 'admin/setting/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('37', '35', '修改设置', 'admin/setting/edit', 'fas fa-pencil', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('38', '35', '删除设置', 'admin/setting/del', 'fas fa-trash', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('39', '34', '设置分组管理', 'admin/setting_group/index', 'fas fa-list', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('40', '39', '添加设置分组', 'admin/setting_group/add', 'fas fa-plus', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('41', '39', '修改设置分组', 'admin/setting_group/edit', 'fas fa-pencil', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('42', '39', '删除设置分组', 'admin/setting_group/del', 'fas fa-trash', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('43', '0', '设置中心', 'admin/setting/center', 'fas fa-cogs', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('44', '43', '所有配置', 'admin/setting/all', 'fas fa-list', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('47', '43', '后台设置', 'admin/setting/admin', 'fas fa-adjust', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('48', '43', '更新设置', 'admin/setting/update', 'fas fa-pencil', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('49', '32', '数据维护', 'admin/database/table', 'fas fa-database', '1', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('50', '49', '查看表详情', 'admin/database/view', 'fas fa-eye', '0', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('51', '49', '优化表', 'admin/database/optimize', 'fas fa-refresh', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('52', '49', '修复表', 'admin/database/repair', 'fas fa-circle-o-notch', '0', '0', '1000', 'POST', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('53', '0', '通用操作', 'admin/common/option', 'fas fa-list', '0', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('54', '53', '表单上传文件', 'admin/file/upload', 'fas fa-cloud-upload-alt', '0', '0', '1000', '不记录', '1678423462', '1678423462', '0');
INSERT INTO `admin_menu` VALUES ('55', '53', '编辑器上传文件', 'admin/file/editor', 'fas fa-upload', '0', '0', '1000', '不记录', '1678423462', '1678423462', '0');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `url` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色';

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', '管理员', '后台管理员角色', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,32,33,34,35,36,37,38,39,40,41,42,43,44,47,48,49,50,51,52,53,54,55', '1', '1678423462', '1678431893', '0');
INSERT INTO `admin_role` VALUES ('2', '测试', '测试人员', '1,2,18', '1', '1678431994', '1678433398', '0');

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJE1WUGZmVUFIUmY5WUROZzdzRG11c2VpeVhwM1dkdTliZDNldW1HU2dWUXIuY1BwbmtNSGVD' COMMENT '密码',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/admin/images/avatar.png' COMMENT '头像',
  `role` varchar(3210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `index_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台用户';

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'develop_admin', 'JDJ5JDEwJEEueEw4b2JDbGRSUm1UUFc3YnRIN09hTkx6UUxBYnJrY3ZaTGdTbGwyVG9URTJnZ3kwNVhT', '开发管理员', '/static/admin/images/avatar.png', '1', '1', '1678423461', '1678423968', '0');
INSERT INTO `admin_user` VALUES ('2', 'admin', 'JDJ5JDEwJEEueEw4b2JDbGRSUm1UUFc3YnRIN09hTkx6UUxBYnJrY3ZaTGdTbGwyVG9URTJnZ3kwNVhT', '超级管理员', '/static/admin/images/avatar.png', '1', '1', '1678423461', '1678423461', '0');
INSERT INTO `admin_user` VALUES ('3', 'test', 'JDJ5JDEwJE1zMFZGYmpDVkFRaFdiempWLkgxcE80L2FsMzgwTy9KQ0RyenhoaHBoVExCelBDNjk2ak5p', '测试', '/static/admin/images/avatar.png', '2', '1', '1678433450', '1678433450', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('20191001081329', 'Setting', '2023-03-10 12:44:19', '2023-03-10 12:44:20', '0');
INSERT INTO `migrations` VALUES ('20191001081340', 'SettingGroup', '2023-03-10 12:44:20', '2023-03-10 12:44:20', '0');
INSERT INTO `migrations` VALUES ('20200804023050', 'AdminUser', '2023-03-10 12:44:20', '2023-03-10 12:44:21', '0');
INSERT INTO `migrations` VALUES ('20200806095505', 'AdminMenu', '2023-03-10 12:44:21', '2023-03-10 12:44:22', '0');
INSERT INTO `migrations` VALUES ('20200806100423', 'AdminRole', '2023-03-10 12:44:22', '2023-03-10 12:44:22', '0');
INSERT INTO `migrations` VALUES ('20200806100513', 'AdminLog', '2023-03-10 12:44:22', '2023-03-10 12:44:23', '0');
INSERT INTO `migrations` VALUES ('20200806100516', 'AdminLogData', '2023-03-10 12:44:23', '2023-03-10 12:44:23', '0');
INSERT INTO `migrations` VALUES ('20200827064827', 'User', '2023-03-10 12:44:23', '2023-03-10 12:44:24', '0');
INSERT INTO `migrations` VALUES ('20210219080541', 'UserLevel', '2023-03-10 12:44:25', '2023-03-10 12:44:25', '0');
INSERT INTO `migrations` VALUES ('20210908031808', 'Test', '2023-03-10 12:44:25', '2023-03-10 12:44:25', '0');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_group_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属分组',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置配置及内容',
  `sort_number` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置';

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '1', '基本设置', '后台的基本信息设置', 'base', '[{\"name\":\"\\u540e\\u53f0\\u540d\\u79f0\",\"field\":\"name\",\"type\":\"text\",\"content\":\"XX\\u540e\\u53f0\\u7cfb\\u7edf\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7b80\\u79f0\",\"field\":\"short_name\",\"type\":\"text\",\"content\":\"\\u540e\\u53f0\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u4f5c\\u8005\",\"field\":\"author\",\"type\":\"text\",\"content\":\"xx\\u79d1\\u6280\",\"option\":\"\"},{\"name\":\"\\u4f5c\\u8005\\u7f51\\u7ad9\",\"field\":\"website\",\"type\":\"text\",\"content\":\"#\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7248\\u672c\",\"field\":\"version\",\"type\":\"text\",\"content\":\"0.1\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0LOGO\",\"field\":\"logo\",\"type\":\"image\",\"content\":\"\\/static\\/admin\\/images\\/logo.png\",\"option\":\"\"}]', '1000', '1678423460', '1678423460', '0');
INSERT INTO `setting` VALUES ('2', '1', '登录设置', '后台登录相关设置', 'login', '[{\"name\":\"\\u767b\\u5f55token\\u9a8c\\u8bc1\",\"field\":\"token\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"\\u9a8c\\u8bc1\\u7801\",\"field\":\"captcha\",\"type\":\"select\",\"content\":\"1\",\"option\":\"0||\\u4e0d\\u5f00\\u542f\\r\\n1||\\u56fe\\u5f62\\u9a8c\\u8bc1\\u7801\\r\\n2||\\u6ed1\\u52a8\\u9a8c\\u8bc1\"},{\"name\":\"\\u767b\\u5f55\\u80cc\\u666f\",\"field\":\"background\",\"type\":\"image\",\"content\":\"\\/static\\/admin\\/images\\/login-default-bg.jpg\",\"option\":\"\"},{\"name\":\"\\u6781\\u9a8cID\",\"field\":\"geetest_id\",\"type\":\"text\",\"content\":\"66cfc0f309e368364b753dad7d2f67f2\",\"option\":\"\"},{\"name\":\"\\u6781\\u9a8cKEY\",\"field\":\"geetest_key\",\"type\":\"text\",\"content\":\"99750f86ec232c997efaff56c7b30cd3\",\"option\":\"\"},{\"name\":\"\\u767b\\u5f55\\u91cd\\u8bd5\\u9650\\u5236\",\"field\":\"login_limit\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"0||\\u5426\\r\\n1||\\u662f\"},{\"name\":\"\\u9650\\u5236\\u6700\\u5927\\u6b21\\u6570\",\"field\":\"login_max_count\",\"type\":\"number\",\"content\":\"5\",\"option\":\"\"},{\"name\":\"\\u7981\\u6b62\\u767b\\u5f55\\u65f6\\u957f(\\u5c0f\\u65f6)\",\"field\":\"login_limit_hour\",\"type\":\"number\",\"content\":\"2\",\"option\":\"\"}]', '1000', '1678423460', '1678423460', '0');
INSERT INTO `setting` VALUES ('3', '1', '安全设置', '安全相关配置', 'safe', '[{\"name\":\"\\u52a0\\u5bc6key\",\"field\":\"admin_key\",\"type\":\"text\",\"content\":\"89ce3272dc949fc3698fe7108d1dbe37\",\"option\":\"\"},{\"name\":\"SessionKeyUid\",\"field\":\"store_uid_key\",\"type\":\"text\",\"content\":\"admin_user_id\",\"option\":\"\"},{\"name\":\"SessionKeySign\",\"field\":\"store_sign_key\",\"type\":\"text\",\"content\":\"admin_user_sign\",\"option\":\"\"},{\"name\":\"\\u540e\\u53f0\\u7528\\u6237\\u5bc6\\u7801\\u5f3a\\u5ea6\\u68c0\\u6d4b\",\"field\":\"password_check\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"0||\\u5173\\u95ed\\r\\n1||\\u5f00\\u542f\"},{\"name\":\"\\u5bc6\\u7801\\u5b89\\u5168\\u5f3a\\u5ea6\\u7b49\\u7ea7\",\"field\":\"password_level\",\"type\":\"select\",\"content\":\"2\",\"option\":\"1||\\u7b80\\u5355\\u5bc6\\u7801\\r\\n2||\\u4e2d\\u7b49\\u5bc6\\u7801\\r\\n3||\\u590d\\u6742\\u5bc6\\u7801\"},{\"name\":\"\\u5355\\u8bbe\\u5907\\u767b\\u5f55\",\"field\":\"one_device_login\",\"type\":\"switch\",\"content\":\"0\",\"option\":\"0||\\u5173\\u95ed\\r\\n1||\\u5f00\\u542f\"},{\"name\":\"CSRFToken\\u68c0\\u6d4b\",\"field\":\"check_token\",\"type\":\"switch\",\"content\":\"1\",\"option\":\"\"},{\"name\":\"CSRFToken\\u9a8c\\u8bc1\\u65b9\\u6cd5\",\"field\":\"check_token_action_list\",\"type\":\"multi_select\",\"content\":\"add,edit,del,import,profile,update\",\"option\":\"add||\\u6dfb\\u52a0\\r\\nedit||\\u4fee\\u6539\\r\\ndel||\\u5220\\u9664\\r\\nimport||\\u5bfc\\u5165\\r\\nprofile||\\u4fee\\u6539\\u8d44\\u6599\\r\\nupdate||\\u66f4\\u65b0\"}]', '1000', '1678423460', '1678423460', '0');

-- ----------------------------
-- Table structure for setting_group
-- ----------------------------
DROP TABLE IF EXISTS `setting_group`;
CREATE TABLE `setting_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作用模块',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '代码',
  `sort_number` int(10) NOT NULL DEFAULT '1000' COMMENT '排序',
  `auto_create_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动生成菜单',
  `auto_create_file` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动生成配置文件',
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa-list' COMMENT '图标',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='设置分组';

-- ----------------------------
-- Records of setting_group
-- ----------------------------
INSERT INTO `setting_group` VALUES ('1', 'admin', '后台设置', '后台管理方面的设置', 'admin', '1000', '1', '1', 'fa-adjust', '1678423460', '1678423460', '0');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `user_level_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户等级',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'JDJ5JDEwJFZrVktoT3NMRWp1QlJBWnQwcnAzLmVhSnQwOUdXSzV4bUdxTE5SMWlDZ3BLWVhLcHNEdHZt' COMMENT '密码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `lng` decimal(14,8) NOT NULL DEFAULT '116.00000000' COMMENT '经度',
  `lat` decimal(14,8) NOT NULL DEFAULT '37.00000000' COMMENT '纬度',
  `slide` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相册',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试';

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_level_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户等级',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '账号',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/avatar.png' COMMENT '头像',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'putong1', 'JDJ5JDEwJG8yWDR4Vk9jSkZidWJWSWpWMmlBVE94U3R4UWRoQnNTQUg4MUVmMlVFMzVBZldjS1hzdnpl', '18899990000', 'putong1', '/uploads/uploads/20211105/943dafd0517fecce981b6e3c06e4ac87.png', '1', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('2', '1', 'putong2', 'JDJ5JDEwJGZmVmRVcjZRaExmSi9XS2htNC90aU9wSlNmdDY3UkZ3WEwwVVJoSzZaNzNRWnNKUk5sMHFD', '18333333333', 'putong2', '/uploads/uploads/20211105/5606eb6dda163840c30eb58ba82bbfca.png', '1', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('3', '2', 'baiyin1', 'JDJ5JDEwJDZNa0FlR1kyS1A1LjJOcm44MzI5bnVjcDNVZ0VzN0xkT2JpWEwuWU9ka0p6TVUwVWhWWGxh', '13200001111', 'baiyin1', '/uploads/uploads/20211105/6c0ef20747bac6a8f0b1f75d78327806.jpg', '0', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('4', '2', 'baiyin2', 'JDJ5JDEwJFloTzR4VzcvYngxaWtQTmluU3dhbE9DdUwxbFlNZ005WnpkRHRyb0Z0V0pOazJJRktadFQ2', 'admin', 'baiyin2', '/uploads/uploads/20211105/f5ffbf069f86c0bbeef12754c236c053.png', '1', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('5', '3', '黄金1', 'JDJ5JDEwJFoxU3lKcE8wUk5HSFJQWUY3WmMydS5IUWtkVzIwRU9sZEVmTGYwc2N2L2RjMmdVRFUzV3lh', '黄金1', '黄金1', '/uploads/uploads/20211105/09f88c2c15fd9ea2eaebefa94fc82519.png', '1', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('6', '1', '10001', 'JDJ5JDEwJDJ2OEswT2t0UjAybXpac080QncuTy4uMWdCdWNDb0hkZ3RhWTZSejZOLnNvcTliRW5jSFZ1', '13200000000', '10001', '/uploads/uploads/20211105/09f88c2c15fd9ea2eaebefa94fc82519.png', '1', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('7', '2', '10002', 'JDJ5JDEwJFJpRHVvMVlSc0lUc3Nib3RPNUJjOU9Ob3RwMGFhRldkWUVzNE5hUlQvVTB6RWJQODJPY3Jt', '13200000001', '10002', '/uploads/uploads/20211105/09f88c2c15fd9ea2eaebefa94fc82519.png', '1', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('8', '3', '10003', 'JDJ5JDEwJGE4SXFlenFZQXhZcm9mbVplM1ZHYmVtL3FGOG1DQWx5MDVNTElCc0kzVjFRQUtscmdwWHlh', '13200000002', '10003', '/uploads/uploads/20211105/09f88c2c15fd9ea2eaebefa94fc82519.png', '0', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('9', '2', '10004', 'JDJ5JDEwJEM4REguLjRBWHJhRnEyMmdWVGdSQy5RUTkxMlFlU3NkMnJzSldQeWcuM2dxREhpZ3pNcFdX', '13200000003', '10004', '/uploads/uploads/20211105/09f88c2c15fd9ea2eaebefa94fc82519.png', '0', '1678423464', '1678423464', '0');
INSERT INTO `user` VALUES ('10', '1', '10005', 'JDJ5JDEwJG1zaFZzSWNxNTV6NUJ4dk9zZ0FqZXUzYS9oTjlMd3o2QzJ3QWNMNlVnQkdTYUhra1pMbm0y', '13200000004', '10005', '/uploads/uploads/20211105/09f88c2c15fd9ea2eaebefa94fc82519.png', '0', '1678423464', '1678423464', '0');

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '简介',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/static/index/images/user_level_default.png' COMMENT '图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户等级';

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', '普通用户', '普通用户', '/uploads/uploads/20211105/d62acc7db724543cdab5635c03fa4bab.png', '1', '1678423465', '1678423465', '0');
INSERT INTO `user_level` VALUES ('2', '白银会员', '白银会员', '/uploads/uploads/20211105/c8ef52b10a8b478f31bf8f2763b9478e.png', '1', '1678423465', '1678423465', '0');
INSERT INTO `user_level` VALUES ('3', '黄金会员', '黄金会员', '/uploads/uploads/20211105/393c19a1f90e320dde433eb064d0bc37.png', '1', '1678423465', '1678423465', '0');
