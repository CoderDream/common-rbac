/*
Navicat SQL Server Data Transfer

Source Server         : mssql
Source Server Version : 100000
Source Host           : 10.100.254.96:1433
Source Database       : BJC_PDRC_RBAC
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 100000
File Encoding         : 65001

Date: 2017-07-24 11:51:37
*/


-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE [dbo].[sys_organization]
GO
CREATE TABLE [dbo].[sys_organization] (
[id] bigint NOT NULL IDENTITY(5,1) ,
[name] nvarchar(100) NULL DEFAULT NULL ,
[parent_id] bigint NULL DEFAULT NULL ,
[parent_ids] nvarchar(100) NULL DEFAULT NULL ,
[available] smallint NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_organization] ON
GO
INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [available]) VALUES (N'1', N'总公司', N'0', N'0/', N'1')
GO
GO
INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [available]) VALUES (N'2', N'分公司1', N'1', N'0/1/', N'1')
GO
GO
INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [available]) VALUES (N'3', N'分公司2', N'1', N'0/1/', N'1')
GO
GO
INSERT INTO [dbo].[sys_organization] ([id], [name], [parent_id], [parent_ids], [available]) VALUES (N'4', N'分公司11', N'2', N'0/1/2/', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_organization] OFF
GO

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE [dbo].[sys_resource]
GO
CREATE TABLE [dbo].[sys_resource] (
[id] bigint NOT NULL IDENTITY(81,1) ,
[name] nvarchar(100) NULL DEFAULT NULL ,
[type] nvarchar(50) NULL DEFAULT NULL ,
[url] nvarchar(200) NULL DEFAULT NULL ,
[parent_id] bigint NULL DEFAULT NULL ,
[parent_ids] nvarchar(100) NULL DEFAULT NULL ,
[permission] nvarchar(100) NULL DEFAULT NULL ,
[available] smallint NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_resource] ON
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'1', N'资源', N'menu', N'', N'0', N'0/', N'', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'11', N'组织机构管理', N'menu', N'/organization', N'1', N'0/1/', N'organization:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'12', N'组织机构新增', N'button', N'', N'11', N'0/1/11/', N'organization:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'13', N'组织机构修改', N'button', N'', N'11', N'0/1/11/', N'organization:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'14', N'组织机构删除', N'button', N'', N'11', N'0/1/11/', N'organization:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'15', N'组织机构查看', N'button', N'', N'11', N'0/1/11/', N'organization:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'21', N'用户管理', N'menu', N'/user', N'1', N'0/1/', N'user:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'22', N'用户新增', N'button', N'', N'21', N'0/1/21/', N'user:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'23', N'用户修改', N'button', N'', N'21', N'0/1/21/', N'user:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'24', N'用户删除', N'button', N'', N'21', N'0/1/21/', N'user:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'25', N'用户查看', N'button', N'', N'21', N'0/1/21/', N'user:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'31', N'资源管理', N'menu', N'/resource', N'1', N'0/1/', N'resource:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'32', N'资源新增', N'button', N'', N'31', N'0/1/31/', N'resource:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'33', N'资源修改', N'button', N'', N'31', N'0/1/31/', N'resource:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'34', N'资源删除', N'button', N'', N'31', N'0/1/31/', N'resource:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'35', N'资源查看', N'button', N'', N'31', N'0/1/31/', N'resource:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'41', N'角色管理', N'menu', N'/role', N'1', N'0/1/', N'role:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'42', N'角色新增', N'button', N'', N'41', N'0/1/41/', N'role:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'43', N'角色修改', N'button', N'', N'41', N'0/1/41/', N'role:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'44', N'角色删除', N'button', N'', N'41', N'0/1/41/', N'role:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'45', N'角色查看', N'button', N'', N'41', N'0/1/41/', N'role:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'51', N'会话管理', N'menu', N'/sessions', N'1', N'0/1/', N'session:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'61', N'任务管理', N'menu', N'/task', N'1', N'0/1/', N'task:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'62', N'任务新增', N'button', null, N'61', N'0/1/61/', N'task:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'63', N'任务修改', N'button', null, N'61', N'0/1/61/', N'task:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'64', N'任务删除', N'button', null, N'61', N'0/1/61/', N'task:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'65', N'任务查看', N'button', null, N'61', N'0/1/61/', N'task:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'66', N'人力管理', N'menu', N'/profile', N'1', N'0/1/', N'profile:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'67', N'人力新增', N'button', null, N'66', N'0/1/66/', N'profile:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'68', N'人力修改', N'button', null, N'66', N'0/1/66/', N'profile:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'69', N'人力删除', N'button', null, N'66', N'0/1/66/', N'profile:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'70', N'人力查看', N'button', null, N'66', N'0/1/66/', N'profile:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'71', N'项目评价管理', N'menu', N'/projecteval', N'1', N'0/1/', N'projecteval:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'72', N'项目评价新增', N'button', null, N'71', N'0/1/71/', N'projecteval:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'73', N'项目评价修改', N'button', null, N'71', N'0/1/71/', N'projecteval:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'74', N'项目评价删除', N'button', null, N'71', N'0/1/71/', N'projecteval:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'75', N'项目评价查看', N'button', null, N'71', N'0/1/71/', N'projecteval:view', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'76', N'人力评价管理', N'menu', N'/profileeval', N'1', N'0/1/', N'profileeval:*', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'77', N'人力评价新增', N'button', null, N'76', N'0/1/76/', N'profileeval:create', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'78', N'人力评价修改', N'button', null, N'76', N'0/1/76/', N'profileeval:update', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'79', N'人力评价删除', N'button', null, N'76', N'0/1/76/', N'profileeval:delete', N'1')
GO
GO
INSERT INTO [dbo].[sys_resource] ([id], [name], [type], [url], [parent_id], [parent_ids], [permission], [available]) VALUES (N'80', N'人力评价查看', N'button', null, N'76', N'0/1/76/', N'profileeval:view', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_resource] OFF
GO

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE [dbo].[sys_role]
GO
CREATE TABLE [dbo].[sys_role] (
[id] bigint NOT NULL IDENTITY(6,1) ,
[role] nvarchar(100) NULL DEFAULT NULL ,
[description] nvarchar(100) NULL DEFAULT NULL ,
[resource_ids] nvarchar(100) NULL DEFAULT NULL ,
[available] smallint NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Records of sys_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role] ON
GO
INSERT INTO [dbo].[sys_role] ([id], [role], [description], [resource_ids], [available]) VALUES (N'1', N'admin', N'超级管理员', N'11,21,31,41,51', N'1')
GO
GO
INSERT INTO [dbo].[sys_role] ([id], [role], [description], [resource_ids], [available]) VALUES (N'2', N'normal', N'普通员工', N'66,68,70,75,80', N'1')
GO
GO
INSERT INTO [dbo].[sys_role] ([id], [role], [description], [resource_ids], [available]) VALUES (N'3', N'pm', N'项目经理', N'61,66,70,71,80', N'1')
GO
GO
INSERT INTO [dbo].[sys_role] ([id], [role], [description], [resource_ids], [available]) VALUES (N'4', N'tm', N'团队经理', N'65,66,70,75,76', N'1')
GO
GO
INSERT INTO [dbo].[sys_role] ([id], [role], [description], [resource_ids], [available]) VALUES (N'5', N'rm', N'部门经理', N'65,66,70,75,76', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_role] OFF
GO

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
[id] bigint NOT NULL IDENTITY(6,1) ,
[organization_id] bigint NULL DEFAULT NULL ,
[username] nvarchar(100) NULL DEFAULT NULL ,
[password] nvarchar(100) NULL DEFAULT NULL ,
[salt] nvarchar(100) NULL DEFAULT NULL ,
[role_ids] nvarchar(100) NULL DEFAULT NULL ,
[locked] smallint NULL DEFAULT ((0)) 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_user]', RESEED, 41)
GO

