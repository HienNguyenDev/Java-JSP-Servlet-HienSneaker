USE [SneakersManagement]
GO
/****** Object:  Table [dbo].[tblCart]    Script Date: 6/28/2024 11:40:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCart](
	[cartId] [nvarchar](50) NOT NULL,
	[SneakerID] [nvarchar](50) NULL,
	[userID] [nvarchar](50) NULL,
	[invId] [nvarchar](50) NULL,
	[price] [float] NULL,
	[totalPrice] [float] NULL,
	[quantity] [int] NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblCart] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInvoice]    Script Date: 6/28/2024 11:40:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvoice](
	[invId] [nvarchar](50) NOT NULL,
	[userID] [nvarchar](50) NOT NULL,
	[total] [float] NULL,
	[dateBuy] [datetime] NULL,
	[gmail] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblInvoice] PRIMARY KEY CLUSTERED 
(
	[invId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSneakers]    Script Date: 6/28/2024 11:40:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSneakers](
	[SneakerID] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[image] [nvarchar](max) NULL,
	[price] [float] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tblGlasses] PRIMARY KEY CLUSTERED 
(
	[SneakerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 6/28/2024 11:40:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[gmail] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B1390', N'SN02', N'hien', N'INV-4024', 580, 3480, 6, N'50nysr.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B384', N'SN02', N'user', N'INV-8291', 580, 580, 1, N'50nysr.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B4364', N'SN02', N'bao', N'INV-4095', 580, 580, 1, N'50nysr.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B5308', N'SN03', N'hien', N'INV-4024', 825, 825, 1, N'MLB Playball Lux Jacquard Diamond Monogram.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B5537', N'SN01', N'hien', N'INV-4024', 1000, 1000, 1, N'NMD_R1_Shoes_Black_GZ9258_01_standard.png')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B7019', N'SN05', N'user', N'INV-8291', 769, 769, 1, N'Adidas Zapatillas Superstar Cloud White.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B9374', N'SN03', N'user', N'INV-8291', 825, 825, 1, N'MLB Playball Lux Jacquard Diamond Monogram.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'B9862', N'SN03', N'bao', N'INV-4095', 825, 825, 1, N'MLB Playball Lux Jacquard Diamond Monogram.jpg')
INSERT [dbo].[tblCart] ([cartId], [SneakerID], [userID], [invId], [price], [totalPrice], [quantity], [image]) VALUES (N'user', N'G1135', NULL, NULL, 0, 0, 0, N'user')
GO
INSERT [dbo].[tblInvoice] ([invId], [userID], [total], [dateBuy], [gmail], [address]) VALUES (N'INV-4095', N'bao', 1405, CAST(N'2024-06-27T22:53:45.000' AS DateTime), N'bao456@gmail.com', N'HN')
INSERT [dbo].[tblInvoice] ([invId], [userID], [total], [dateBuy], [gmail], [address]) VALUES (N'INV-6080', N'hien', 1580, CAST(N'2024-06-25T23:57:14.000' AS DateTime), N'abcxyz@gmail.com', N'SG')
GO
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN01', N'NMD_R1', N'Adidas', N'Adidas', N'NMD_R1_Shoes_Black_GZ9258_01_standard.png', 1000, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN02', N'Chunky Liner Denim
', N'MLB', N'MLB', N'50nysr.jpg', 580, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN03', N'Playball Lux Jacquard', N'MLB', N'MLB', N'MLB Playball Lux Jacquard Diamond Monogram.jpg', 825, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN04', N'Nike Downshifter', N'Nike', N'Nike', N'Nike Nam Downshifter 11.png', 400, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN05', N'Zapatillas Superstar', N'Adidas', N'Adidas', N'Adidas Zapatillas Superstar Cloud White.png', 769, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN06', N'Galaxy 6 Lucid Lemon', N'Adidas', N'Adidas', N'Adidas Galaxy 6 Lucid Lemon.png', 934, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN07', N'Zoom Pegasus Prenium', N'Nike', N'Nike', N'Nike Air Zoom Pegasus 40 Prenium.png', 1245, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN08', N'Bigball Chunky Varsity', N'MLB', N'MLB', N'MLB Bigball Chunky Varsity.jpg', 2050, 1)
INSERT [dbo].[tblSneakers] ([SneakerID], [name], [description], [type], [image], [price], [status]) VALUES (N'SN09', N'Air Max Sc Core Black', N'Nike', N'Nike', N'Nike Nam Air Max Sc Core Black.png', 1593, 1)
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [gmail], [address], [status]) VALUES (N'bao', N'Tran Bao', N'123', N'US', N'bao456@gmail.com', N'HN', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [gmail], [address], [status]) VALUES (N'hien', N'Nguyen Hien', N'1', N'AD', N'abcxyz123@gmail.com', N'SG', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [gmail], [address], [status]) VALUES (N'user', N'Hoang', N'1', N'US', N'user1@gmail.com', N'ho chi minh', 1)
GO
