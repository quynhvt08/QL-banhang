USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 21/05/2023 7:54:37 CH ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanHang', N'ON'
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MAHD] [nvarchar](10) NULL,
	[MAHH] [nvarchar](10) NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MAHH] [nvarchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MAHD] [nvarchar](10) NOT NULL,
	[MAKH] [nvarchar](10) NULL,
	[MAQL] [nvarchar](10) NULL,
	[NGAY] [nvarchar](50) NULL,
	[DUYET] [nvarchar](50) NULL,
	[TONGTIEN] [nvarchar](50) NULL,
 CONSTRAINT [PK__HoaDon__603F20CE5A5948DE] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MAKH] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [varbinary](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[MaQL] [nvarchar](10) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [varbinary](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD1', N'HH3', 1)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD1', N'HH2', 1)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD1', N'HH1', 1)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD3', N'HH5', 3)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD6', N'HH5', 2)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD6', N'HH4', 3)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD6', N'HH3', 2)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD11', N'HH1', 3)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD2', N'HH5', 1)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD9', N'HH3', 1)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD11', N'HH2', 3)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD5', N'HH2', 3)
INSERT [dbo].[ChiTietHoaDon] ([MAHD], [MAHH], [SoLuong]) VALUES (N'HD11', N'HH6', 2)
GO
INSERT [dbo].[HangHoa] ([MAHH], [Ten], [SoLuong], [DonGia], [HinhAnh]) VALUES (N'HH1', N'Kem đánh răng', 97, 20000, N'https://cdn.tgdd.vn/Products/Images/2446/88150/bhx/kem-danh-rang-closeup-tinh-the-bang-tuyet-140g-202105241358009461.jpg')
INSERT [dbo].[HangHoa] ([MAHH], [Ten], [SoLuong], [DonGia], [HinhAnh]) VALUES (N'HH2', N'Bàn chải đánh răng', 94, 13000, N'https://babyborn.vn/Images/Product/ban-chai-cho-be-tap-danh-rang-baby-banana-infant-training-toothbrush.jpg')
INSERT [dbo].[HangHoa] ([MAHH], [Ten], [SoLuong], [DonGia], [HinhAnh]) VALUES (N'HH3', N'Dép', 97, 35000, N'https://th.bing.com/th/id/R.73de4e79ff9d3ae9d2798ffc16681ebe?rik=IS39rptXB4366Q&pidhttps://th.bing.com/th/id/R.73de4e79ff9d3ae9d2798ffc16681ebe?rik=IS39rptXB4366Q&pidhttps://th.bing.com/th/id/R.73de4e79ff9d3ae9d2798ffc16681ebe?rik=IS39rptXB4366Q&pid=ImgRaw&r=0')
INSERT [dbo].[HangHoa] ([MAHH], [Ten], [SoLuong], [DonGia], [HinhAnh]) VALUES (N'HH4', N'Ba lô em bé', 2, 200000, N'https://th.bing.com/th/id/R.ebe1901c3d65e671ae06d4f9fcd862f6?rik=IkexvODK9hlL8g&pid=ImgRaw&r=0')
INSERT [dbo].[HangHoa] ([MAHH], [Ten], [SoLuong], [DonGia], [HinhAnh]) VALUES (N'HH5', N'Ráy lỗ tai sắt', 28, 1000, N'https://sb.tinhte.vn/2021/03/5373154_blob.jpg')
INSERT [dbo].[HangHoa] ([MAHH], [Ten], [SoLuong], [DonGia], [HinhAnh]) VALUES (N'HH6', N'Bẫy chuột xịn xò', 15, 37000, N'https://th.bing.com/th/id/OIP.8cKowEau-YgNYolAQJMFDAHaE8?pid=ImgDet&rs=1')
GO
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD1', N'KH4', N'QL1', N'21/05/2023 4:21:14 SA', N'Đã duyệt', N'68000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD10', N'KH1', N'QL1', N'21/05/2023 6:45:09 CH', N'Đã hủy', N'200000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD11', N'KH3', N'QL1', N'21/05/2023 7:00:31 CH', N'Đã duyệt', N'173000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD12', N'KH3', N'QL1', N'21/05/2023 7:01:01 CH', N'Đã hủy', N'72000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD13', N'KH4', N'QL1', N'21/05/2023 7:34:51 CH', N'Đã hủy', N'70000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD2', N'KH4', N'QL1', N'21/05/2023 4:27:07 SA', N'Đã duyệt', N'1000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD3', N'KH4', N'QL1', N'21/05/2023 6:03:05 SA', N'Đã duyệt', N'3000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD4', N'KH4', N'QL1', N'21/05/2023 6:19:04 SA', N'Đã hủy', N'35000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD5', N'KH4', N'QL1', N'21/05/2023 3:41:49 CH', N'Đã duyệt', N'39000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD6', N'KH1', N'QL1', N'21/05/2023 5:37:37 CH', N'Đã duyệt', N'672000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD7', N'KH4', N'QL1', N'21/05/2023 6:05:19 CH', N'Đã hủy', N'4000000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD8', N'KH4', N'QL1', N'21/05/2023 6:05:19 CH', N'Đã hủy', N'4000000')
INSERT [dbo].[HoaDon] ([MAHD], [MAKH], [MAQL], [NGAY], [DUYET], [TONGTIEN]) VALUES (N'HD9', N'KH4', N'QL1', N'21/05/2023 6:37:21 CH', N'Đã duyệt', N'35000')
GO
INSERT [dbo].[KhachHang] ([MAKH], [HoTen], [SDT], [DiaChi], [TaiKhoan], [MatKhau]) VALUES (N'KH1', N'Tran Duc Tai', N'123', N'234VNM', N'KHngias', 0x0D5399508427CE79556CDA71918020C1E8D15B53)
INSERT [dbo].[KhachHang] ([MAKH], [HoTen], [SDT], [DiaChi], [TaiKhoan], [MatKhau]) VALUES (N'KH3', N'Nguyen Van Nghia', N'123456789000000', N'266THT', N'ngias', 0x0D5399508427CE79556CDA71918020C1E8D15B53)
INSERT [dbo].[KhachHang] ([MAKH], [HoTen], [SDT], [DiaChi], [TaiKhoan], [MatKhau]) VALUES (N'KH4', N'Nguyen Van Nghia', N'1234567890', N'ssssssss', N'abc', 0x0D5399508427CE79556CDA71918020C1E8D15B53)
GO
INSERT [dbo].[QuanLy] ([MaQL], [TaiKhoan], [MatKhau]) VALUES (N'QL1', N'QLngias', 0x0D5399508427CE79556CDA71918020C1E8D15B53)
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietHoa__MAHD__52593CB8] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HoaDon] ([MAHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK__ChiTietHoa__MAHD__52593CB8]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MAHH])
REFERENCES [dbo].[HangHoa] ([MAHH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MAKH__4F7CD00D] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KhachHang] ([MAKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MAKH__4F7CD00D]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__MAQL__5070F446] FOREIGN KEY([MAQL])
REFERENCES [dbo].[QuanLy] ([MaQL])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__MAQL__5070F446]
GO
/****** Object:  StoredProcedure [dbo].[GetKhachHang]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Sửa đổi stored procedure để truy xuất thông tin của nhân viên dựa trên tên đăng nhập và mật khẩu
CREATE    PROCEDURE [dbo].[GetKhachHang]
    @TaiKhoan NVARCHAR(50),
    @MatKhau NVARCHAR(50)
AS
BEGIN
    DECLARE @HashedPassword VARBINARY(256)
    SET @HashedPassword = HASHBYTES('SHA1', @MatKhau)
    
    SELECT * FROM KhachHang WHERE TaiKhoan = @TaiKhoan AND MatKhau = @HashedPassword
END

GO
/****** Object:  StoredProcedure [dbo].[GetQuanLy]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[GetQuanLy]
    @TaiKhoan NVARCHAR(50),
    @MatKhau NVARCHAR(50)
AS
BEGIN
    DECLARE @HashedPassword VARBINARY(256)
    SET @HashedPassword = HASHBYTES('SHA1', @MatKhau)
    
    SELECT * FROM QuanLy WHERE TaiKhoan = @TaiKhoan AND MatKhau = @HashedPassword
END
GO
/****** Object:  StoredProcedure [dbo].[InsertKhachHang]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[InsertKhachHang]
    @MAKH NVARCHAR(10),
	@HoTen NVARCHAR(50),
	@SDT NVARCHAR(50),
	@DiaChi NVARCHAR(50),
    @TaiKhoan NVARCHAR(50),
    @MatKhau NVARCHAR(50)
AS
BEGIN
    DECLARE @HashedPassword VARBINARY(256)
    SET @HashedPassword = HASHBYTES('SHA1', @MatKhau)

    INSERT INTO KhachHang (MAKH, HoTen, SDT, DiaChi, TaiKhoan, MatKhau)
    VALUES (@MAKH, @HoTen, @SDT,@DiaChi, @TaiKhoan, @HashedPassword)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertQuanLy]    Script Date: 21/05/2023 7:54:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Tạo stored procedure để chèn dữ liệu vào bảng QuanLy và băm mật khẩu bằng SHA1
CREATE PROCEDURE [dbo].[InsertQuanLy]
    @MaQL NVARCHAR(10),
    @TaiKhoan NVARCHAR(50),
    @MatKhau NVARCHAR(50)
AS
BEGIN
    DECLARE @HashedPassword VARBINARY(256)
    SET @HashedPassword = HASHBYTES('SHA1', @MatKhau)

    INSERT INTO QuanLy (MaQL, TaiKhoan, MatKhau)
    VALUES (@MaQL, @TaiKhoan, @HashedPassword)
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
