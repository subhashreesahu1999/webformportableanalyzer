USE [Furnishing_Store]
GO

ALTER TABLE [dbo].[addtocart] DROP CONSTRAINT [FK_addtocart_addtocart]
GO

/****** Object:  Table [dbo].[addtocart]    Script Date: 2/28/2021 1:55:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addtocart]') AND type in (N'U'))
DROP TABLE [dbo].[addtocart]
GO

/****** Object:  Table [dbo].[addtocart]    Script Date: 2/28/2021 1:55:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[addtocart](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[product_id] [varchar](50) NOT NULL,
	[product_name] [varchar](500) NOT NULL,
	[imagepath] [nvarchar](max) NOT NULL,
	[imagename] [varchar](50) NOT NULL,
	[description] [text] NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[totalprice] [int] NOT NULL,
	[time] [datetime] NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_addtocart] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[addtocart]  WITH CHECK ADD  CONSTRAINT [FK_addtocart_addtocart] FOREIGN KEY([sn])
REFERENCES [dbo].[addtocart] ([sn])
GO

ALTER TABLE [dbo].[addtocart] CHECK CONSTRAINT [FK_addtocart_addtocart]
GO


