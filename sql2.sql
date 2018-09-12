USE [LOB_UNWBCA]
GO

/****** Object:  Table [dbo].[AreaManager]    Script Date: 9/12/2018 1:24:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AreaManager](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[AreaId] [int] NULL,
	[AreaType] [int] NULL,
	[UserId] [nvarchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK__AreaMana__3214EC07079769C9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

