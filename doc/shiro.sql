/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2017-07-24 11:36:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES ('1', '总公司', '0', '0/', '1');
INSERT INTO `sys_organization` VALUES ('2', '分公司1', '1', '0/1/', '1');
INSERT INTO `sys_organization` VALUES ('3', '分公司2', '1', '0/1/', '1');
INSERT INTO `sys_organization` VALUES ('4', '分公司11', '2', '0/1/2/', '1');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_ids` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', '资源', 'menu', '', '0', '0/', '', '1');
INSERT INTO `sys_resource` VALUES ('11', '组织机构管理', 'menu', '/organization', '1', '0/1/', 'organization:*', '1');
INSERT INTO `sys_resource` VALUES ('12', '组织机构新增', 'button', '', '11', '0/1/11/', 'organization:create', '1');
INSERT INTO `sys_resource` VALUES ('13', '组织机构修改', 'button', '', '11', '0/1/11/', 'organization:update', '1');
INSERT INTO `sys_resource` VALUES ('14', '组织机构删除', 'button', '', '11', '0/1/11/', 'organization:delete', '1');
INSERT INTO `sys_resource` VALUES ('15', '组织机构查看', 'button', '', '11', '0/1/11/', 'organization:view', '1');
INSERT INTO `sys_resource` VALUES ('21', '用户管理', 'menu', '/user', '1', '0/1/', 'user:*', '1');
INSERT INTO `sys_resource` VALUES ('22', '用户新增', 'button', '', '21', '0/1/21/', 'user:create', '1');
INSERT INTO `sys_resource` VALUES ('23', '用户修改', 'button', '', '21', '0/1/21/', 'user:update', '1');
INSERT INTO `sys_resource` VALUES ('24', '用户删除', 'button', '', '21', '0/1/21/', 'user:delete', '1');
INSERT INTO `sys_resource` VALUES ('25', '用户查看', 'button', '', '21', '0/1/21/', 'user:view', '1');
INSERT INTO `sys_resource` VALUES ('31', '资源管理', 'menu', '/resource', '1', '0/1/', 'resource:*', '1');
INSERT INTO `sys_resource` VALUES ('32', '资源新增', 'button', '', '31', '0/1/31/', 'resource:create', '1');
INSERT INTO `sys_resource` VALUES ('33', '资源修改', 'button', '', '31', '0/1/31/', 'resource:update', '1');
INSERT INTO `sys_resource` VALUES ('34', '资源删除', 'button', '', '31', '0/1/31/', 'resource:delete', '1');
INSERT INTO `sys_resource` VALUES ('35', '资源查看', 'button', '', '31', '0/1/31/', 'resource:view', '1');
INSERT INTO `sys_resource` VALUES ('41', '角色管理', 'menu', '/role', '1', '0/1/', 'role:*', '1');
INSERT INTO `sys_resource` VALUES ('42', '角色新增', 'button', '', '41', '0/1/41/', 'role:create', '1');
INSERT INTO `sys_resource` VALUES ('43', '角色修改', 'button', '', '41', '0/1/41/', 'role:update', '1');
INSERT INTO `sys_resource` VALUES ('44', '角色删除', 'button', '', '41', '0/1/41/', 'role:delete', '1');
INSERT INTO `sys_resource` VALUES ('45', '角色查看', 'button', '', '41', '0/1/41/', 'role:view', '1');
INSERT INTO `sys_resource` VALUES ('51', '会话管理', 'menu', '/sessions', '1', '0/1/', 'session:*', '1');
INSERT INTO `sys_resource` VALUES ('61', '任务管理', 'menu', '/task', '1', '0/1/', 'task:*', '1');
INSERT INTO `sys_resource` VALUES ('62', '任务新增', 'button', null, '61', '0/1/61/', 'task:create', '1');
INSERT INTO `sys_resource` VALUES ('63', '任务修改', 'button', null, '61', '0/1/61/', 'task:update', '1');
INSERT INTO `sys_resource` VALUES ('64', '任务删除', 'button', null, '61', '0/1/61/', 'task:delete', '1');
INSERT INTO `sys_resource` VALUES ('65', '任务查看', 'button', null, '61', '0/1/61/', 'task:view', '1');
INSERT INTO `sys_resource` VALUES ('66', '人力管理', 'menu', '/profile', '1', '0/1/', 'profile:*', '1');
INSERT INTO `sys_resource` VALUES ('67', '人力新增', 'button', null, '66', '0/1/66/', 'profile:create', '1');
INSERT INTO `sys_resource` VALUES ('68', '人力修改', 'button', null, '66', '0/1/66/', 'profile:update', '1');
INSERT INTO `sys_resource` VALUES ('69', '人力删除', 'button', null, '66', '0/1/66/', 'profile:delete', '1');
INSERT INTO `sys_resource` VALUES ('70', '人力查看', 'button', null, '66', '0/1/66/', 'profile:view', '1');
INSERT INTO `sys_resource` VALUES ('71', '项目评价管理', 'menu', '/projecteval', '1', '0/1/', 'projecteval:*', '1');
INSERT INTO `sys_resource` VALUES ('72', '项目评价新增', 'button', null, '71', '0/1/71/', 'projecteval:create', '1');
INSERT INTO `sys_resource` VALUES ('73', '项目评价修改', 'button', null, '71', '0/1/71/', 'projecteval:update', '1');
INSERT INTO `sys_resource` VALUES ('74', '项目评价删除', 'button', null, '71', '0/1/71/', 'projecteval:delete', '1');
INSERT INTO `sys_resource` VALUES ('75', '项目评价查看', 'button', null, '71', '0/1/71/', 'projecteval:view', '1');
INSERT INTO `sys_resource` VALUES ('76', '人力评价管理', 'menu', '/profileeval', '1', '0/1/', 'profileeval:*', '1');
INSERT INTO `sys_resource` VALUES ('77', '人力评价新增', 'button', null, '76', '0/1/76/', 'profileeval:create', '1');
INSERT INTO `sys_resource` VALUES ('78', '人力评价修改', 'button', null, '76', '0/1/76/', 'profileeval:update', '1');
INSERT INTO `sys_resource` VALUES ('79', '人力评价删除', 'button', null, '76', '0/1/76/', 'profileeval:delete', '1');
INSERT INTO `sys_resource` VALUES ('80', '人力评价查看', 'button', null, '76', '0/1/76/', 'profileeval:view', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `resource_ids` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_role_resource_ids` (`resource_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'admin', '超级管理员', '11,21,31,41,51', '1');
INSERT INTO `sys_role` VALUES ('2', 'normal', '普通员工', '66,68,70,75,80', '1');
INSERT INTO `sys_role` VALUES ('3', 'pm', '项目经理', '61,66,70,71,80', '1');
INSERT INTO `sys_role` VALUES ('4', 'tm', '团队经理', '65,66,70,75,76', '1');
INSERT INTO `sys_role` VALUES ('5', 'rm', '部门经理', '65,66,70,75,76', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `role_ids` varchar(100) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_user_username` (`username`),
  KEY `idx_sys_user_organization_id` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'admin', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '1', '0');
