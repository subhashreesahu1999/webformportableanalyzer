USE [Furnishing_Store]
GO

/****** Object:  Table [dbo].[product]    Script Date: 2/28/2021 1:55:45 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO

/****** Object:  Table [dbo].[product]    Script Date: 2/28/2021 1:55:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](1000) NOT NULL,
	[price] [int] NOT NULL,
	[color] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[material] [varchar](max) NOT NULL,
	[description] [text] NOT NULL,
	[imagepath] [nvarchar](max) NOT NULL,
	[imagename] [varchar](100) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


