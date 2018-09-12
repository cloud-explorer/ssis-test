USE [LOB_UNWBCA]
GO

/****** Object:  Table [dbo].[ActiveCrisisStatus]    Script Date: 9/12/2018 1:24:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ActiveCrisisStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CategoryId] [int] NULL,
	[UserId] [nvarchar](255) NULL,
	[ChecklistActivityId] [int] NULL,
	[ActivityStatus] [int] NULL,
	[Comments] [nvarchar](max) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ActiveCrisisStatus]  WITH CHECK ADD FOREIGN KEY([ActivityStatus])
REFERENCES [dbo].[MasterListOption] ([Id])
GO

ALTER TABLE [dbo].[ActiveCrisisStatus]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO

ALTER TABLE [dbo].[ActiveCrisisStatus]  WITH CHECK ADD FOREIGN KEY([ChecklistActivityId])
REFERENCES [dbo].[ChecklistActivity] ([Id])
GO