INSERT INTO `sys_user` VALUES ('2', '1', 'B-28709', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '2', '0');
INSERT INTO `sys_user` VALUES ('3', '1', 'B-26050', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '3', '0');
INSERT INTO `sys_user` VALUES ('4', '1', 'B-22341', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '4', '0');
INSERT INTO `sys_user` VALUES ('5', '1', 'B-26026', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '5', '0');
INSERT INTO `sys_user` VALUES ('6', '1', 'B-10097', 'd3c59d25033dbf980d29554025c23a76', '8d78869f470951332959580424d4bf5f', '2', '0');
INSERT INTO `sys_user` VALUES ('7', '1', 'B-10255', 'd3c59d25033dbf980d29554025c23a77', '8d78869f470951332959580424d4bf6f', '2', '0');
INSERT INTO `sys_user` VALUES ('8', '1', 'B-10294', 'd3c59d25033dbf980d29554025c23a78', '8d78869f470951332959580424d4bf7f', '2', '0');
INSERT INTO `sys_user` VALUES ('9', '1', 'B-10364', 'd3c59d25033dbf980d29554025c23a79', '8d78869f470951332959580424d4bf8f', '2', '0');
INSERT INTO `sys_user` VALUES ('10', '1', 'B-10401', 'd3c59d25033dbf980d29554025c23a80', '8d78869f470951332959580424d4bf9f', '2', '0');
INSERT INTO `sys_user` VALUES ('11', '1', 'B-10437', 'd3c59d25033dbf980d29554025c23a81', '8d78869f470951332959580424d4bf10f', '2', '0');
INSERT INTO `sys_user` VALUES ('12', '1', 'B-10612', 'd3c59d25033dbf980d29554025c23a82', '8d78869f470951332959580424d4bf11f', '2', '0');
INSERT INTO `sys_user` VALUES ('13', '1', 'B-10771', 'd3c59d25033dbf980d29554025c23a83', '8d78869f470951332959580424d4bf12f', '2', '0');
INSERT INTO `sys_user` VALUES ('14', '1', 'B-10803', 'd3c59d25033dbf980d29554025c23a84', '8d78869f470951332959580424d4bf13f', '2', '0');
INSERT INTO `sys_user` VALUES ('15', '1', 'B-10987', 'd3c59d25033dbf980d29554025c23a85', '8d78869f470951332959580424d4bf14f', '2', '0');
INSERT INTO `sys_user` VALUES ('16', '1', 'B-11034', 'd3c59d25033dbf980d29554025c23a86', '8d78869f470951332959580424d4bf15f', '2', '0');
INSERT INTO `sys_user` VALUES ('17', '1', 'B-11059', 'd3c59d25033dbf980d29554025c23a87', '8d78869f470951332959580424d4bf16f', '2', '0');
INSERT INTO `sys_user` VALUES ('18', '1', 'B-11382', 'd3c59d25033dbf980d29554025c23a88', '8d78869f470951332959580424d4bf17f', '2', '0');
INSERT INTO `sys_user` VALUES ('19', '1', 'B-12056', 'd3c59d25033dbf980d29554025c23a89', '8d78869f470951332959580424d4bf18f', '2', '0');
INSERT INTO `sys_user` VALUES ('20', '1', 'B-12110', 'd3c59d25033dbf980d29554025c23a90', '8d78869f470951332959580424d4bf19f', '2', '0');
INSERT INTO `sys_user` VALUES ('21', '1', 'B-12122', 'd3c59d25033dbf980d29554025c23a91', '8d78869f470951332959580424d4bf20f', '2', '0');
INSERT INTO `sys_user` VALUES ('22', '1', 'B-12187', 'd3c59d25033dbf980d29554025c23a92', '8d78869f470951332959580424d4bf21f', '2', '0');
INSERT INTO `sys_user` VALUES ('23', '1', 'B-12347', 'd3c59d25033dbf980d29554025c23a93', '8d78869f470951332959580424d4bf22f', '2', '0');
INSERT INTO `sys_user` VALUES ('24', '1', 'B-12479', 'd3c59d25033dbf980d29554025c23a94', '8d78869f470951332959580424d4bf23f', '2', '0');
INSERT INTO `sys_user` VALUES ('25', '1', 'B-12486', 'd3c59d25033dbf980d29554025c23a95', '8d78869f470951332959580424d4bf24f', '2', '0');
INSERT INTO `sys_user` VALUES ('26', '1', 'B-12629', 'd3c59d25033dbf980d29554025c23a96', '8d78869f470951332959580424d4bf25f', '2', '0');
INSERT INTO `sys_user` VALUES ('27', '1', 'B-12737', 'd3c59d25033dbf980d29554025c23a97', '8d78869f470951332959580424d4bf26f', '2', '0');
INSERT INTO `sys_user` VALUES ('28', '1', 'B-12788', 'd3c59d25033dbf980d29554025c23a98', '8d78869f470951332959580424d4bf27f', '2', '0');
INSERT INTO `sys_user` VALUES ('29', '1', 'B-12844', 'd3c59d25033dbf980d29554025c23a99', '8d78869f470951332959580424d4bf28f', '2', '0');
INSERT INTO `sys_user` VALUES ('30', '1', 'B-13086', 'd3c59d25033dbf980d29554025c23a100', '8d78869f470951332959580424d4bf29f', '2', '0');
INSERT INTO `sys_user` VALUES ('31', '1', 'B-13140', 'd3c59d25033dbf980d29554025c23a101', '8d78869f470951332959580424d4bf30f', '2', '0');
INSERT INTO `sys_user` VALUES ('32', '1', 'B-13158', 'd3c59d25033dbf980d29554025c23a102', '8d78869f470951332959580424d4bf31f', '2', '0');
INSERT INTO `sys_user` VALUES ('33', '1', 'B-13367', 'd3c59d25033dbf980d29554025c23a103', '8d78869f470951332959580424d4bf32f', '2', '0');
INSERT INTO `sys_user` VALUES ('34', '1', 'B-13385', 'd3c59d25033dbf980d29554025c23a104', '8d78869f470951332959580424d4bf33f', '2', '0');
INSERT INTO `sys_user` VALUES ('35', '1', 'B-13416', 'd3c59d25033dbf980d29554025c23a105', '8d78869f470951332959580424d4bf34f', '2', '0');
INSERT INTO `sys_user` VALUES ('36', '1', 'B-13454', 'd3c59d25033dbf980d29554025c23a106', '8d78869f470951332959580424d4bf35f', '4', '0');
INSERT INTO `sys_user` VALUES ('37', '1', 'B-13545', 'd3c59d25033dbf980d29554025c23a107', '8d78869f470951332959580424d4bf36f', '4', '0');
INSERT INTO `sys_user` VALUES ('38', '1', 'B-13550', 'd3c59d25033dbf980d29554025c23a108', '8d78869f470951332959580424d4bf37f', '4', '0');
INSERT INTO `sys_user` VALUES ('39', '1', 'B-13585', 'd3c59d25033dbf980d29554025c23a109', '8d78869f470951332959580424d4bf38f', '4', '0');
INSERT INTO `sys_user` VALUES ('40', '1', 'B-13618', 'd3c59d25033dbf980d29554025c23a110', '8d78869f470951332959580424d4bf39f', '4', '0');
SET FOREIGN_KEY_CHECKS=1;
