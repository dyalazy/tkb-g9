USE [TKB_G9]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[KhoiLop] [nvarchar](50) NULL,
	[CaHoc] [nvarchar](20) NULL,
	[SiSo] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lop] ON
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (1, N'10A1', N'10', N'Chiều', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (2, N'10A2', N'10', N'Chiều', 60, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (3, N'10A3', N'10', N'Chiều', 60, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (4, N'11A1', N'11', N'Sáng', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (5, N'11A2', N'11', N'Sáng', 50, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (6, N'11A3', N'11', N'Sáng', 50, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (7, N'12A1', N'12', N'Sáng', 45, N'Lớp tuyển')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (8, N'12A2', N'12', N'Sáng', 55, N'Lớp thường')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [KhoiLop], [CaHoc], [SiSo], [GhiChu]) VALUES (9, N'12A3', N'12', N'Sáng', 55, N'Lớp thường')
SET IDENTITY_INSERT [dbo].[Lop] OFF
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Admin')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Giáo vụ')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (3, N'Giáo viên')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (4, N'Học sinh')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPhong] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (1, N'Phòng học')
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (2, N'Phòng thực hành')
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
/****** Object:  Table [dbo].[LoaiMonHoc]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonHoc](
	[MaLoaiMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiMonHoc] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiMonHoc] ON
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (1, N'KHTN')
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (2, N'KHXH')
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (3, N'Phụ')
SET IDENTITY_INSERT [dbo].[LoaiMonHoc] OFF
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDinh](
	[TongSoTietSang] [int] NULL,
	[TongSoTietChieu] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[QuyDinh] ([TongSoTietSang], [TongSoTietChieu]) VALUES (6, 6)
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[MaTKB] [int] IDENTITY(1,1) NOT NULL,
	[MaLop] [int] NULL,
	[NamHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThoiKhoaBieu] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThoiKhoaBieu] ON
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (55, 1, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (56, 2, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (57, 3, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (58, 4, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (59, 5, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (60, 6, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (61, 7, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (62, 8, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (63, 9, N'2012')
SET IDENTITY_INSERT [dbo].[ThoiKhoaBieu] OFF
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](200) NULL,
	[MatKhau] [varchar](200) NULL,
	[MaLoaiTaiKhoan] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (1, N'admin', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Table [dbo].[Phong]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](200) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaLoaiPhong] [int] NULL,
	[SucChua] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Phong] ON
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (1, N'Phòng 1', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (2, N'Phòng 2', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (3, N'Phòng 3', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (4, N'Phòng 4', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (5, N'Phòng 5', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (6, N'Phòng 6', N'Trống', 1, 50)
SET IDENTITY_INSERT [dbo].[Phong] OFF
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenMonHoc] [nvarchar](200) NULL,
	[MoTa] [nvarchar](1000) NULL,
	[MaLoaiMonHoc] [int] NULL,
	[MonChinh] [int] NULL,
	[HeSoMonHoc] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[SoTiet] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MonHoc] ON
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (1, N'Văn', N'Văn', 2, NULL, 2, N'Văn', 4)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (2, N'Toán', N'Toán', 1, NULL, 2, N'Toán', 4)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (3, N'Anh', N'Anh', 2, NULL, 1, N'Anh', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (4, N'Hóa', N'Hóa', 1, NULL, 1, N'Hóa', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (5, N'Sinh', N'Sinh', 1, NULL, 1, N'Sinh', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (6, N'Lý', N'Lý', 1, NULL, 1, N'Lý', 3)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (7, N'Địa', N'Địa', 2, NULL, 1, N'Địa', 1)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (8, N'Sử', N'Sử', 2, NULL, 1, N'Sử', 1)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (9, N'Công nghệ', N'Công nghệ', 3, NULL, 1, N'Công nghệ', 1)
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (10, N'TD', N'Thể dục', 3, NULL, 1, N'Thể dục', 1)
SET IDENTITY_INSERT [dbo].[MonHoc] OFF
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [int] IDENTITY(1,1) NOT NULL,
	[TenGiaoVien] [nvarchar](200) NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MaMonHoc] [int] NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (1, N'Nguyễn Văn A', N'Nam', CAST(0x81070B00 AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (2, N'Nguyễn Thị B', N'Nữ', CAST(0xEF080B00 AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (3, N'Lê Ngọc C', N'Nữ', CAST(0xA40E0B00 AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (4, N'Phan Minh D', N'Nam', CAST(0xC6150B00 AS Date), NULL, NULL, NULL, 3)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (5, N'Nguyễn Minh E', N'Nam', CAST(0xFB0E0B00 AS Date), NULL, NULL, NULL, 4)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (6, N'Trần Văn F', N'Nam', CAST(0xB7EF0A00 AS Date), NULL, NULL, NULL, 4)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (7, N'Phạm Hưng G', N'Nam', CAST(0x13120B00 AS Date), NULL, NULL, NULL, 5)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (8, N'Trần Gia H', N'Nữ', CAST(0x7B0A0B00 AS Date), NULL, NULL, NULL, 6)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (9, N'Lê Minh I', N'Nữ', CAST(0x84130B00 AS Date), NULL, NULL, NULL, 7)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (10, N'Phạm Hưng J', N'Nam', CAST(0x13120B00 AS Date), NULL, NULL, NULL, 8)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (11, N'Trần Gia K', N'Nữ', CAST(0x7B0A0B00 AS Date), NULL, NULL, NULL, 9)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc]) VALUES (12, N'Lê Minh L', N'Nữ', CAST(0x84130B00 AS Date), NULL, NULL, NULL, 10)
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
/****** Object:  Table [dbo].[ChiTietTKB]    Script Date: 12/24/2012 17:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTKB](
	[MaChiTietTKB] [int] IDENTITY(1,1) NOT NULL,
	[MaTKB] [int] NULL,
	[MaMonHoc] [int] NULL,
	[MaGiaoVien] [int] NULL,
	[MaPhong] [int] NULL,
	[TietBatDau] [int] NULL,
	[TietKetThuc] [int] NULL,
	[Thu] [int] NULL,
 CONSTRAINT [PK_ChiTietTKB] PRIMARY KEY CLUSTERED 
(
	[MaChiTietTKB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietTKB] ON
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1063, 55, 1, 1, 1, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1064, 55, 1, 1, 1, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1065, 55, 1, 1, 1, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1066, 55, 1, 1, 1, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1067, 55, 2, 2, 1, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1068, 55, 2, 2, 1, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1069, 55, 2, 2, 1, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1070, 55, 2, 2, 1, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1071, 55, 3, 4, 1, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1072, 55, 3, 4, 1, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1073, 55, 3, 4, 1, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1074, 55, 4, 5, 1, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1075, 55, 4, 5, 1, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1076, 55, 4, 5, 1, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1077, 55, 5, 7, 1, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1078, 55, 5, 7, 1, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1079, 55, 5, 7, 1, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1080, 55, 6, 8, 1, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1081, 55, 6, 8, 1, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1082, 55, 6, 8, 1, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1083, 55, 7, 9, 1, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1084, 55, 8, 10, 1, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1085, 55, 9, 11, 1, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1086, 55, 10, 12, 1, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1087, 56, 1, 1, NULL, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1088, 56, 1, 1, NULL, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1089, 56, 1, 1, NULL, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1090, 56, 1, 1, NULL, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1091, 56, 2, 2, NULL, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1092, 56, 2, 2, NULL, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1093, 56, 2, 2, NULL, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1094, 56, 2, 2, NULL, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1095, 56, 3, 4, NULL, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1096, 56, 3, 4, NULL, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1097, 56, 3, 4, NULL, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1098, 56, 4, 5, NULL, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1099, 56, 4, 5, NULL, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1100, 56, 4, 5, NULL, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1101, 56, 5, 7, NULL, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1102, 56, 5, 7, NULL, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1103, 56, 5, 7, NULL, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1104, 56, 6, 8, NULL, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1105, 56, 6, 8, NULL, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1106, 56, 6, 8, NULL, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1107, 56, 7, 9, NULL, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1108, 56, 8, 10, NULL, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1109, 56, 9, 11, NULL, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1110, 56, 10, 12, NULL, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1111, 57, 1, 1, NULL, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1112, 57, 1, 1, NULL, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1113, 57, 1, 1, NULL, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1114, 57, 1, 1, NULL, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1115, 57, 2, 3, NULL, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1116, 57, 2, 3, NULL, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1117, 57, 2, 3, NULL, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1118, 57, 2, 3, NULL, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1119, 57, 3, 4, NULL, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1120, 57, 3, 4, NULL, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1121, 57, 3, 4, NULL, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1122, 57, 4, 5, NULL, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1123, 57, 4, 6, NULL, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1124, 57, 4, 6, NULL, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1125, 57, 5, 7, NULL, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1126, 57, 5, 7, NULL, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1127, 57, 5, 7, NULL, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1128, 57, 6, 8, NULL, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1129, 57, 6, 8, NULL, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1130, 57, 6, 8, NULL, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1131, 57, 7, 9, NULL, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1132, 57, 8, 10, NULL, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1133, 57, 9, 11, NULL, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1134, 57, 10, 12, NULL, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1135, 58, 1, 1, 2, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1136, 58, 1, 1, 2, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1137, 58, 1, 1, 2, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1138, 58, 1, 1, 2, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1139, 58, 2, 2, 2, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1140, 58, 2, 2, 2, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1141, 58, 2, 2, 2, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1142, 58, 2, 2, 2, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1143, 58, 3, 4, 2, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1144, 58, 3, 4, 2, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1145, 58, 3, 4, 2, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1146, 58, 4, 5, 2, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1147, 58, 4, 5, 2, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1148, 58, 4, 5, 2, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1149, 58, 5, 7, 2, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1150, 58, 5, 7, 2, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1151, 58, 5, 7, 2, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1152, 58, 6, 8, 2, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1153, 58, 6, 8, 2, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1154, 58, 6, 8, 2, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1155, 58, 7, 9, 2, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1156, 58, 8, 10, 2, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1157, 58, 9, 11, 2, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1158, 58, 10, 12, 2, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1159, 59, 1, 1, 3, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1160, 59, 1, 1, 3, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1161, 59, 1, 1, 3, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1162, 59, 1, 1, 3, 2, 2, 3)
GO
print 'Processed 100 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1163, 59, 2, 2, 3, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1164, 59, 2, 2, 3, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1165, 59, 2, 2, 3, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1166, 59, 2, 2, 3, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1167, 59, 3, 4, 3, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1168, 59, 3, 4, 3, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1169, 59, 3, 4, 3, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1170, 59, 4, 5, 3, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1171, 59, 4, 5, 3, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1172, 59, 4, 5, 3, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1173, 59, 5, 7, 3, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1174, 59, 5, 7, 3, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1175, 59, 5, 7, 3, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1176, 59, 6, 8, 3, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1177, 59, 6, 8, 3, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1178, 59, 6, 8, 3, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1179, 59, 7, 9, 3, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1180, 59, 8, 10, 3, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1181, 59, 9, 11, 3, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1182, 59, 10, 12, 3, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1183, 60, 1, 1, 4, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1184, 60, 1, 1, 4, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1185, 60, 1, 1, 4, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1186, 60, 1, 1, 4, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1187, 60, 2, 3, 4, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1188, 60, 2, 3, 4, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1189, 60, 2, 3, 4, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1190, 60, 2, 3, 4, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1191, 60, 3, 4, 4, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1192, 60, 3, 4, 4, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1193, 60, 3, 4, 4, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1194, 60, 4, 5, 4, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1195, 60, 4, 6, 4, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1196, 60, 4, 6, 4, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1197, 60, 5, 7, 4, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1198, 60, 5, 7, 4, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1199, 60, 5, 7, 4, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1200, 60, 6, 8, 4, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1201, 60, 6, 8, 4, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1202, 60, 6, 8, 4, 2, 2, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1203, 60, 7, 9, 4, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1204, 60, 8, 10, 4, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1205, 60, 9, 11, 4, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1206, 60, 10, 12, 4, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1207, 61, 1, 1, 5, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1208, 61, 1, 1, 5, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1209, 61, 1, 1, 5, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1210, 61, 1, 1, 5, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1211, 61, 2, 3, 5, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1212, 61, 2, 3, 5, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1213, 61, 2, 3, 5, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1214, 61, 2, 3, 5, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1215, 61, 3, 4, 5, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1216, 61, 3, 4, 5, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1217, 61, 3, 4, 5, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1218, 61, 4, 5, 5, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1219, 61, 4, 6, 5, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1220, 61, 4, 6, 5, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1221, 61, 5, 7, 5, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1222, 61, 5, 7, 5, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1223, 61, 5, 7, 5, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1224, 61, 6, 8, 5, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1225, 61, 6, 8, 5, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1226, 61, 6, 8, 5, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1227, 61, 7, 9, 5, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1228, 61, 8, 10, 5, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1229, 61, 9, 11, 5, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1230, 61, 10, 12, 5, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1231, 62, 1, 1, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1232, 62, 1, 1, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1233, 62, 1, 1, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1234, 62, 1, 1, NULL, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1235, 62, 2, 2, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1236, 62, 2, 2, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1237, 62, 2, 2, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1238, 62, 2, 2, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1239, 62, 3, 4, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1240, 62, 3, 4, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1241, 62, 3, 4, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1242, 62, 4, 5, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1243, 62, 4, 5, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1244, 62, 4, 5, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1245, 62, 5, 7, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1246, 62, 5, 7, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1247, 62, 5, 7, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1248, 62, 6, 8, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1249, 62, 6, 8, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1250, 62, 6, 8, NULL, 3, 3, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1251, 62, 7, 9, NULL, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1252, 62, 8, 10, NULL, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1253, 62, 9, 11, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1254, 62, 10, 12, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1255, 63, 1, 1, NULL, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1256, 63, 1, 1, NULL, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1257, 63, 1, 1, NULL, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1258, 63, 1, 1, NULL, 2, 2, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1259, 63, 2, 3, NULL, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1260, 63, 2, 3, NULL, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1261, 63, 2, 3, NULL, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1262, 63, 2, 3, NULL, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1263, 63, 3, 4, NULL, 4, 4, 4)
GO
print 'Processed 200 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1264, 63, 3, 4, NULL, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1265, 63, 3, 4, NULL, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1266, 63, 4, 6, NULL, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1267, 63, 4, 6, NULL, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1268, 63, 4, 6, NULL, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1269, 63, 5, 7, NULL, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1270, 63, 5, 7, NULL, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1271, 63, 5, 7, NULL, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1272, 63, 6, 8, NULL, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1273, 63, 6, 8, NULL, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1274, 63, 6, 8, NULL, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1275, 63, 7, 9, NULL, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1276, 63, 8, 10, NULL, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1277, 63, 9, 11, NULL, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1278, 63, 10, 12, NULL, 3, 3, 6)
SET IDENTITY_INSERT [dbo].[ChiTietTKB] OFF
/****** Object:  ForeignKey [FK_ChiTietTKB_GiaoVien]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_GiaoVien]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_MonHoc]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_MonHoc]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_Phong]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_Phong]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_ThoiKhoaBieu]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu] FOREIGN KEY([MaTKB])
REFERENCES [dbo].[ThoiKhoaBieu] ([MaTKB])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu]
GO
/****** Object:  ForeignKey [FK_GiaoVien_MonHoc]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_MonHoc]
GO
/****** Object:  ForeignKey [FK_MonHoc_LoaiMonHoc]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_LoaiMonHoc] FOREIGN KEY([MaLoaiMonHoc])
REFERENCES [dbo].[LoaiMonHoc] ([MaLoaiMonHoc])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_LoaiMonHoc]
GO
/****** Object:  ForeignKey [FK_Phong_LoaiPhong]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_LoaiTaiKhoan]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [FK_ThoiKhoaBieu_Lop]    Script Date: 12/24/2012 17:46:31 ******/
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Lop]
GO
