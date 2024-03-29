USE [TKB_G9]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/28/2012 11:25:36 ******/
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
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 12/28/2012 11:25:36 ******/
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
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (1, N'Lý thuyết')
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong]) VALUES (2, N'Phòng thực hành')
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
/****** Object:  Table [dbo].[LoaiMonHoc]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (1, N'Xã Hội')
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (2, N'Tự Nhiên')
INSERT [dbo].[LoaiMonHoc] ([MaLoaiMonHoc], [TenLoaiMonHoc]) VALUES (3, N'Phụ')
SET IDENTITY_INSERT [dbo].[LoaiMonHoc] OFF
/****** Object:  Table [dbo].[PermissionUser]    Script Date: 12/28/2012 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PermissionUser](
	[ControllerName] [varchar](100) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ControllerName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_CapNhatGiaoVienPost', N'Sửa', NULL)
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_changeGiaoVienCbb', N'Xem', NULL)
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_DanhSachGiaoVien', N'Xem', NULL)
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_ThemGiaoVienPost', N'Thêm', NULL)
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_XemThoiKhoaBieu', N'Xem', N'')
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_XemThoiKhoaBieuGiaoVien', N'Xem', NULL)
INSERT [dbo].[PermissionUser] ([ControllerName], [Name], [Description]) VALUES (N'GiaoVien_XoaGiaoVien', N'Xóa', NULL)
/****** Object:  Table [dbo].[QuyDinh]    Script Date: 12/28/2012 11:25:36 ******/
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
/****** Object:  Table [dbo].[Phong]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (1, N'P.11', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (2, N'Phòng 2', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (3, N'Phòng 3', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (4, N'Phòng 4', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (5, N'Phòng 5', N'Trống', 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [TinhTrang], [MaLoaiPhong], [SucChua]) VALUES (6, N'Phòng 6', N'Trống', 1, 50)
SET IDENTITY_INSERT [dbo].[Phong] OFF
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (1, 1, N'2009')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (2, 2, N'2009')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (3, 3, N'2009')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (4, 1, N'2009')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (5, 2, N'2009')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (6, 3, N'2009')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (62, 8, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (63, 9, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (74, 2, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (80, 1, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (81, 3, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (83, 6, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (84, 7, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (85, 1, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (86, 2, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (87, 3, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (88, 4, N'2012')
INSERT [dbo].[ThoiKhoaBieu] ([MaTKB], [MaLop], [NamHoc]) VALUES (89, 5, N'2012')
SET IDENTITY_INSERT [dbo].[ThoiKhoaBieu] OFF
/****** Object:  Table [dbo].[TaiKhoan_PermissionUser]    Script Date: 12/28/2012 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan_PermissionUser](
	[IDLoaiTK] [int] NOT NULL,
	[ControllerName] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLoaiTK] ASC,
	[ControllerName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_CapNhatGiaoVienPost')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_changeGiaoVienCbb')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_DanhSachGiaoVien')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_ThemGiaoVienPost')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_XemThoiKhoaBieu')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_XemThoiKhoaBieuGiaoVien')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (1, N'GiaoVien_XoaGiaoVien')
INSERT [dbo].[TaiKhoan_PermissionUser] ([IDLoaiTK], [ControllerName]) VALUES (2, N'GiaoVien_XemThoiKhoaBieu')
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (1, N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', 1)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (2, N'gv1', N'E10ADC3949BA59ABBE56E057F20F883E', 2)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (3, N'gv2', N'E10ADC3949BA59ABBE56E057F20F883E', 2)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenTaiKhoan], [MatKhau], [MaLoaiTaiKhoan]) VALUES (4, N'lcngoc', N'E10ADC3949BA59ABBE56E057F20F883E', 2)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [MoTa], [MaLoaiMonHoc], [MonChinh], [HeSoMonHoc], [GhiChu], [SoTiet]) VALUES (1, N'Anh  Văn', N'khó vãi ra', 1, 1, 1, N'Không có gì ghi hết', 45)
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
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/28/2012 11:25:36 ******/
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
	[TenTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GiaoVien] ON
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (1, N'gv1', N'Nam', CAST(0x2AE40A00 AS Date), N'Nhà riêng, không rõ lắm', N'0133694158', N'google@gmail.com', 1, N'gv1')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (2, N'gv2', N'Nam', CAST(0xD5070B00 AS Date), N'abc', N'0125923486', N'mail@mail.com', 1, N'gv2')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (3, N'Lê Ngọc C', N'Nữ', CAST(0xA40E0B00 AS Date), NULL, NULL, NULL, 2, N'lcngoc')
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (4, N'Phan Minh D', N'Nam', CAST(0xC6150B00 AS Date), NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (5, N'Nguyễn Minh E', N'Nam', CAST(0xFB0E0B00 AS Date), NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (6, N'Trần Văn F', N'Nam', CAST(0xB7EF0A00 AS Date), NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (7, N'Phạm Hưng G', N'Nam', CAST(0x13120B00 AS Date), NULL, NULL, NULL, 5, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (8, N'Trần Gia H', N'Nữ', CAST(0x7B0A0B00 AS Date), NULL, NULL, NULL, 6, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (9, N'Lê Minh I', N'Nữ', CAST(0x84130B00 AS Date), NULL, NULL, NULL, 7, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (10, N'Phạm Hưng J', N'Nam', CAST(0x13120B00 AS Date), NULL, NULL, NULL, 8, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (11, N'Trần Gia K', N'Nữ', CAST(0x7B0A0B00 AS Date), NULL, NULL, NULL, 9, NULL)
INSERT [dbo].[GiaoVien] ([MaGiaoVien], [TenGiaoVien], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [Email], [MaMonHoc], [TenTK]) VALUES (12, N'Lê Minh L', N'Nữ', CAST(0x84130B00 AS Date), NULL, NULL, NULL, 10, NULL)
SET IDENTITY_INSERT [dbo].[GiaoVien] OFF
/****** Object:  Table [dbo].[ChiTietTKB]    Script Date: 12/28/2012 11:25:36 ******/
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
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1699, 74, 1, 2, NULL, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1700, 74, 1, 2, NULL, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1701, 74, 1, 2, NULL, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1702, 74, 1, 2, NULL, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1703, 74, 1, 2, NULL, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1704, 74, 1, 2, NULL, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1705, 74, 1, 2, NULL, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1706, 74, 1, 2, NULL, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1707, 74, 1, 2, NULL, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1708, 74, 1, 2, NULL, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1709, 74, 1, 2, NULL, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1710, 74, 1, 2, NULL, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1711, 74, 1, 2, NULL, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1712, 74, 1, 2, NULL, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1713, 74, 1, 2, NULL, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1714, 74, 1, 2, NULL, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1715, 74, 1, 2, NULL, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1716, 74, 1, 2, NULL, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1717, 74, 1, 2, NULL, 11, 11, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1718, 74, 1, 2, NULL, 12, 12, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1719, 74, 1, 2, NULL, 7, 7, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1720, 74, 1, 2, NULL, 8, 8, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1721, 74, 1, 2, NULL, 11, 11, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1722, 74, 1, 2, NULL, 12, 12, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1723, 74, 1, 2, NULL, 7, 7, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1724, 74, 1, 2, NULL, 8, 8, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1725, 74, 1, 2, NULL, 11, 11, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1726, 74, 1, 2, NULL, 12, 12, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1727, 74, 2, 3, NULL, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1728, 74, 2, 3, NULL, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1729, 74, 2, 3, NULL, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1730, 74, 2, 3, NULL, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1731, 74, 3, 4, NULL, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1732, 74, 3, 4, NULL, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1733, 74, 3, 4, NULL, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1734, 74, 4, 5, NULL, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1735, 74, 4, 6, NULL, 9, 9, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1736, 74, 4, 6, NULL, 10, 10, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1737, 74, 5, 7, NULL, 10, 10, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1738, 74, 6, 8, NULL, 9, 9, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1739, 74, 6, 8, NULL, 10, 10, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1740, 74, 6, 8, NULL, 9, 9, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1951, 80, 1, 1, 1, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1952, 80, 1, 1, 1, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1953, 80, 1, 1, 1, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1954, 80, 1, 1, 1, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1955, 80, 1, 1, 1, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1956, 80, 1, 1, 1, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1957, 80, 1, 1, 1, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1958, 80, 1, 1, 1, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1959, 80, 1, 1, 1, 9, 9, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1960, 80, 1, 1, 1, 10, 10, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1961, 80, 1, 1, 1, 9, 9, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1962, 80, 1, 1, 1, 10, 10, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1963, 80, 1, 1, 1, 9, 9, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1964, 80, 1, 1, 1, 10, 10, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1965, 80, 2, 3, 1, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1966, 80, 2, 3, 1, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1967, 80, 2, 3, 1, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1968, 80, 2, 3, 1, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1969, 80, 3, 4, 1, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1970, 80, 3, 4, 1, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1971, 80, 3, 4, 1, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1972, 80, 4, 5, 1, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1973, 80, 4, 5, 1, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1974, 80, 4, 5, 1, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1975, 80, 5, 7, 1, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1976, 80, 5, 7, 1, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1977, 80, 5, 7, 1, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1978, 80, 6, 8, 1, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1979, 80, 6, 8, 1, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1980, 80, 6, 8, 1, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1981, 80, 7, 9, 1, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1982, 80, 8, 10, 1, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1983, 80, 9, 11, 1, 11, 11, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1984, 80, 10, 12, 1, 12, 12, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1985, 81, 1, 1, NULL, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1986, 81, 1, 1, NULL, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1987, 81, 1, 1, NULL, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1988, 81, 1, 1, NULL, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1989, 81, 1, 1, NULL, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1990, 81, 1, 1, NULL, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1991, 81, 1, 1, NULL, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1992, 81, 1, 1, NULL, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1993, 81, 1, 1, NULL, 9, 9, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1994, 81, 1, 1, NULL, 10, 10, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1995, 81, 1, 1, NULL, 9, 9, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1996, 81, 1, 1, NULL, 10, 10, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1997, 81, 1, 1, NULL, 9, 9, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1998, 81, 1, 1, NULL, 10, 10, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (1999, 81, 2, 3, NULL, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2000, 81, 2, 3, NULL, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2001, 81, 2, 3, NULL, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2002, 81, 2, 3, NULL, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2003, 81, 3, 4, NULL, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2004, 81, 3, 4, NULL, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2005, 81, 3, 4, NULL, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2006, 81, 4, 5, NULL, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2007, 81, 4, 5, NULL, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2008, 81, 4, 5, NULL, 8, 8, 4)
GO
print 'Processed 100 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2009, 81, 5, 7, NULL, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2010, 81, 5, 7, NULL, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2011, 81, 5, 7, NULL, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2012, 81, 6, 8, NULL, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2013, 81, 6, 8, NULL, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2014, 81, 6, 8, NULL, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2015, 81, 7, 9, NULL, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2016, 81, 8, 10, NULL, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2017, 81, 9, 11, NULL, 11, 11, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2018, 81, 10, 12, NULL, 12, 12, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2061, 83, 1, 2, 3, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2062, 83, 1, 2, 3, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2063, 83, 1, 2, 3, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2064, 83, 1, 2, 3, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2065, 83, 1, 2, 3, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2066, 83, 1, 2, 3, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2067, 83, 1, 2, 3, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2068, 83, 1, 2, 3, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2069, 83, 1, 2, 3, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2070, 83, 1, 2, 3, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2071, 83, 1, 2, 3, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2072, 83, 1, 2, 3, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2073, 83, 1, 2, 3, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2074, 83, 1, 2, 3, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2075, 83, 1, 2, 3, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2076, 83, 1, 2, 3, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2077, 83, 1, 2, 3, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2078, 83, 1, 2, 3, 2, 2, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2079, 83, 1, 2, 3, 5, 5, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2080, 83, 1, 2, 3, 6, 6, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2081, 83, 1, 2, 3, 1, 1, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2082, 83, 1, 2, 3, 2, 2, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2083, 83, 1, 2, 3, 5, 5, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2084, 83, 1, 2, 3, 6, 6, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2085, 83, 1, 2, 3, 1, 1, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2086, 83, 1, 2, 3, 2, 2, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2087, 83, 1, 2, 3, 5, 5, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2088, 83, 1, 2, 3, 6, 6, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2089, 83, 2, 3, 3, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2090, 83, 2, 3, 3, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2091, 83, 2, 3, 3, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2092, 83, 2, 3, 3, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2093, 83, 3, 4, 3, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2094, 83, 3, 4, 3, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2095, 83, 3, 4, 3, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2096, 83, 4, 5, 3, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2097, 83, 4, 6, 3, 3, 3, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2098, 83, 4, 6, 3, 4, 4, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2099, 83, 5, 7, 3, 4, 4, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2100, 83, 6, 8, 3, 3, 3, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2101, 83, 6, 8, 3, 4, 4, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2102, 83, 6, 8, 3, 3, 3, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2103, 84, 1, 2, 4, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2104, 84, 1, 2, 4, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2105, 84, 1, 2, 4, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2106, 84, 1, 2, 4, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2107, 84, 1, 2, 4, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2108, 84, 1, 2, 4, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2109, 84, 1, 2, 4, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2110, 84, 1, 2, 4, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2111, 84, 1, 2, 4, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2112, 84, 1, 2, 4, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2113, 84, 1, 2, 4, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2114, 84, 1, 2, 4, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2115, 84, 1, 2, 4, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2116, 84, 1, 2, 4, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2117, 84, 1, 2, 4, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2118, 84, 1, 2, 4, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2119, 84, 1, 2, 4, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2120, 84, 1, 2, 4, 2, 2, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2121, 84, 1, 2, 4, 5, 5, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2122, 84, 1, 2, 4, 6, 6, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2123, 84, 1, 2, 4, 1, 1, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2124, 84, 1, 2, 4, 2, 2, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2125, 84, 1, 2, 4, 5, 5, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2126, 84, 1, 2, 4, 6, 6, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2127, 84, 1, 2, 4, 1, 1, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2128, 84, 1, 2, 4, 2, 2, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2129, 84, 1, 2, 4, 5, 5, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2130, 84, 1, 2, 4, 6, 6, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2131, 84, 2, 3, 4, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2132, 84, 2, 3, 4, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2133, 84, 2, 3, 4, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2134, 84, 2, 3, 4, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2135, 84, 3, 4, 4, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2136, 84, 3, 4, 4, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2137, 84, 3, 4, 4, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2138, 84, 4, 5, 4, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2139, 84, 4, 6, 4, 3, 3, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2140, 84, 4, 6, 4, 4, 4, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2141, 84, 5, 7, 4, 4, 4, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2142, 84, 6, 8, 4, 3, 3, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2143, 84, 6, 8, 4, 4, 4, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2144, 84, 6, 8, 4, 3, 3, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2145, 85, 1, 1, 1, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2146, 85, 1, 1, 1, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2147, 85, 1, 1, 1, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2148, 85, 1, 1, 1, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2149, 85, 1, 1, 1, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2150, 85, 1, 1, 1, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2151, 85, 1, 1, 1, 11, 11, 3)
GO
print 'Processed 200 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2152, 85, 1, 1, 1, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2153, 85, 1, 1, 1, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2154, 85, 1, 1, 1, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2155, 85, 1, 1, 1, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2156, 85, 1, 1, 1, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2157, 85, 1, 1, 1, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2158, 85, 1, 1, 1, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2159, 85, 1, 1, 1, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2160, 85, 1, 1, 1, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2161, 85, 1, 1, 1, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2162, 85, 1, 1, 1, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2163, 85, 1, 1, 1, 11, 11, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2164, 85, 1, 1, 1, 12, 12, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2165, 85, 1, 1, 1, 7, 7, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2166, 85, 1, 1, 1, 8, 8, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2167, 85, 1, 1, 1, 11, 11, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2168, 85, 1, 1, 1, 12, 12, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2169, 85, 1, 1, 1, 7, 7, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2170, 85, 1, 1, 1, 8, 8, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2171, 85, 1, 1, 1, 11, 11, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2172, 85, 1, 1, 1, 12, 12, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2173, 85, 2, 3, 1, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2174, 85, 2, 3, 1, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2175, 85, 2, 3, 1, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2176, 85, 2, 3, 1, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2177, 85, 3, 4, 1, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2178, 85, 3, 4, 1, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2179, 85, 3, 4, 1, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2180, 85, 4, 5, 1, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2181, 85, 4, 5, 1, 9, 9, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2182, 85, 4, 5, 1, 10, 10, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2183, 85, 5, 7, 1, 9, 9, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2184, 85, 5, 7, 1, 10, 10, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2185, 85, 5, 7, 1, 9, 9, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2186, 85, 6, 8, 1, 10, 10, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2187, 86, 1, 1, NULL, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2188, 86, 1, 1, NULL, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2189, 86, 1, 1, NULL, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2190, 86, 1, 1, NULL, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2191, 86, 1, 1, NULL, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2192, 86, 1, 1, NULL, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2193, 86, 1, 1, NULL, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2194, 86, 1, 1, NULL, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2195, 86, 1, 1, NULL, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2196, 86, 1, 1, NULL, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2197, 86, 1, 1, NULL, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2198, 86, 1, 1, NULL, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2199, 86, 1, 1, NULL, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2200, 86, 1, 1, NULL, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2201, 86, 1, 1, NULL, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2202, 86, 1, 1, NULL, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2203, 86, 1, 1, NULL, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2204, 86, 1, 1, NULL, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2205, 86, 1, 1, NULL, 11, 11, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2206, 86, 1, 1, NULL, 12, 12, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2207, 86, 1, 1, NULL, 7, 7, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2208, 86, 1, 1, NULL, 8, 8, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2209, 86, 1, 1, NULL, 11, 11, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2210, 86, 1, 1, NULL, 12, 12, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2211, 86, 1, 1, NULL, 7, 7, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2212, 86, 1, 1, NULL, 8, 8, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2213, 86, 1, 1, NULL, 11, 11, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2214, 86, 1, 1, NULL, 12, 12, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2215, 86, 2, 3, NULL, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2216, 86, 2, 3, NULL, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2217, 86, 2, 3, NULL, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2218, 86, 2, 3, NULL, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2219, 86, 3, 4, NULL, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2220, 86, 3, 4, NULL, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2221, 86, 3, 4, NULL, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2222, 86, 4, 5, NULL, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2223, 86, 4, 5, NULL, 9, 9, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2224, 86, 4, 5, NULL, 10, 10, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2225, 86, 5, 7, NULL, 9, 9, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2226, 86, 5, 7, NULL, 10, 10, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2227, 86, 5, 7, NULL, 9, 9, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2228, 86, 6, 8, NULL, 10, 10, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2229, 87, 1, 1, NULL, 7, 7, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2230, 87, 1, 1, NULL, 8, 8, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2231, 87, 1, 1, NULL, 11, 11, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2232, 87, 1, 1, NULL, 12, 12, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2233, 87, 1, 1, NULL, 7, 7, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2234, 87, 1, 1, NULL, 8, 8, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2235, 87, 1, 1, NULL, 11, 11, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2236, 87, 1, 1, NULL, 12, 12, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2237, 87, 1, 1, NULL, 7, 7, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2238, 87, 1, 1, NULL, 8, 8, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2239, 87, 1, 1, NULL, 11, 11, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2240, 87, 1, 1, NULL, 12, 12, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2241, 87, 1, 1, NULL, 7, 7, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2242, 87, 1, 1, NULL, 8, 8, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2243, 87, 1, 1, NULL, 11, 11, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2244, 87, 1, 1, NULL, 12, 12, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2245, 87, 1, 1, NULL, 7, 7, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2246, 87, 1, 1, NULL, 8, 8, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2247, 87, 1, 1, NULL, 11, 11, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2248, 87, 1, 1, NULL, 12, 12, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2249, 87, 1, 1, NULL, 7, 7, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2250, 87, 1, 1, NULL, 8, 8, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2251, 87, 1, 1, NULL, 11, 11, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2252, 87, 1, 1, NULL, 12, 12, 7)
GO
print 'Processed 300 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2253, 87, 1, 1, NULL, 7, 7, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2254, 87, 1, 1, NULL, 8, 8, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2255, 87, 1, 1, NULL, 11, 11, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2256, 87, 1, 1, NULL, 12, 12, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2257, 87, 2, 3, NULL, 9, 9, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2258, 87, 2, 3, NULL, 10, 10, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2259, 87, 2, 3, NULL, 9, 9, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2260, 87, 2, 3, NULL, 10, 10, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2261, 87, 3, 4, NULL, 9, 9, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2262, 87, 3, 4, NULL, 10, 10, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2263, 87, 3, 4, NULL, 9, 9, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2264, 87, 4, 5, NULL, 10, 10, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2265, 87, 4, 5, NULL, 9, 9, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2266, 87, 4, 5, NULL, 10, 10, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2267, 87, 5, 7, NULL, 9, 9, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2268, 87, 5, 7, NULL, 10, 10, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2269, 87, 5, 7, NULL, 9, 9, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2270, 87, 6, 8, NULL, 10, 10, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2271, 88, 1, 1, 2, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2272, 88, 1, 1, 2, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2273, 88, 1, 1, 2, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2274, 88, 1, 1, 2, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2275, 88, 1, 1, 2, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2276, 88, 1, 1, 2, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2277, 88, 1, 1, 2, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2278, 88, 1, 1, 2, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2279, 88, 1, 1, 2, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2280, 88, 1, 1, 2, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2281, 88, 1, 1, 2, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2282, 88, 1, 1, 2, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2283, 88, 1, 1, 2, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2284, 88, 1, 1, 2, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2285, 88, 1, 1, 2, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2286, 88, 1, 1, 2, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2287, 88, 1, 1, 2, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2288, 88, 1, 1, 2, 2, 2, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2289, 88, 1, 1, 2, 5, 5, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2290, 88, 1, 1, 2, 6, 6, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2291, 88, 1, 1, 2, 1, 1, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2292, 88, 1, 1, 2, 2, 2, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2293, 88, 1, 1, 2, 5, 5, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2294, 88, 1, 1, 2, 6, 6, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2295, 88, 1, 1, 2, 1, 1, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2296, 88, 1, 1, 2, 2, 2, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2297, 88, 1, 1, 2, 5, 5, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2298, 88, 1, 1, 2, 6, 6, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2299, 88, 2, 3, 2, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2300, 88, 2, 3, 2, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2301, 88, 2, 3, 2, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2302, 88, 2, 3, 2, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2303, 88, 3, 4, 2, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2304, 88, 3, 4, 2, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2305, 88, 3, 4, 2, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2306, 88, 4, 5, 2, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2307, 88, 4, 5, 2, 3, 3, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2308, 88, 4, 5, 2, 4, 4, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2309, 88, 5, 7, 2, 3, 3, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2310, 88, 5, 7, 2, 4, 4, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2311, 88, 5, 7, 2, 3, 3, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2312, 88, 6, 8, 2, 4, 4, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2313, 89, 1, 1, 3, 1, 1, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2314, 89, 1, 1, 3, 2, 2, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2315, 89, 1, 1, 3, 5, 5, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2316, 89, 1, 1, 3, 6, 6, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2317, 89, 1, 1, 3, 1, 1, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2318, 89, 1, 1, 3, 2, 2, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2319, 89, 1, 1, 3, 5, 5, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2320, 89, 1, 1, 3, 6, 6, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2321, 89, 1, 1, 3, 1, 1, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2322, 89, 1, 1, 3, 2, 2, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2323, 89, 1, 1, 3, 5, 5, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2324, 89, 1, 1, 3, 6, 6, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2325, 89, 1, 1, 3, 1, 1, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2326, 89, 1, 1, 3, 2, 2, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2327, 89, 1, 1, 3, 5, 5, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2328, 89, 1, 1, 3, 6, 6, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2329, 89, 1, 1, 3, 1, 1, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2330, 89, 1, 1, 3, 2, 2, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2331, 89, 1, 1, 3, 5, 5, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2332, 89, 1, 1, 3, 6, 6, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2333, 89, 1, 1, 3, 1, 1, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2334, 89, 1, 1, 3, 2, 2, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2335, 89, 1, 1, 3, 5, 5, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2336, 89, 1, 1, 3, 6, 6, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2337, 89, 1, 1, 3, 1, 1, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2338, 89, 1, 1, 3, 2, 2, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2339, 89, 1, 1, 3, 5, 5, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2340, 89, 1, 1, 3, 6, 6, 8)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2341, 89, 2, 3, 3, 3, 3, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2342, 89, 2, 3, 3, 4, 4, 2)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2343, 89, 2, 3, 3, 3, 3, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2344, 89, 2, 3, 3, 4, 4, 3)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2345, 89, 3, 4, 3, 3, 3, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2346, 89, 3, 4, 3, 4, 4, 4)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2347, 89, 3, 4, 3, 3, 3, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2348, 89, 4, 5, 3, 4, 4, 5)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2349, 89, 4, 5, 3, 3, 3, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2350, 89, 4, 5, 3, 4, 4, 6)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2351, 89, 5, 7, 3, 3, 3, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2352, 89, 5, 7, 3, 4, 4, 7)
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2353, 89, 5, 7, 3, 3, 3, 8)
GO
print 'Processed 400 total records'
INSERT [dbo].[ChiTietTKB] ([MaChiTietTKB], [MaTKB], [MaMonHoc], [MaGiaoVien], [MaPhong], [TietBatDau], [TietKetThuc], [Thu]) VALUES (2354, 89, 6, 8, 3, 4, 4, 8)
SET IDENTITY_INSERT [dbo].[ChiTietTKB] OFF
/****** Object:  ForeignKey [FK_ChiTietTKB_GiaoVien]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_GiaoVien]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_MonHoc]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_MonHoc]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_Phong]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_Phong]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_ThoiKhoaBieu]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu] FOREIGN KEY([MaTKB])
REFERENCES [dbo].[ThoiKhoaBieu] ([MaTKB])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu]
GO
/****** Object:  ForeignKey [FK_GiaoVien_MonHoc]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_MonHoc]
GO
/****** Object:  ForeignKey [FK_MonHoc_LoaiMonHoc]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_LoaiMonHoc] FOREIGN KEY([MaLoaiMonHoc])
REFERENCES [dbo].[LoaiMonHoc] ([MaLoaiMonHoc])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_LoaiMonHoc]
GO
/****** Object:  ForeignKey [FK_Phong_LoaiPhong]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
/****** Object:  ForeignKey [FK_TaiKhoan_LoaiTaiKhoan]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  ForeignKey [Fk_Permission]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[TaiKhoan_PermissionUser]  WITH CHECK ADD  CONSTRAINT [Fk_Permission] FOREIGN KEY([ControllerName])
REFERENCES [dbo].[PermissionUser] ([ControllerName])
GO
ALTER TABLE [dbo].[TaiKhoan_PermissionUser] CHECK CONSTRAINT [Fk_Permission]
GO
/****** Object:  ForeignKey [Fk_Role]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[TaiKhoan_PermissionUser]  WITH CHECK ADD  CONSTRAINT [Fk_Role] FOREIGN KEY([IDLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan_PermissionUser] CHECK CONSTRAINT [Fk_Role]
GO
/****** Object:  ForeignKey [FK_ThoiKhoaBieu_Lop]    Script Date: 12/28/2012 11:25:36 ******/
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Lop]
GO