-- ----------------------------
-- Records of sys_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user] ON
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'1', N'1', N'admin', N'd3c59d25033dbf980d29554025c23a75', N'8d78869f470951332959580424d4bf4f', N'1', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'2', N'1', N'B-28709', N'd3c59d25033dbf980d29554025c23a75', N'8d78869f470951332959580424d4bf4f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'3', N'1', N'B-26050', N'd3c59d25033dbf980d29554025c23a75', N'8d78869f470951332959580424d4bf4f', N'3', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'4', N'1', N'B-22341', N'd3c59d25033dbf980d29554025c23a75', N'8d78869f470951332959580424d4bf4f', N'4', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'5', N'1', N'B-26026', N'd3c59d25033dbf980d29554025c23a75', N'8d78869f470951332959580424d4bf4f', N'5', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'7', N'1', N'B-10097', N'd3c59d25033dbf980d29554025c23a76', N'8d78869f470951332959580424d4bf5f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'8', N'1', N'B-10255', N'd3c59d25033dbf980d29554025c23a77', N'8d78869f470951332959580424d4bf6f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'9', N'1', N'B-10294', N'd3c59d25033dbf980d29554025c23a78', N'8d78869f470951332959580424d4bf7f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'10', N'1', N'B-10364', N'd3c59d25033dbf980d29554025c23a79', N'8d78869f470951332959580424d4bf8f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'11', N'1', N'B-10401', N'd3c59d25033dbf980d29554025c23a80', N'8d78869f470951332959580424d4bf9f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'12', N'1', N'B-10437', N'd3c59d25033dbf980d29554025c23a81', N'8d78869f470951332959580424d4bf10f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'13', N'1', N'B-10612', N'd3c59d25033dbf980d29554025c23a82', N'8d78869f470951332959580424d4bf11f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'14', N'1', N'B-10771', N'd3c59d25033dbf980d29554025c23a83', N'8d78869f470951332959580424d4bf12f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'15', N'1', N'B-10803', N'd3c59d25033dbf980d29554025c23a84', N'8d78869f470951332959580424d4bf13f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'16', N'1', N'B-10987', N'd3c59d25033dbf980d29554025c23a85', N'8d78869f470951332959580424d4bf14f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'17', N'1', N'B-11034', N'd3c59d25033dbf980d29554025c23a86', N'8d78869f470951332959580424d4bf15f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'18', N'1', N'B-11059', N'd3c59d25033dbf980d29554025c23a87', N'8d78869f470951332959580424d4bf16f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'19', N'1', N'B-11382', N'd3c59d25033dbf980d29554025c23a88', N'8d78869f470951332959580424d4bf17f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'20', N'1', N'B-12056', N'd3c59d25033dbf980d29554025c23a89', N'8d78869f470951332959580424d4bf18f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'21', N'1', N'B-12110', N'd3c59d25033dbf980d29554025c23a90', N'8d78869f470951332959580424d4bf19f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'22', N'1', N'B-12122', N'd3c59d25033dbf980d29554025c23a91', N'8d78869f470951332959580424d4bf20f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'23', N'1', N'B-12187', N'd3c59d25033dbf980d29554025c23a92', N'8d78869f470951332959580424d4bf21f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'24', N'1', N'B-12347', N'd3c59d25033dbf980d29554025c23a93', N'8d78869f470951332959580424d4bf22f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'25', N'1', N'B-12479', N'd3c59d25033dbf980d29554025c23a94', N'8d78869f470951332959580424d4bf23f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'26', N'1', N'B-12486', N'd3c59d25033dbf980d29554025c23a95', N'8d78869f470951332959580424d4bf24f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'27', N'1', N'B-12629', N'd3c59d25033dbf980d29554025c23a96', N'8d78869f470951332959580424d4bf25f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'28', N'1', N'B-12737', N'd3c59d25033dbf980d29554025c23a97', N'8d78869f470951332959580424d4bf26f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'29', N'1', N'B-12788', N'd3c59d25033dbf980d29554025c23a98', N'8d78869f470951332959580424d4bf27f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'30', N'1', N'B-12844', N'd3c59d25033dbf980d29554025c23a99', N'8d78869f470951332959580424d4bf28f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'31', N'1', N'B-13086', N'd3c59d25033dbf980d29554025c23a100', N'8d78869f470951332959580424d4bf29f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'32', N'1', N'B-13140', N'd3c59d25033dbf980d29554025c23a101', N'8d78869f470951332959580424d4bf30f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'33', N'1', N'B-13158', N'd3c59d25033dbf980d29554025c23a102', N'8d78869f470951332959580424d4bf31f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'34', N'1', N'B-13367', N'd3c59d25033dbf980d29554025c23a103', N'8d78869f470951332959580424d4bf32f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'35', N'1', N'B-13385', N'd3c59d25033dbf980d29554025c23a104', N'8d78869f470951332959580424d4bf33f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'36', N'1', N'B-13416', N'd3c59d25033dbf980d29554025c23a105', N'8d78869f470951332959580424d4bf34f', N'2', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'37', N'1', N'B-13454', N'd3c59d25033dbf980d29554025c23a106', N'8d78869f470951332959580424d4bf35f', N'4', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'38', N'1', N'B-13545', N'd3c59d25033dbf980d29554025c23a107', N'8d78869f470951332959580424d4bf36f', N'4', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'39', N'1', N'B-13550', N'd3c59d25033dbf980d29554025c23a108', N'8d78869f470951332959580424d4bf37f', N'4', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'40', N'1', N'B-13585', N'd3c59d25033dbf980d29554025c23a109', N'8d78869f470951332959580424d4bf38f', N'4', N'0')
GO
GO
INSERT INTO [dbo].[sys_user] ([id], [organization_id], [username], [password], [salt], [role_ids], [locked]) VALUES (N'41', N'1', N'B-13618', N'd3c59d25033dbf980d29554025c23a110', N'8d78869f470951332959580424d4bf39f', N'4', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_user] OFF
GO

-- ----------------------------
-- Indexes structure for table sys_organization
-- ----------------------------
CREATE INDEX [idx_sys_organization_parent_id] ON [dbo].[sys_organization]
([parent_id] ASC) 
GO
CREATE INDEX [idx_sys_organization_parent_ids] ON [dbo].[sys_organization]
([parent_ids] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table sys_organization
-- ----------------------------
ALTER TABLE [dbo].[sys_organization] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_resource
-- ----------------------------
CREATE INDEX [idx_sys_resource_parent_id] ON [dbo].[sys_resource]
([parent_id] ASC) 
GO
CREATE INDEX [idx_sys_resource_parent_ids] ON [dbo].[sys_resource]
([parent_ids] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table sys_resource
-- ----------------------------
ALTER TABLE [dbo].[sys_resource] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------
CREATE INDEX [idx_sys_role_resource_ids] ON [dbo].[sys_role]
([resource_ids] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------
CREATE INDEX [idx_sys_user_organization_id] ON [dbo].[sys_user]
([organization_id] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD UNIQUE ([username] ASC)
GO
