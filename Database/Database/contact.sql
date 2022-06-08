USE [Furnishing_Store]
GO

ALTER TABLE [dbo].[contact] DROP CONSTRAINT [DF__contact__time__2739D489]
GO

/****** Object:  Table [dbo].[contact]    Script Date: 2/28/2021 1:55:28 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
DROP TABLE [dbo].[contact]
GO

/****** Object:  Table [dbo].[contact]    Script Date: 2/28/2021 1:55:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](10) NOT NULL,
	[message] [varchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[contact] ADD  DEFAULT (getdate()) FOR [time]
GO


