USE [MyStore_Core3]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 22/04/01 17:43:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductGroupId] [int] NOT NULL,
	[ProductName] [nvarchar](300) NOT NULL,
	[ProductPrice] [decimal](18, 0) NOT NULL,
	[ProductImage] [nvarchar](max) NULL,
	[ProductStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](600) NOT NULL,
	[ProductStatus] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductGroups_ProductGroupId] FOREIGN KEY([ProductGroupId])
REFERENCES [dbo].[ProductGroups] ([ProductGroupId])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductGroups_ProductGroupId]
GO

