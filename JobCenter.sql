USE [JobCenter]
GO
/****** Object:  Table [dbo].[U_User]    Script Date: 11/30/2016 17:19:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[U_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
	[RealName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Mobile] [varchar](30) NULL,
	[IsAdmin] [bit] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LastLoginTime] [datetime] NOT NULL,
 CONSTRAINT [PK__U_User__1788CC4C07020F21] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[U_User] ON
INSERT [dbo].[U_User] ([UserId], [UserName], [PassWord], [RealName], [Email], [Mobile], [IsAdmin], [Status], [CreateTime], [LastLoginTime]) VALUES (1, N'admin', N'zdYqbXkNc1iKJ6s2NRB+9w==', N'admin', N'510653029@qq.com', NULL, 1, 1, CAST(0x0000A5E900000000 AS DateTime), CAST(0x0000A5E900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[U_User] OFF
/****** Object:  Table [dbo].[J_RunningLog]    Script Date: 11/30/2016 17:19:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[J_RunningLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobID] [uniqueidentifier] NOT NULL,
	[Remark] [varchar](500) NULL,
	[Description] [varchar](1000) NULL,
	[CreateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[J_Jobs]    Script Date: 11/30/2016 17:19:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[J_Jobs](
	[JobID] [uniqueidentifier] NOT NULL,
	[JobName] [nvarchar](300) NOT NULL,
	[JobParams] [varchar](500) NULL,
	[CronExpression] [varchar](100) NOT NULL,
	[AssemblyName] [varchar](150) NOT NULL,
	[ClassName] [varchar](150) NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[ModifyTime] [datetime] NOT NULL,
	[RecentRunTime] [datetime] NOT NULL,
	[NextFireTime] [datetime] NOT NULL,
	[CronRemark] [nvarchar](300) NULL,
	[Remark] [nvarchar](1000) NULL,
 CONSTRAINT [PK_J_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'JobID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'JobName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'JobParams'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务运行Cron表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'CronExpression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'程序集名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'AssemblyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务所在类包含命名空间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'ClassName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务运行状态： 1:运行 0:停止 -1:删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'ModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近运行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'RecentRunTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下次运行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'NextFireTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表达式中文说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'CronRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'J_Jobs', @level2type=N'COLUMN',@level2name=N'Remark'
GO
INSERT [dbo].[J_Jobs] ([JobID], [JobName], [JobParams], [CronExpression], [AssemblyName], [ClassName], [Status], [CreatedTime], [ModifyTime], [RecentRunTime], [NextFireTime], [CronRemark], [Remark]) VALUES (N'5fbaa648-d1e8-e511-b79d-54ee75868db9', N'Job模板【打印服务】', N'', N'0/10 * * * * ?', N'JobCenter.Jobs', N'JobCenter.Jobs.PrintJob', 1, CAST(0x0000A6CC00D63BC0 AS DateTime), CAST(0x0000A6CE011B6E14 AS DateTime), CAST(0x0000A6CE011B95A8 AS DateTime), CAST(0x0000A6CE011BA160 AS DateTime), NULL, NULL)
INSERT [dbo].[J_Jobs] ([JobID], [JobName], [JobParams], [CronExpression], [AssemblyName], [ClassName], [Status], [CreatedTime], [ModifyTime], [RecentRunTime], [NextFireTime], [CronRemark], [Remark]) VALUES (N'8b4cf922-b801-40fe-8132-8ebb46e8f6e0', N'用户加密串日志信息处理', N'', N'0/10 * * * * ?', N'JobCenter.Jobs', N'JobCenter.Jobs.UnidProcessJob', 0, CAST(0x0000A6CF00E3CE50 AS DateTime), CAST(0x0000A6CC012AC56B AS DateTime), CAST(0x0000A6CC012AC56B AS DateTime), CAST(0x0000A6CF00E3CE50 AS DateTime), N'每10秒运行一次', N'每10秒运行一次')
/****** Object:  Table [dbo].[J_ErrorLog]    Script Date: 11/30/2016 17:19:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[J_ErrorLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Thread] [varchar](100) NULL,
	[Level] [varchar](100) NOT NULL,
	[Logger] [varchar](3000) NULL,
	[Message] [varchar](8000) NOT NULL,
	[Exception] [varchar](8000) NOT NULL,
	[Name] [varchar](200) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__U_User__IsAdmin__08EA5793]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[U_User] ADD  CONSTRAINT [DF__U_User__IsAdmin__08EA5793]  DEFAULT ((0)) FOR [IsAdmin]
GO
/****** Object:  Default [DF__U_User__Status__09DE7BCC]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[U_User] ADD  CONSTRAINT [DF__U_User__Status__09DE7BCC]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__U_User__CreateTi__0AD2A005]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[U_User] ADD  CONSTRAINT [DF__U_User__CreateTi__0AD2A005]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__U_User__LastLogi__0BC6C43E]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[U_User] ADD  CONSTRAINT [DF__U_User__LastLogi__0BC6C43E]  DEFAULT (getdate()) FOR [LastLoginTime]
GO
/****** Object:  Default [DF__J_Running__Creat__164452B1]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_RunningLog] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__J_Jobs__JobID__7E6CC920]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_Jobs] ADD  DEFAULT (newsequentialid()) FOR [JobID]
GO
/****** Object:  Default [DF__J_Jobs__Status__7F60ED59]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_Jobs] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__J_Jobs__CreatedT__00551192]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_Jobs] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO
/****** Object:  Default [DF__J_Jobs__ModifyTi__014935CB]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_Jobs] ADD  DEFAULT (getdate()) FOR [ModifyTime]
GO
/****** Object:  Default [DF__J_Jobs__RecentRu__023D5A04]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_Jobs] ADD  DEFAULT (getdate()) FOR [RecentRunTime]
GO
/****** Object:  Default [DF__J_Jobs__NextFire__03317E3D]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_Jobs] ADD  DEFAULT (getdate()) FOR [NextFireTime]
GO
/****** Object:  Default [DF__J_ErrorLo__Creat__145C0A3F]    Script Date: 11/30/2016 17:19:21 ******/
ALTER TABLE [dbo].[J_ErrorLog] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
