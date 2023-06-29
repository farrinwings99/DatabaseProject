USE [MyStore_Core3]
GO

/****** Object:  Table [dbo].[OrderApps]    Script Date: 22/04/01 17:42:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderApps](
	[OrderAppId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[SellCount] [int] NOT NULL,
	[OrderTime] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderApps] PRIMARY KEY CLUSTERED 
(
	[OrderAppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderApps]  WITH CHECK ADD  CONSTRAINT [FK_OrderApps_AspNetUsers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO

ALTER TABLE [dbo].[OrderApps] CHECK CONSTRAINT [FK_OrderApps_AspNetUsers_CustomerId]
GO

ALTER TABLE [dbo].[OrderApps]  WITH CHECK ADD  CONSTRAINT [FK_OrderApps_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[OrderApps] CHECK CONSTRAINT [FK_OrderApps_Products_ProductId]
GO

