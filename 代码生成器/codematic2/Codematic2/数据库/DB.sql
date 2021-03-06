/****** Object:  StoredProcedure [dbo].[sp_Accounts_AddPermissionToRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_AddPermissionToRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_AddPermissionToRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_AddUserToRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_AddUserToRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_AddUserToRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_ClearPermissionsFromRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_ClearPermissionsFromRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_ClearPermissionsFromRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreatePermission]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreatePermission]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_CreatePermission]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreatePermissionCategory]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreatePermissionCategory]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_CreatePermissionCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreateRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreateRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_CreateRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreateUser]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreateUser]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeletePermission]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeletePermission]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_DeletePermission]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeletePermissionCategory]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeletePermissionCategory]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_DeletePermissionCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeleteRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeleteRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeleteUser]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeleteUser]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetAllRoles]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetAllRoles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetEffectivePermissionList]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetEffectivePermissionList]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetEffectivePermissionList]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetEffectivePermissionListID]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetEffectivePermissionListID]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetEffectivePermissionListID]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetNoPermissionList]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetNoPermissionList]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetNoPermissionList]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionCategories]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionCategories]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetPermissionCategories]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionCategoryDetails]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionCategoryDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetPermissionCategoryDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionDetails]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetPermissionDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionList]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionList]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetPermissionList]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionsInCategory]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionsInCategory]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetPermissionsInCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetRoleDetails]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetRoleDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetRoleDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUserDetails]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUserDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUserDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUserDetailsByUserName]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUserDetailsByUserName]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUserDetailsByUserName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUserRoles]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUserRoles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUserRoles]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsers]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsers]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUsers]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsersByDepart]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsersByDepart]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUsersByDepart]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsersByDepartUserType]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsersByDepartUserType]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUsersByDepartUserType]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsersByType]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsersByType]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_GetUsersByType]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_RemovePermissionFromRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_RemovePermissionFromRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_RemovePermissionFromRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_RemoveUserFromRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_RemoveUserFromRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_RemoveUserFromRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_SetPassword]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_SetPassword]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_TestPassword]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_TestPassword]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_TestPassword]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_UpdatePermission]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_UpdatePermission]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_UpdatePermission]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_UpdateRole]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_UpdateRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_UpdateRole]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_UpdateUser]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_UpdateUser]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_ValidateLogin]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_ValidateLogin]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_Accounts_ValidateLogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRecordByPage]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_GetRecordByPage]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_GetRecordByPage]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRecordByPageOrder]    Script Date: 05/19/2011 16:34:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_GetRecordByPageOrder]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE [sp_GetRecordByPageOrder]
GO
/****** Object:  Table [dbo].[Accounts_PermissionCategories]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_PermissionCategories]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Accounts_PermissionCategories]
GO
/****** Object:  Table [dbo].[Accounts_Permissions]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_Permissions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Accounts_Permissions]
GO
/****** Object:  Table [dbo].[Accounts_RolePermissions]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_RolePermissions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Accounts_RolePermissions]
GO
/****** Object:  Table [dbo].[Accounts_Roles]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_Roles]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Accounts_Roles]
GO
/****** Object:  Table [dbo].[Accounts_UserRoles]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_UserRoles]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Accounts_UserRoles]
GO
/****** Object:  Table [dbo].[Accounts_Users]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_Users]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Accounts_Users]
GO
/****** Object:  Table [dbo].[S_Log]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[S_Log]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [S_Log]
GO
/****** Object:  Table [dbo].[S_Tree]    Script Date: 05/19/2011 16:34:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[S_Tree]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [S_Tree]
GO
/****** Object:  Table [dbo].[S_Tree]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[S_Tree]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [S_Tree](
	[NodeID] [int] NOT NULL,
	[Text] [varchar](100) NOT NULL,
	[ParentID] [int] NOT NULL,
	[ParentPath] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[OrderID] [int] NULL,
	[comment] [varchar](50) NULL,
	[Url] [varchar](100) NULL,
	[PermissionID] [int] NULL,
	[ImageUrl] [varchar](100) NULL,
	[ModuleID] [int] NULL,
	[KeShiDM] [int] NULL,
	[KeshiPublic] [varchar](10) NULL,
 CONSTRAINT [PK_S_Tree] PRIMARY KEY NONCLUSTERED 
(
	[NodeID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (106, CONVERT(TEXT, N'新闻类别'), 0, NULL, CONVERT(TEXT, N'0.1'), 1, NULL, NULL, 60, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (107, CONVERT(TEXT, N'增加'), 106, NULL, CONVERT(TEXT, N'106.1'), 1, NULL, CONVERT(TEXT, N'NewsClassManage/add.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (108, CONVERT(TEXT, N'列表'), 106, NULL, CONVERT(TEXT, N'106.2'), 2, NULL, CONVERT(TEXT, N'NewsClassManage/index.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (12, CONVERT(TEXT, N'系统管理'), 0, CONVERT(TEXT, N'0'), CONVERT(TEXT, N'0.28'), 28, NULL, NULL, 6, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), -1, 17, CONVERT(TEXT, N'false'))
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (109, CONVERT(TEXT, N'查询'), 106, NULL, CONVERT(TEXT, N'106.3'), 3, NULL, CONVERT(TEXT, N'NewsClassManage/search.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (110, CONVERT(TEXT, N'新闻管理'), 0, NULL, CONVERT(TEXT, N'0.2'), 2, NULL, NULL, 61, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (15, CONVERT(TEXT, N'帐户管理'), 12, CONVERT(TEXT, N'0.12'), CONVERT(TEXT, N'12.1'), 1, CONVERT(TEXT, N'帐户管理'), NULL, 1, CONVERT(TEXT, N'Images/MenuImg/ger16.gif'), -1, 17, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (16, CONVERT(TEXT, N'菜单管理'), 12, NULL, CONVERT(TEXT, N'12.2'), 2, CONVERT(TEXT, N'菜单树的管理'), CONVERT(TEXT, N'SysManage/treelist.aspx'), 2, CONVERT(TEXT, N'Images/MenuImg/zhut16.gif'), -1, 17, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (111, CONVERT(TEXT, N'增加'), 110, NULL, CONVERT(TEXT, N'110.1'), 1, NULL, CONVERT(TEXT, N'NewsManage/add.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (38, CONVERT(TEXT, N'个人信息'), 0, NULL, CONVERT(TEXT, N'0.27'), 27, NULL, NULL, -1, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), -1, -1, CONVERT(TEXT, N'false'))
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (112, CONVERT(TEXT, N'列表'), 110, NULL, CONVERT(TEXT, N'110.2'), 2, NULL, CONVERT(TEXT, N'NewsManage/index.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (21, CONVERT(TEXT, N'用户管理'), 15, NULL, CONVERT(TEXT, N'15.1'), 1, NULL, CONVERT(TEXT, N'Accounts\Admin\UserAdmin.aspx'), 3, CONVERT(TEXT, N'Images/MenuImg/user16.gif'), -1, 17, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (22, CONVERT(TEXT, N'角色管理'), 15, NULL, CONVERT(TEXT, N'15.2'), 2, NULL, CONVERT(TEXT, N'Accounts\Admin\RoleAdmin.aspx'), 4, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), -1, 17, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (23, CONVERT(TEXT, N'权限管理'), 15, NULL, CONVERT(TEXT, N'15.3'), 3, NULL, CONVERT(TEXT, N'Accounts/Admin/PermissionAdmin.aspx'), 4, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), -1, 17, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (114, CONVERT(TEXT, N'品牌管理'), 0, NULL, CONVERT(TEXT, N'0.5'), 5, NULL, NULL, 62, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (115, CONVERT(TEXT, N'商品类别管理'), 0, NULL, CONVERT(TEXT, N'0.6'), 6, NULL, NULL, 63, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (116, CONVERT(TEXT, N'商品管理'), 0, NULL, CONVERT(TEXT, N'0.7'), 7, NULL, NULL, 64, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (33, CONVERT(TEXT, N'查看详细'), 38, NULL, CONVERT(TEXT, N'38.1'), 1, NULL, CONVERT(TEXT, N'Accounts/userinfo.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), -1, -1, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (34, CONVERT(TEXT, N'修改资料'), 38, NULL, CONVERT(TEXT, N'38.3'), 3, NULL, CONVERT(TEXT, N'Accounts/usermodify.ASPX'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), -1, -1, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (35, CONVERT(TEXT, N'修改密码'), 38, NULL, CONVERT(TEXT, N'38.2'), 2, NULL, CONVERT(TEXT, N'Accounts/userpass.ASPX'), -1, CONVERT(TEXT, N'Images/MenuImg/quanx16.gif'), -1, -1, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (117, CONVERT(TEXT, N'增加品牌'), 114, NULL, CONVERT(TEXT, N'114.1'), 1, NULL, CONVERT(TEXT, N'PBrand/Add.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (118, CONVERT(TEXT, N'品牌列表'), 114, NULL, CONVERT(TEXT, N'114.2'), 2, NULL, CONVERT(TEXT, N'PBrand/index.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (119, CONVERT(TEXT, N'增加类别'), 115, NULL, CONVERT(TEXT, N'115.1'), 1, NULL, CONVERT(TEXT, N'PCategory/add.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (120, CONVERT(TEXT, N'类别列表'), 115, NULL, CONVERT(TEXT, N'115.2'), 2, NULL, CONVERT(TEXT, N'PCategory/index.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (121, CONVERT(TEXT, N'新增商品'), 116, NULL, CONVERT(TEXT, N'116.1'), 1, NULL, CONVERT(TEXT, N'Product/add.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (122, CONVERT(TEXT, N'商品列表'), 116, NULL, CONVERT(TEXT, N'116.2'), 2, NULL, CONVERT(TEXT, N'Product/index.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (124, CONVERT(TEXT, N'新闻发布'), 110, NULL, CONVERT(TEXT, N'110.4'), 4, NULL, CONVERT(TEXT, N'NewsManage/Release.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (125, CONVERT(TEXT, N'其他技术'), 0, NULL, CONVERT(TEXT, N'0.12'), 12, CONVERT(TEXT, N''), CONVERT(TEXT, N''), 68, CONVERT(TEXT, N'Images/MenuImg/Programs16.gif'), NULL, NULL, NULL)
INSERT [S_Tree] ([NodeID], [Text], [ParentID], [ParentPath], [Location], [OrderID], [comment], [Url], [PermissionID], [ImageUrl], [ModuleID], [KeShiDM], [KeshiPublic]) VALUES (126, CONVERT(TEXT, N'无刷新弹窗'), 125, NULL, CONVERT(TEXT, N'125.2'), 2, CONVERT(TEXT, N''), CONVERT(TEXT, N'../Greybox.aspx'), -1, CONVERT(TEXT, N'Images/MenuImg/folder16.gif'), NULL, NULL, NULL)
/****** Object:  Table [dbo].[S_Log]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[S_Log]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [S_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[datetime] [datetime] NOT NULL,
	[loginfo] [varchar](500) NULL,
	[Particular] [varchar](1000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Accounts_Users]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_Users]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Accounts_Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [binary](20) NOT NULL,
	[TrueName] [varchar](50) NULL,
	[Sex] [char](2) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[EmployeeID] [int] NULL,
	[DepartmentID] [varchar](15) NULL,
	[Activity] [bit] NULL,
	[UserType] [char](2) NULL,
	[Style] [int] NULL,
 CONSTRAINT [PK_Accounts_Users] PRIMARY KEY NONCLUSTERED 
(
	[UserName] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Accounts_Users] ON
INSERT [Accounts_Users] ([UserID], [UserName], [Password], [TrueName], [Sex], [Phone], [Email], [EmployeeID], [DepartmentID], [Activity], [UserType], [Style]) VALUES (1, CONVERT(TEXT, N'admin'), 0xE91FE173F59B063D620A934CE1A010F2B114C1F3, CONVERT(TEXT, N'Maticsoft'), CONVERT(TEXT, N'男'), CONVERT(TEXT, N'123456'), CONVERT(TEXT, N'admin@herosoft.com'), 0, CONVERT(TEXT, N'-1'), 1, CONVERT(TEXT, N'AA'), 1)
INSERT [Accounts_Users] ([UserID], [UserName], [Password], [TrueName], [Sex], [Phone], [Email], [EmployeeID], [DepartmentID], [Activity], [UserType], [Style]) VALUES (17, CONVERT(TEXT, N'user'), 0xE91FE173F59B063D620A934CE1A010F2B114C1F3, CONVERT(TEXT, N'普通用户'), CONVERT(TEXT, N'男'), CONVERT(TEXT, N'1232456'), CONVERT(TEXT, N'user@maticsoft.com'), 0, CONVERT(TEXT, N'-1'), 1, CONVERT(TEXT, N'AA'), 1)
SET IDENTITY_INSERT [Accounts_Users] OFF
/****** Object:  Table [dbo].[Accounts_UserRoles]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_UserRoles]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Accounts_UserRoles](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Accounts_UserRoles] PRIMARY KEY NONCLUSTERED 
(
	[UserID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [Accounts_UserRoles] ([UserID], [RoleID]) VALUES (1, 1)
INSERT [Accounts_UserRoles] ([UserID], [RoleID]) VALUES (17, 7)
/****** Object:  Table [dbo].[Accounts_Roles]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_Roles]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Accounts_Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Accounts_Roles] ON
INSERT [Accounts_Roles] ([RoleID], [Description]) VALUES (1, CONVERT(TEXT, N'系统管理员'))
INSERT [Accounts_Roles] ([RoleID], [Description]) VALUES (5, CONVERT(TEXT, N'普通用户'))
INSERT [Accounts_Roles] ([RoleID], [Description]) VALUES (6, CONVERT(TEXT, N'新闻编辑'))
INSERT [Accounts_Roles] ([RoleID], [Description]) VALUES (7, CONVERT(TEXT, N'商品编辑'))
SET IDENTITY_INSERT [Accounts_Roles] OFF
/****** Object:  Table [dbo].[Accounts_RolePermissions]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_RolePermissions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Accounts_RolePermissions](
	[RoleID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL
) ON [PRIMARY]
END
GO
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 1)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 2)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 3)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 4)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 5)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 6)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 61)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 54)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 53)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 64)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 63)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 52)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 51)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 57)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 56)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 55)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 60)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 67)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 66)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 65)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 68)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 59)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 58)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 63)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 64)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 67)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 73)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 69)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 70)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 71)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 72)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 66)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (7, 65)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 73)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 69)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 71)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 70)
INSERT [Accounts_RolePermissions] ([RoleID], [PermissionID]) VALUES (1, 72)
/****** Object:  Table [dbo].[Accounts_Permissions]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_Permissions]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Accounts_Permissions](
	[PermissionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[CategoryID] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Accounts_Permissions] ON
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (1, CONVERT(TEXT, N'帐户管理'), 1)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (2, CONVERT(TEXT, N'菜单管理'), 1)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (3, CONVERT(TEXT, N'用户管理'), 1)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (4, CONVERT(TEXT, N'权限角色管理'), 1)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (5, CONVERT(TEXT, N'系统日志管理'), 1)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (6, CONVERT(TEXT, N'系统管理菜单显示'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (51, CONVERT(TEXT, N'新闻类别增加'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (52, CONVERT(TEXT, N'新闻类别修改'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (53, CONVERT(TEXT, N'新闻类别删除'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (54, CONVERT(TEXT, N'新闻类别查询'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (55, CONVERT(TEXT, N'新闻增加'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (56, CONVERT(TEXT, N'新闻修改'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (57, CONVERT(TEXT, N'新闻删除'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (58, CONVERT(TEXT, N'新闻查询'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (59, CONVERT(TEXT, N'图片管理'), 7)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (60, CONVERT(TEXT, N'新闻类别'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (61, CONVERT(TEXT, N'新闻管理'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (62, CONVERT(TEXT, N'品牌管理'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (63, CONVERT(TEXT, N'类别管理'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (64, CONVERT(TEXT, N'商品管理'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (65, CONVERT(TEXT, N'增加商品'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (66, CONVERT(TEXT, N'修改商品'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (67, CONVERT(TEXT, N'删除商品'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (68, CONVERT(TEXT, N'其他技术代码'), 3)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (69, CONVERT(TEXT, N'商品类别编辑'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (70, CONVERT(TEXT, N'商品类别删除'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (71, CONVERT(TEXT, N'商品类别查询'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (72, CONVERT(TEXT, N'商品类别增加'), 8)
INSERT [Accounts_Permissions] ([PermissionID], [Description], [CategoryID]) VALUES (73, CONVERT(TEXT, N'商品查询'), 8)
SET IDENTITY_INSERT [Accounts_Permissions] OFF
/****** Object:  Table [dbo].[Accounts_PermissionCategories]    Script Date: 05/19/2011 16:34:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Accounts_PermissionCategories]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [Accounts_PermissionCategories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Accounts_PermissionCategories] ON
INSERT [Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (1, CONVERT(TEXT, N'系统管理'))
INSERT [Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (7, CONVERT(TEXT, N'新闻管理'))
INSERT [Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (3, CONVERT(TEXT, N'主菜单显示控制'))
INSERT [Accounts_PermissionCategories] ([CategoryID], [Description]) VALUES (8, CONVERT(TEXT, N'商品管理'))
SET IDENTITY_INSERT [Accounts_PermissionCategories] OFF
/****** Object:  StoredProcedure [dbo].[sp_GetRecordByPageOrder]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_GetRecordByPageOrder]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [sp_GetRecordByPageOrder]
 
 @tblName varchar(255),   -- 表名 
 @fldName varchar(255),   -- 显示字段名 
 @OrderfldName varchar(255),  -- 排序字段名 
 @StatfldName varchar(255),  -- 统计字段名 
 @PageSize int = 10,   -- 页尺寸 
 @PageIndex int = 1,   -- 页码 
 @IsReCount bit = 0,   -- 返回记录总数, 非 0 值则返回 
 @OrderType bit = 0,   -- 设置排序类型, 非 0 值则降序 
 @strWhere varchar(1000) = ''''  -- 查询条件 (注意: 不要加 where) 
AS 

 declare @strSQL varchar(6000)  -- 主语句 
 declare @strTmp varchar(100)   -- 临时变量 
 declare @strOrder varchar(400)  -- 排序类型 

if @OrderType != 0 
 begin 
  set @strTmp = ''<(select min'' 
  set @strOrder = '' order by ['' + @OrderfldName +''] desc'' 
 end 
else 
 begin 
  set @strTmp = ''>(select max'' 
  set @strOrder = '' order by ['' + @OrderfldName +''] asc'' 
 end 

set @strSQL = ''select top '' + str(@PageSize) + '' '' + @fldName + '' from ['' 
 + @tblName + ''] where ['' + @OrderfldName + '']'' + @strTmp + ''(['' 
 + @OrderfldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' ['' 
 + @OrderfldName + ''] from ['' + @tblName + '']'' + @strOrder + '') as tblTmp)'' 
 + @strOrder 

if @strWhere != '''' 
 set @strSQL = ''select top '' + str(@PageSize) + '' '' + @fldName + '' from ['' 
 + @tblName + ''] where ['' + @OrderfldName + '']'' + @strTmp + ''(['' 
 + @OrderfldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' ['' 
 + @OrderfldName + ''] from ['' + @tblName + ''] where '' + @strWhere + '' '' 
 + @strOrder + '') as tblTmp) and '' + @strWhere + '' '' + @strOrder 

if @PageIndex = 1 
 begin 
  set @strTmp = '''' 
  if @strWhere != '''' 
  set @strTmp = '' where '' + @strWhere 

  set @strSQL = ''select top '' + str(@PageSize) + '' '' + @fldName + '' from ['' 
  + @tblName + '']'' + @strTmp + '' '' + @strOrder 
 end 


if @IsReCount != 0 
	set @strSQL = @strSQL+'' select count(1) as Total from ['' + @tblName + '']''

if @strWhere!=''''
	set @strSQL = @strSQL+'' where '' + @strWhere
exec (@strSQL) 


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRecordByPage]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_GetRecordByPage]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [sp_GetRecordByPage]
    @tblName      varchar(255),       -- 表名
    @fldName      varchar(255),       -- 字段名
    @PageSize     int = 10,           -- 页尺寸
    @PageIndex    int = 1,            -- 页码
    @IsReCount    bit = 0,            -- 返回记录总数, 非 0 值则返回
    @OrderType    bit = 0,            -- 设置排序类型, 非 0 值则降序
    @strWhere     varchar(1000) = ''''  -- 查询条件 (注意: 不要加 where)
AS

declare @strSQL   varchar(6000)       -- 主语句
declare @strTmp   varchar(100)        -- 临时变量
declare @strOrder varchar(400)        -- 排序类型

if @OrderType != 0
begin
    set @strTmp = ''<(select min''
    set @strOrder = '' order by ['' + @fldName +''] desc''
end
else
begin
    set @strTmp = ''>(select max''
    set @strOrder = '' order by ['' + @fldName +''] asc''
end

set @strSQL = ''select top '' + str(@PageSize) + '' * from [''
    + @tblName + ''] where ['' + @fldName + '']'' + @strTmp + ''([''
    + @fldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' [''
    + @fldName + ''] from ['' + @tblName + '']'' + @strOrder + '') as tblTmp)''
    + @strOrder

if @strWhere != ''''
    set @strSQL = ''select top '' + str(@PageSize) + '' * from [''
        + @tblName + ''] where ['' + @fldName + '']'' + @strTmp + ''([''
        + @fldName + '']) from (select top '' + str((@PageIndex-1)*@PageSize) + '' [''
        + @fldName + ''] from ['' + @tblName + ''] where '' + @strWhere + '' ''
        + @strOrder + '') as tblTmp) and '' + @strWhere + '' '' + @strOrder

if @PageIndex = 1
begin
    set @strTmp =''''
    if @strWhere != ''''
        set @strTmp = '' where '' + @strWhere

    set @strSQL = ''select top '' + str(@PageSize) + '' * from [''
        + @tblName + '']'' + @strTmp + '' '' + @strOrder
end

if @IsReCount != 0
    set @strSQL = ''select count(*) as Total from ['' + @tblName + '']''+'' where '' + @strWhere

exec (@strSQL)


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_ValidateLogin]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_ValidateLogin]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [sp_Accounts_ValidateLogin]
@UserName varchar(50),
@EncryptedPassword binary(20)
AS
   DECLARE @UserID int

   SELECT @UserID = UserID FROM Accounts_Users WHERE UserName = @UserName
	AND Password = @EncryptedPassword
   
   IF @UserID = NULL   
	RETURN -1
   ELSE
	RETURN @UserID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_UpdateUser]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_UpdateUser]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_UpdateUser]
@UserName varchar(50),
@Password binary(20),
@TrueName varchar(50),
@Sex char(2),
@Phone varchar(20),
@Email varchar(100),
@EmployeeID int,
@DepartmentID varchar(15),
@Activity bit,
@UserType char(2),
@UserID int,
@Style int
AS
	UPDATE Accounts_Users SET
		UserName = @UserName,
		Password = @Password,
		TrueName = @TrueName,
		Sex = @Sex,
	Phone = @Phone,
		Email = @Email,
		EmployeeID = @EmployeeID,
		DepartmentID = @DepartmentID,
		Activity = @Activity,
		UserType = @UserType,
Style=@Style 
	WHERE UserID = @UserID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_UpdateRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_UpdateRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_UpdateRole]
@RoleID int,
@Description varchar(50)
AS
	UPDATE Accounts_Roles SET Description = @Description WHERE RoleID = @RoleID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_UpdatePermission]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_UpdatePermission]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [sp_Accounts_UpdatePermission]
@PermissionID int,
@Description varchar(50)
AS
	UPDATE Accounts_Permissions SET Description = @Description WHERE PermissionID = @PermissionID


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_TestPassword]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_TestPassword]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_TestPassword]
@UserID int,
@EncryptedPassword binary(20)
AS
     DECLARE @TempID int
     SELECT @TempID = UserID FROM Accounts_Users WHERE UserID = @UserID AND
	Password = @EncryptedPassword

     IF @TempID IS NULL
	RETURN 0
     ELSE
	RETURN 1






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_SetPassword]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_SetPassword]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [sp_Accounts_SetPassword]
@UserName varchar(50),
@EncryptedPassword binary(20)
AS

UPDATE Accounts_Users SET
Password = @EncryptedPassword
WHERE UserName = @UserName
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_RemoveUserFromRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_RemoveUserFromRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_RemoveUserFromRole]
@UserID int,
@RoleID int
AS
	DELETE Accounts_UserRoles WHERE UserID = @UserID AND RoleID = @RoleID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_RemovePermissionFromRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_RemovePermissionFromRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_RemovePermissionFromRole]
@RoleID int,
@PermissionID int
AS
	DELETE Accounts_RolePermissions WHERE RoleID = @RoleID and PermissionID = @PermissionID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsersByType]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsersByType]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [sp_Accounts_GetUsersByType]
@UserType varchar(2),
@key varchar(50)
AS

SELECT * FROM Accounts_Users where UserType = ''''+@UserType+'''' and (UserName like ''%''+@key+''%'' or TrueName like ''%''+@key+''%'') order by UserID




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsersByDepartUserType]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsersByDepartUserType]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [sp_Accounts_GetUsersByDepartUserType]
@DepartmentID varchar(50),
@UserType varchar(2)
AS

SELECT * FROM Accounts_Users where DepartmentID = ''''+@DepartmentID+'''' and UserType = ''''+@UserType+'''' order by UserID


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsersByDepart]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsersByDepart]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [sp_Accounts_GetUsersByDepart]
@DepartmentID varchar(50)
AS

SELECT * FROM Accounts_Users where DepartmentID = ''''+@DepartmentID+'''' order by UserID

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUsers]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUsers]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE PROCEDURE [sp_Accounts_GetUsers]
@key varchar(50)
AS

SELECT * FROM Accounts_Users where TrueName like ''%''+@key+''%'' order by UserID


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUserRoles]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUserRoles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetUserRoles]
@UserID int
AS
	SELECT ur.RoleID, r.Description FROM Accounts_UserRoles ur
		INNER JOIN Accounts_Roles r ON ur.RoleID = r.RoleID  WHERE ur.UserID = @UserID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUserDetailsByUserName]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUserDetailsByUserName]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetUserDetailsByUserName]
@UserName varchar(50)
AS
	SELECT * FROM Accounts_Users WHERE UserName = @UserName






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetUserDetails]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetUserDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetUserDetails]
@UserID int
AS
	SELECT * FROM Accounts_Users WHERE UserID = @UserID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetRoleDetails]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetRoleDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetRoleDetails]
@RoleID int
AS
	SELECT RoleID, Description FROM Accounts_Roles WHERE RoleID = @RoleID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionsInCategory]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionsInCategory]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [sp_Accounts_GetPermissionsInCategory]
@CategoryID int
AS
	SELECT * FROM Accounts_Permissions where CategoryID=@CategoryID ORDER BY Description


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionList]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionList]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetPermissionList]
@RoleID int = NULL
AS
	IF @RoleID IS NULL
		SELECT PermissionID, Description, CategoryID FROM Accounts_Permissions ORDER BY Description
	ELSE
		SELECT ap.PermissionID, ap.Description, ap.CategoryID FROM Accounts_Permissions ap INNER JOIN
		Accounts_RolePermissions apr ON ap.PermissionID = apr.PermissionID WHERE
		apr.RoleID = @RoleID ORDER BY ap.Description






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionDetails]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [sp_Accounts_GetPermissionDetails]
@PermissionID int
AS
	SELECT * FROM Accounts_Permissions WHERE PermissionID = @PermissionID







' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionCategoryDetails]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionCategoryDetails]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetPermissionCategoryDetails]
@CategoryID int
AS
	SELECT CategoryID, Description FROM Accounts_PermissionCategories WHERE CategoryID = @CategoryID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetPermissionCategories]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetPermissionCategories]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [sp_Accounts_GetPermissionCategories]
AS
	SELECT * FROM Accounts_PermissionCategories





' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetNoPermissionList]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetNoPermissionList]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE PROCEDURE [sp_Accounts_GetNoPermissionList]
@RoleID int = NULL
AS
	IF @RoleID IS NULL
		SELECT PermissionID, Description, CategoryID FROM Accounts_Permissions ORDER BY Description
	ELSE
		SELECT PermissionID, Description, CategoryID 
		FROM Accounts_Permissions
		where PermissionID not in(select PermissionID from Accounts_RolePermissions WHERE RoleID = @RoleID )
		ORDER BY Description




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetEffectivePermissionListID]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetEffectivePermissionListID]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetEffectivePermissionListID]
@UserID int
AS
   SELECT DISTINCT Accounts_Permissions.PermissionID FROM Accounts_RolePermissions
	 inner join Accounts_Permissions on 
	Accounts_RolePermissions.PermissionID=Accounts_Permissions.PermissionID WHERE RoleID IN
	(SELECT RoleID FROM Accounts_UserRoles WHERE UserID = @UserID)


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetEffectivePermissionList]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetEffectivePermissionList]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetEffectivePermissionList]
@UserID int
AS
   SELECT DISTINCT Accounts_Permissions.Description FROM Accounts_RolePermissions
	 inner join Accounts_Permissions on 
	Accounts_RolePermissions.PermissionID=Accounts_Permissions.PermissionID WHERE RoleID IN
	(SELECT RoleID FROM Accounts_UserRoles WHERE UserID = @UserID)




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_GetAllRoles]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_GetAllRoles]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_GetAllRoles]
AS
	SELECT RoleID, Description FROM Accounts_Roles ORDER BY Description ASC






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeleteUser]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeleteUser]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'





CREATE PROCEDURE [sp_Accounts_DeleteUser]
@UserID int
AS
     DELETE Accounts_UserRoles WHERE UserId = @UserId
     DELETE ACcounts_Users WHERE UserId = @UserId





' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeleteRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeleteRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_DeleteRole]
@RoleID int
AS
	BEGIN TRANSACTION
		DELETE Accounts_RolePermissions WHERE RoleID = @RoleID
		DELETE Accounts_UserRoles WHERE RoleID = @RoleID
		DELETE Accounts_Roles WHERE RoleID = @RoleID
	COMMIT TRANSACTION






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeletePermissionCategory]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeletePermissionCategory]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE PROCEDURE [sp_Accounts_DeletePermissionCategory]
@CategoryID int
AS
	BEGIN TRANSACTION
		DELETE Accounts_Permissions WHERE CategoryID = @CategoryID
		DELETE Accounts_PermissionCategories WHERE CategoryID = @CategoryID
	COMMIT TRANSACTION




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_DeletePermission]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_DeletePermission]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'




CREATE PROCEDURE [sp_Accounts_DeletePermission]
@PermissionID int
AS
	BEGIN TRANSACTION
		DELETE Accounts_Permissions WHERE PermissionID = @PermissionID
		DELETE Accounts_RolePermissions WHERE PermissionID = @PermissionID
	COMMIT TRANSACTION




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreateUser]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreateUser]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_CreateUser]
@UserName varchar(50),
@Password binary(20),
@TrueName varchar(50),
@Sex char(2),
@Phone varchar(20),
@Email varchar(100),
@EmployeeID int,
@DepartmentID varchar(15),
@Activity bit,
@UserType char(2),
@UserID int output,
@Style int
AS
	INSERT INTO Accounts_Users(UserName, Password, TrueName, Sex, Phone, Email,
		EmployeeID, DepartmentID, Activity, UserType,Style)
	VALUES(@UserName, @Password, @TrueName, @Sex, @Phone, @Email,
		@EmployeeID, @DepartmentID, @Activity, @UserType,@Style)
	
	SET @UserID = @@IDENTITY

	RETURN 1
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreateRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreateRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_CreateRole]
@Description varchar(50)
AS
	INSERT INTO Accounts_Roles(Description) VALUES(@Description)
	RETURN @@IDENTITY






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreatePermissionCategory]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreatePermissionCategory]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_CreatePermissionCategory]
@Description varchar(50)
AS
	INSERT INTO Accounts_PermissionCategories(Description) VALUES(@Description)
	RETURN @@IDENTITY




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_CreatePermission]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_CreatePermission]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_CreatePermission]
@CategoryID int,
@Description varchar(50)
AS
	INSERT INTO Accounts_Permissions(CategoryID,Description) VALUES(@CategoryID,@Description)
	RETURN @@IDENTITY




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_ClearPermissionsFromRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_ClearPermissionsFromRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_ClearPermissionsFromRole]
@RoleID int
AS
	DELETE Accounts_RolePermissions WHERE RoleID = @RoleID






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_AddUserToRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_AddUserToRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_AddUserToRole]
@UserID int,
@RoleID int
AS
	DECLARE @Count int
	
	SELECT @Count = Count(UserID) FROM Accounts_UserRoles WHERE
		RoleID = @RoleID AND UserID = @UserID

	IF @Count = 0
		INSERT INTO Accounts_UserRoles(UserID, RoleID)
		VALUES(@UserID, @RoleID)






' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts_AddPermissionToRole]    Script Date: 05/19/2011 16:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[sp_Accounts_AddPermissionToRole]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
BEGIN
EXEC dbo.sp_executesql @statement = N'






CREATE PROCEDURE [sp_Accounts_AddPermissionToRole]
@RoleID int,
@PermissionID int
AS
	DECLARE @Count int

	SELECT @Count = Count(PermissionID) FROM Accounts_RolePermissions WHERE
		RoleID = @RoleID and PermissionID = @PermissionID
	
	IF @Count = 0
		INSERT INTO Accounts_RolePermissions(RoleID, PermissionID)
		VALUES(@RoleID, @PermissionID)






' 
END
GO
