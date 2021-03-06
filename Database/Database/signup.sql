USE [Furnishing_Store]
GO

/****** Object:  Table [dbo].[signup]    Script Date: 2/28/2021 1:56:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
DROP TABLE [dbo].[signup]
GO

/****** Object:  Table [dbo].[signup]    Script Date: 2/28/2021 1:56:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[signup](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](10) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[userrole] [varchar](5) NULL,
 CONSTRAINT [PK_signup] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


