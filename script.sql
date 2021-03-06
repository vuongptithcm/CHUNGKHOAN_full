USE [master]
GO
/****** Object:  Database [QuanLiGiaoDich]    Script Date: 7/17/2021 2:29:21 PM ******/
USE [QuanLyChungKhoan]

/****** Object:  Table [dbo].[CoPhieu]    Script Date: 7/17/2021 2:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoPhieu](
	[MaCP] [varchar](50) NOT NULL,
	[MaSan] [varchar](50) NOT NULL,
	[TenCT] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[DiaChiWeb] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SLCoPhieu] [float] NULL,
	[GiaNiemYet] [float] NULL CONSTRAINT [DF_CoPhieu_GiaNiemYet]  DEFAULT ((0)),
 CONSTRAINT [PK__CongTy__27258E087B16D581] PRIMARY KEY CLUSTERED 
(
	[MaCP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LenhDat]    Script Date: 7/17/2021 2:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LenhDat](
	[MaLenh] [varchar](50) NOT NULL,
	[MaTKNH] [varchar](50) NOT NULL,
	[MaCP] [varchar](50) NOT NULL,
	[LoaiGD] [varchar](4) NULL,
	[SLDat] [int] NULL,
	[NgayGioDat] [datetime] NULL,
	[MaLoaiLenh] [varchar](50) NOT NULL,
	[MaTrangThai] [varchar](50) NOT NULL CONSTRAINT [DF_DatLenh_TrangThai]  DEFAULT ('ChoKhop'),
	[GiaDat] [float] NOT NULL,
 CONSTRAINT [PK_DatLenh_1] PRIMARY KEY CLUSTERED 
(
	[MaLenh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LenhKhop]    Script Date: 7/17/2021 2:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LenhKhop](
	[MaLenh] [varchar](50) NOT NULL CONSTRAINT [DF_LenhKhop_MaLenh]  DEFAULT (N'Chưa Chuyển'),
	[NgayGioKhop] [datetime] NOT NULL,
	[GiaKhop] [float] NULL,
	[SoLgKhop] [int] NULL,
	[TrangThai] [nvarchar](50) NULL CONSTRAINT [DF_LenhKhop_TrangThai]  DEFAULT ('ChuaChuy?n'),
 CONSTRAINT [PK_ChiTietKhopLenh] PRIMARY KEY CLUSTERED 
(
	[MaLenh] ASC,
	[NgayGioKhop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaDauTu]    Script Date: 7/17/2021 2:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaDauTu](
	[MaTK] [varchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[Phai] [nvarchar](50) NOT NULL CONSTRAINT [DF_NhaDauTu_Phai]  DEFAULT (N'Nam'),
	[DiaChi] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SDT] [varchar](50) NOT NULL,
	[CMND] [varchar](50) NOT NULL,
	[NgayCap] [date] NULL CONSTRAINT [DF_NhaDauTu_NgayCap]  DEFAULT (getdate()),
	[NoiCap] [nvarchar](50) NULL,
	[TrNgNc] [nvarchar](50) NOT NULL CONSTRAINT [DF_NhaDauTu_TrNgNc]  DEFAULT (N'Trong Nước'),
	[MMGD] [varchar](50) NOT NULL CONSTRAINT [DF_NhaDauTu_MMGD]  DEFAULT ((123456789)),
	[MKDL] [varchar](50) NOT NULL CONSTRAINT [DF_NhaDauTu_MKDL]  DEFAULT ((123456789)),
 CONSTRAINT [PK_NhaDauTu] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CMND] UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_SDT] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SoHuu]    Script Date: 7/17/2021 2:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SoHuu](
	[MaTK] [varchar](50) NOT NULL,
	[MaCP] [varchar](50) NOT NULL,
	[SoLg] [int] NULL,
 CONSTRAINT [PK_LuuKy_1] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC,
	[MaCP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TKNH]    Script Date: 7/17/2021 2:29:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TKNH](
	[MaTKNH] [varchar](50) NOT NULL,
	[MaTK] [varchar](50) NOT NULL,
	[MaNH] [varchar](50) NULL,
	[SoTien] [float] NOT NULL CONSTRAINT [DF_TKNH_SoTien]  DEFAULT ((0)),
 CONSTRAINT [PK_NganHang] PRIMARY KEY CLUSTERED 
(
	[MaTKNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[NhaDauTu]  WITH CHECK ADD  CONSTRAINT [CHK_Phai] CHECK  (([Phai]=N'Nam' OR [Phai]=N'Nữ'))
GO
ALTER TABLE [dbo].[NhaDauTu] CHECK CONSTRAINT [CHK_Phai]
GO
ALTER TABLE [dbo].[NhaDauTu]  WITH CHECK ADD  CONSTRAINT [CHK_TrNgNc] CHECK  (([TrNgNc]=N'Trong Nước' OR [TrNgNc]=N'Ngoài Nước'))
GO
ALTER TABLE [dbo].[NhaDauTu] CHECK CONSTRAINT [CHK_TrNgNc]
GO
ALTER TABLE [dbo].[TKNH]  WITH CHECK ADD  CONSTRAINT [CK_Tien] CHECK  (([SoTien]>(0)))
GO
ALTER TABLE [dbo].[TKNH] CHECK CONSTRAINT [CK_Tien]
GO
USE [master]
GO
ALTER DATABASE QuanLyChungKhoan SET  READ_WRITE 
GO
