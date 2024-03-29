USE [TKB_G9]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [int] NOT NULL IDENTITY,
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
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [int] NOT NULL IDENTITY,
	[TenLoaiPhong] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiMonHoc]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonHoc](
	[MaLoaiMonHoc] [int] NOT NULL IDENTITY,
	[TenLoaiMonHoc] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiMonHoc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[MaTKB] [int] NOT NULL IDENTITY,
	[MaLop] [int] NULL,
	[NamHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThoiKhoaBieu] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] NOT NULL IDENTITY,
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
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [int] NOT NULL IDENTITY,
	[TenMonHoc] [nvarchar](200) NULL,
	[MoTa] [nvarchar](1000) NULL,
	[MaLoaiMonHoc] [int] NULL,
	[MonChinh] [int] NULL,
	[HeSoMonHoc] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGiaoVien] [int] NOT NULL IDENTITY,
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
/****** Object:  Table [dbo].[ChiTietTKB]    Script Date: 12/22/2012 23:02:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTKB](
	[MaChiTietTKB] [int] NOT NULL IDENTITY,
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
/****** Object:  ForeignKey [FK_ChiTietTKB_GiaoVien]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_GiaoVien] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GiaoVien] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_GiaoVien]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_MonHoc]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_MonHoc]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_Phong]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_Phong]
GO
/****** Object:  ForeignKey [FK_ChiTietTKB_ThoiKhoaBieu]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[ChiTietTKB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu] FOREIGN KEY([MaTKB])
REFERENCES [dbo].[ThoiKhoaBieu] ([MaTKB])
GO
ALTER TABLE [dbo].[ChiTietTKB] CHECK CONSTRAINT [FK_ChiTietTKB_ThoiKhoaBieu]
GO
/****** Object:  ForeignKey [FK_GiaoVien_MonHoc]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_MonHoc] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MonHoc] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_MonHoc]
GO
/****** Object:  ForeignKey [FK_MonHoc_LoaiMonHoc]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_LoaiMonHoc] FOREIGN KEY([MaLoaiMonHoc])
REFERENCES [dbo].[LoaiMonHoc] ([MaLoaiMonHoc])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_LoaiMonHoc]
GO
/****** Object:  ForeignKey [FK_Phong_LoaiPhong]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
/****** Object:  ForeignKey [FK_ThoiKhoaBieu_Lop]    Script Date: 12/22/2012 23:02:40 ******/
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Lop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Lop]
GO
