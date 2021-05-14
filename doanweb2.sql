-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2021 lúc 10:16 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanweb2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiamgia`
--

CREATE TABLE `chitietgiamgia` (
  `MA_CTGG` int(10) UNSIGNED DEFAULT NULL,
  `MA_SP` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgiamgia`
--

INSERT INTO `chitietgiamgia` (`MA_CTGG`, `MA_SP`) VALUES
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(2, 46),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(2, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MA_CTHD` int(5) UNSIGNED NOT NULL,
  `MA_HD` int(10) UNSIGNED NOT NULL,
  `MA_SP` int(10) UNSIGNED DEFAULT NULL,
  `SO_LUONG` int(11) DEFAULT NULL,
  `TIEN_GIAM_GIA` float DEFAULT NULL,
  `DON_GIA` float DEFAULT NULL,
  `THANH_TIEN` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MA_CTHD`, `MA_HD`, `MA_SP`, `SO_LUONG`, `TIEN_GIAM_GIA`, `DON_GIA`, `THANH_TIEN`) VALUES
(1, 1, 10, 2, 0, 500000, 1000000),
(2, 1, 13, 1, 0, 550000, 550000),
(3, 1, 1, 2, 0, 500000, 1000000),
(4, 4, 25, 2, 0, 700000, 2800000),
(5, 4, 5, 2, 0, 500000, 500000),
(6, 4, 9, 1, 0, 600000, 600000),
(7, 4, 12, 2, 0, 500000, 1000000),
(8, 1, 14, 2, 0, 500000, 1000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MA_CTPN` int(5) UNSIGNED NOT NULL,
  `MA_PN` int(10) UNSIGNED NOT NULL,
  `MA_SP` int(10) UNSIGNED NOT NULL,
  `DON_GIA` int(11) NOT NULL,
  `SIZE` varchar(2) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SO_LUONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`MA_CTPN`, `MA_PN`, `MA_SP`, `DON_GIA`, `SIZE`, `SO_LUONG`) VALUES
(1, 1, 1, 450000, 'S', 40),
(2, 1, 2, 450000, 'M', 40),
(3, 1, 3, 450000, 'L', 40),
(4, 1, 4, 450000, 'S', 50),
(5, 1, 5, 450000, 'M', 100),
(6, 1, 6, 450000, 'L', 80),
(7, 1, 7, 450000, 'S', 40),
(8, 1, 8, 450000, 'M', 40),
(9, 1, 9, 450000, 'L', 40),
(10, 1, 10, 450000, 'S', 80),
(11, 1, 11, 450000, 'M', 80),
(12, 1, 12, 450000, 'L', 80),
(13, 2, 13, 450000, 'S', 100),
(14, 2, 14, 450000, 'M', 100),
(15, 2, 15, 450000, 'L', 100),
(16, 2, 16, 450000, 'S', 100),
(17, 2, 17, 450000, 'M', 100),
(18, 2, 18, 450000, 'L', 100),
(19, 2, 19, 450000, 'S', 100),
(20, 2, 20, 450000, 'M', 100),
(21, 2, 21, 450000, 'L', 100),
(22, 2, 13, 450000, 'S', 100),
(23, 2, 14, 450000, 'M', 100),
(24, 2, 15, 450000, 'L', 100),
(25, 2, 16, 450000, 'S', 100),
(26, 2, 17, 450000, 'M', 100),
(27, 2, 18, 450000, 'L', 100),
(28, 2, 19, 450000, 'S', 100),
(29, 2, 20, 450000, 'M', 100),
(30, 2, 21, 450000, 'L', 100),
(31, 2, 22, 450000, 'S', 100),
(32, 2, 23, 450000, 'M', 100),
(33, 2, 24, 450000, 'L', 100),
(34, 2, 22, 450000, 'S', 100),
(35, 2, 23, 450000, 'M', 100),
(36, 2, 24, 450000, 'L', 100),
(37, 2, 22, 450000, 'S', 100),
(38, 2, 25, 550000, 'S', 100),
(39, 2, 26, 550000, 'M', 100),
(40, 2, 27, 550000, 'L', 100),
(41, 1, 1, 450000, 'S', 40),
(42, 1, 2, 450000, 'M', 40),
(43, 1, 3, 450000, 'L', 40),
(44, 1, 4, 450000, 'S', 50),
(45, 1, 5, 450000, 'M', 100),
(46, 1, 6, 450000, 'L', 80),
(47, 1, 7, 450000, 'S', 40),
(48, 1, 8, 450000, 'M', 40),
(49, 1, 9, 450000, 'L', 40),
(50, 1, 10, 450000, 'S', 80),
(51, 1, 11, 450000, 'M', 80),
(52, 1, 12, 450000, 'L', 80),
(53, 2, 13, 450000, 'S', 100),
(54, 2, 14, 450000, 'M', 100),
(55, 2, 15, 450000, 'L', 100),
(56, 2, 16, 450000, 'S', 100),
(57, 2, 17, 450000, 'M', 100),
(58, 2, 18, 450000, 'L', 100),
(59, 2, 19, 450000, 'S', 100),
(60, 2, 20, 450000, 'M', 100),
(61, 2, 21, 450000, 'L', 100),
(62, 2, 13, 450000, 'S', 100),
(63, 2, 14, 450000, 'M', 100),
(64, 2, 15, 450000, 'L', 100),
(65, 2, 16, 450000, 'S', 100),
(66, 2, 17, 450000, 'M', 100),
(67, 2, 18, 450000, 'L', 100),
(68, 2, 19, 450000, 'S', 100),
(69, 2, 20, 450000, 'M', 100),
(70, 2, 21, 450000, 'L', 100),
(71, 2, 22, 450000, 'S', 100),
(72, 2, 23, 450000, 'M', 100),
(73, 2, 24, 450000, 'L', 100),
(74, 2, 22, 450000, 'S', 100),
(75, 2, 23, 450000, 'M', 100),
(76, 2, 24, 450000, 'L', 100),
(77, 2, 22, 450000, 'S', 100),
(78, 2, 25, 550000, 'S', 100),
(79, 2, 26, 550000, 'M', 100),
(80, 2, 27, 550000, 'L', 100),
(81, 3, 28, 450000, 'S', 100),
(82, 3, 29, 450000, 'M', 100),
(83, 3, 30, 450000, 'L', 100),
(84, 3, 31, 400000, 'S', 100),
(85, 3, 32, 400000, 'M', 100),
(86, 3, 33, 400000, 'L', 100),
(87, 3, 34, 400000, 'S', 100),
(88, 3, 35, 400000, 'M', 100),
(89, 3, 36, 400000, 'L', 100),
(90, 3, 37, 400000, 'S', 100),
(91, 3, 38, 400000, 'M', 100),
(92, 3, 39, 400000, 'L', 100),
(93, 3, 40, 400000, 'S', 100),
(94, 3, 41, 400000, 'M', 100),
(95, 3, 42, 400000, 'L', 100),
(96, 4, 46, 750000, 'S', 100),
(97, 4, 47, 750000, 'M', 100),
(98, 4, 48, 750000, 'L', 100),
(99, 4, 58, 650000, 'S', 100),
(100, 4, 59, 650000, 'M', 100),
(101, 4, 60, 650000, 'L', 100),
(102, 4, 49, 600000, 'S', 100),
(103, 4, 50, 600000, 'M', 100),
(104, 4, 51, 600000, 'L', 100),
(105, 4, 52, 600000, 'S', 100),
(106, 4, 53, 600000, 'M', 100),
(107, 4, 54, 600000, 'L', 100),
(108, 5, 70, 600000, 'S', 100),
(109, 5, 71, 600000, 'M', 100),
(110, 5, 72, 600000, 'L', 100),
(111, 5, 73, 500000, 'S', 100),
(112, 5, 74, 500000, 'M', 100),
(113, 5, 75, 500000, 'L', 100),
(114, 5, 76, 600000, 'S', 100),
(115, 5, 77, 600000, 'M', 100),
(116, 5, 78, 600000, 'L', 100),
(117, 5, 79, 400000, 'S', 100),
(118, 5, 80, 400000, 'M', 100),
(119, 5, 81, 400000, 'L', 100),
(120, 5, 82, 400000, 'S', 100),
(121, 5, 83, 400000, 'M', 100),
(122, 5, 84, 400000, 'L', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhgiamgia`
--

CREATE TABLE `chuongtrinhgiamgia` (
  `MA_CTGG` int(10) UNSIGNED NOT NULL,
  `TEN_CHUONG_TRINH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LOAI_CHUONG_TRINH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ND_GIAM_GIA` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `PHAN_TRAM_GIAM_GIA` float NOT NULL,
  `NGAY_BAT_DAU` datetime NOT NULL,
  `NGAY_KET_THUC` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinhgiamgia`
--

INSERT INTO `chuongtrinhgiamgia` (`MA_CTGG`, `TEN_CHUONG_TRINH`, `LOAI_CHUONG_TRINH`, `ND_GIAM_GIA`, `PHAN_TRAM_GIAM_GIA`, `NGAY_BAT_DAU`, `NGAY_KET_THUC`) VALUES
(1, 'Săn Sale 5-5', 'Giảm Giá Sản Phẩm', 'Giảm 10% cho các Sản Phẩm Ra Mắt Trong Tháng 5', 0.1, '2021-04-30 12:27:21', '2021-05-20 12:27:21'),
(2, 'Sản Phẩm Biểu Tượng', 'Giảm Giá Sản Phẩm', 'Giảm Giá 20% cho các Sản Phẩm Giá Từ 750000 VNĐ khi khách hàng mua >= 3 sản phẩm ', 0.2, '2021-01-09 12:49:49', '2021-05-04 07:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MA_DANH_MUC` int(10) UNSIGNED NOT NULL,
  `TEN_DANH_MUC` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MA_DANH_MUC`, `TEN_DANH_MUC`) VALUES
(1, 'Quản Lý Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groupquyen`
--

CREATE TABLE `groupquyen` (
  `MA_GROUP_QUYEN` int(10) UNSIGNED NOT NULL,
  `TEN_GROUP_QUYEN` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `groupquyen`
--

INSERT INTO `groupquyen` (`MA_GROUP_QUYEN`, `TEN_GROUP_QUYEN`) VALUES
(1, 'admin'),
(2, 'nhanvien'),
(3, 'khachhang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MA_HD` int(10) UNSIGNED NOT NULL,
  `MA_NV` int(10) UNSIGNED DEFAULT NULL,
  `MA_KH` int(10) UNSIGNED NOT NULL,
  `MA_MGG` int(10) UNSIGNED DEFAULT NULL,
  `DIA_CHI` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SODIENTHOAI` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TINH_TRANG` tinyint(1) DEFAULT NULL,
  `TIEN_GIAM_GIA` float DEFAULT NULL,
  `TONG_TIEN` float NOT NULL,
  `NGAY_LAP` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MA_HD`, `MA_NV`, `MA_KH`, `MA_MGG`, `DIA_CHI`, `SODIENTHOAI`, `TINH_TRANG`, `TIEN_GIAM_GIA`, `TONG_TIEN`, `NGAY_LAP`) VALUES
(1, 1, 1, NULL, 'Lê Thánh Tôn ,Quận 1 ,Tp Hồ Chí Minh', '', 0, 0, 3550000, '2021-04-20 21:56:21'),
(4, 1, 3, NULL, 'Quận 6.TP Hồ Chí Minh', '', 1, 0, 3500000, '2021-04-23 22:06:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MA_KH` int(10) UNSIGNED NOT NULL,
  `MA_TK` int(10) UNSIGNED DEFAULT NULL,
  `TEN_KH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EMAIL` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PHONE` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `GIOI_TINH` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DIA_CHI` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MA_KH`, `MA_TK`, `TEN_KH`, `EMAIL`, `PHONE`, `GIOI_TINH`, `DIA_CHI`) VALUES
(1, 1, 'Minh Trung', 'minhtrung4367@gmail.com', '', '', NULL),
(2, 1, 'Minh Trung', 'minhtrung4367@gmail.com', '', '', NULL),
(3, 1, 'Minh Trung', 'minhtrung4367@gmail.com', '', '', NULL),
(4, 1, 'Minh Trung', 'minhtrung4367@gmail.com', '', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MA_NV` int(10) UNSIGNED NOT NULL,
  `MA_TK` int(10) UNSIGNED DEFAULT NULL,
  `TEN_NV` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EMAIL` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PHONE` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `GIOI_TINH` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MA_NV`, `MA_TK`, `TEN_NV`, `EMAIL`, `PHONE`, `GIOI_TINH`) VALUES
(1, 4, 'Nguyễn Đức Minh Trung', 'minhtrung@gmail.com', '0707624367', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MA_PN` int(10) UNSIGNED NOT NULL,
  `MA_TK` int(10) UNSIGNED NOT NULL,
  `NGAY_NHAP` date NOT NULL,
  `TONG_DON_GIA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MA_PN`, `MA_TK`, `NGAY_NHAP`, `TONG_DON_GIA`) VALUES
(1, 2, '2020-11-06', 10000000),
(2, 1, '2020-12-02', 10000000),
(3, 1, '2021-01-05', 2050000),
(4, 2, '2021-05-03', 750000000),
(5, 1, '2021-05-08', 750000000),
(7, 1, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `MA_GROUP_QUYEN` int(10) UNSIGNED DEFAULT NULL,
  `MA_DANH_MUC` int(10) UNSIGNED DEFAULT NULL,
  `TEN_QUYEN` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`MA_GROUP_QUYEN`, `MA_DANH_MUC`, `TEN_QUYEN`) VALUES
(1, 1, 'Quản Lý Nhân Viên'),
(1, 1, 'Quản Lý Nhân Viên'),
(1, 1, 'Quản Lý Nhân Viên'),
(1, 1, 'Quản Lý Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MA_SP` int(10) UNSIGNED NOT NULL,
  `TEN_SP` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SO_LUONG` int(11) DEFAULT NULL,
  `DON_GIA` float DEFAULT NULL,
  `LOAI_SP` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KICH_THUOC` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MO_TA` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `HINH_ANH_URL` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MA_SP`, `TEN_SP`, `SO_LUONG`, `DON_GIA`, `LOAI_SP`, `KICH_THUOC`, `MO_TA`, `HINH_ANH_URL`) VALUES
(1, 'Tee HappyAniversary Yellow', 0, 500000, 'Tee', 'S', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary01.jpg'),
(2, 'Tee HappyAniversary Yellow', 0, 500000, 'Tee', 'M', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary01.jpg'),
(3, 'Tee HappyAniversary Yellow', 0, 500000, 'Tee', 'L', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary01.jpg'),
(4, 'Aniversary Big Logo', 50, 500000, 'Tee', 'S', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary02.jpg'),
(5, 'Aniversary Big Logo', 100, 500000, 'Tee', 'M', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary02.jpg'),
(6, 'Aniversary Big Logo', 80, 500000, 'Tee', 'L', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary02.jpg'),
(7, 'HappyAniversary Special Fire', 40, 600000, 'Tee', 'S', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary03.jpg'),
(8, 'HappyAniversary Special Fire', 40, 600000, 'Tee', 'M', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary03.jpg'),
(9, 'HappyAniversary Special Fire', 40, 600000, 'Tee', 'L', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary03.jpg'),
(10, 'HappyAniversary Church', 80, 500000, 'Tee', 'S', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary04.jpg'),
(11, 'HappyAniversary Church', 80, 500000, 'Tee', 'M', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary04.jpg'),
(12, 'HappyAniversary Church', 80, 500000, 'Tee', 'L', 'Kỷ Niệm 3 năm thành lập Three Clothing', 'aniversary04.jpg'),
(13, 'BIG-LOGO-LVENTS', 100, 550000, 'Tee', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'BIG-LOGO-LVENTS.jpg'),
(14, 'BIG-LOGO-LVENTS', 100, 550000, 'Tee', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'BIG-LOGO-LVENTS.jpg'),
(15, 'BIG-LOGO-LVENTS', 100, 550000, 'Tee', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'BIG-LOGO-LVENTS.jpg'),
(16, 'BIG-LOGO-LVENTS', 100, 550000, 'Tee', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'BIG-LOGO-LVENTS.jpg'),
(17, 'BIG-LOGO-LVENTS', 100, 550000, 'Tee', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'BIG-LOGO-LVENTS.jpg'),
(18, 'BIG-LOGO-LVENTS', 100, 550000, 'Tee', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'BIG-LOGO-LVENTS.jpg'),
(19, 'HOLLIDAY SUMMER', 100, 580000, 'Tee', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Holiday_Summer.jpg'),
(20, 'HOLLIDAY SUMMER', 100, 580000, 'Tee', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Holiday_Summer.jpg'),
(21, 'HOLLIDAY SUMMER', 100, 580000, 'Tee', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Holiday_Summer.jpg'),
(22, 'HOLLIDAY FUNNY', 100, 600000, 'Tee', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Holiday_Summer-Fun.jpg'),
(23, 'HOLLIDAY FUNNY', 100, 600000, 'Tee', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Holiday_Summer-Fun.jpg'),
(24, 'HOLLIDAY FUNNY', 100, 600000, 'Tee', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Holiday_Summer-Fun.jpg'),
(25, 'ANGLES-RAINBOW', 100, 700000, 'Hoodie', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodies-Angles.jpg'),
(26, 'ANGLES-RAINBOW', 100, 700000, 'Hoodie', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodies-Angles.jpg'),
(27, 'ANGLES-RAINBOW', 100, 700000, 'Hoodie', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodies-Angles.jpg'),
(28, 'Hoodie-Orange', 100, 450000, 'Hoodie', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Orange.jpg'),
(29, 'Hoodie-Orange', 100, 450000, 'Hoodie', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Orange.jpg'),
(30, 'Hoodie-Orange', 100, 450000, 'Hoodie', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Orange.jpg'),
(31, 'Funny-Club', 100, 400000, 'Hoodie', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Funny-Club.jpg'),
(32, 'Funny-Club', 100, 400000, 'Hoodie', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Funny-Club.jpg'),
(33, 'Funny-Club', 100, 400000, 'Hoodie', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Funny-Club.jpg'),
(34, 'Vie-Life', 100, 400000, 'Hoodie', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Vie-Life.jpg'),
(35, 'Vie-Life', 100, 400000, 'Hoodie', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Vie-Life.jpg'),
(36, 'Vie-Life', 100, 400000, 'Hoodie', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Vie-Life.jpg'),
(37, 'Hoodie-Die-Blur', 100, 400000, 'Hoodie', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Die-Blur.jpg'),
(38, 'Hoodie-Die-Blur', 100, 400000, 'Hoodie', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Die-Blur.jpg'),
(39, 'Hoodie-Die-Blur', 100, 400000, 'Hoodie', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Die-Blur.jpg'),
(40, 'Hoodie-Blur-Blue', 100, 400000, 'Hoodie', 'S', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Blur-Blue.jpg'),
(41, 'Hoodie-Blur-Blue', 100, 400000, 'Hoodie', 'M', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Blur-Blue.jpg'),
(42, 'Hoodie-Blur-Blue', 100, 400000, 'Hoodie', 'L', 'Không Mua Bây Giờ Thì Mua Bao Giờ!!!', 'Hoodie-Blur-Blue.jpg'),
(46, 'Prive-Monogram-Cardigan', 40, 750000, 'Sweatshirt', 'S', 'Tái hiện cảm xúc của một kỳ nghỉ mát ngoài trời, \"Les Vacances\" mang đến những màu sắc mới tượng trưng cho màu của thiên nhiên: Màu xanh lá (Deep Green) của cây cỏ, màu nâu (Brown) của mùa thu, màu hồng cam (Living Coral) của những bông hoa dưới ánh mặt trời. Những gam màu này được kết hợp uyển chuyển với gam màu chủ đạo của Privé, tạo nên những phối màu sang trọng và trẻ trung, giúp cho kỳ nghỉ mát của bạn trở nên rực rỡ hơn bao giờ hết. \r\nĐược thiết kế dành cho những hoạt động ngoài trời, chất liệu chủ đạo của BST – len Rayon – luôn đảm bảo sự thoáng mát và thoải mái cho người mặc. Ngoài ra, sự đa dạng về kiểu dáng sản phẩm cũng giúp người mặc có nhiều lựa chọn hơn về phong cách để phù hợp nhất với mỗi chuyến đi của mình.', 'Prive-Monogram-Cardigan.jpg'),
(47, 'Prive-Monogram-Cardigan', 40, 750000, 'Sweatshirt', 'M', 'Tái hiện cảm xúc của một kỳ nghỉ mát ngoài trời, \"Les Vacances\" mang đến những màu sắc mới tượng trưng cho màu của thiên nhiên: Màu xanh lá (Deep Green) của cây cỏ, màu nâu (Brown) của mùa thu, màu hồng cam (Living Coral) của những bông hoa dưới ánh mặt trời. Những gam màu này được kết hợp uyển chuyển với gam màu chủ đạo của Privé, tạo nên những phối màu sang trọng và trẻ trung, giúp cho kỳ nghỉ mát của bạn trở nên rực rỡ hơn bao giờ hết. \r\nĐược thiết kế dành cho những hoạt động ngoài trời, chất liệu chủ đạo của BST – len Rayon – luôn đảm bảo sự thoáng mát và thoải mái cho người mặc. Ngoài ra, sự đa dạng về kiểu dáng sản phẩm cũng giúp người mặc có nhiều lựa chọn hơn về phong cách để phù hợp nhất với mỗi chuyến đi của mình.', 'Prive-Monogram-Cardigan.jpg'),
(48, 'Prive-Monogram-Cardigan', 40, 750000, 'Sweatshirt', 'L', 'Tái hiện cảm xúc của một kỳ nghỉ mát ngoài trời, \"Les Vacances\" mang đến những màu sắc mới tượng trưng cho màu của thiên nhiên: Màu xanh lá (Deep Green) của cây cỏ, màu nâu (Brown) của mùa thu, màu hồng cam (Living Coral) của những bông hoa dưới ánh mặt trời. Những gam màu này được kết hợp uyển chuyển với gam màu chủ đạo của Privé, tạo nên những phối màu sang trọng và trẻ trung, giúp cho kỳ nghỉ mát của bạn trở nên rực rỡ hơn bao giờ hết. \r\nĐược thiết kế dành cho những hoạt động ngoài trời, chất liệu chủ đạo của BST – len Rayon – luôn đảm bảo sự thoáng mát và thoải mái cho người mặc. Ngoài ra, sự đa dạng về kiểu dáng sản phẩm cũng giúp người mặc có nhiều lựa chọn hơn về phong cách để phù hợp nhất với mỗi chuyến đi của mình.', 'Prive-Monogram-Cardigan.jpg'),
(49, 'Summer-Funny', 100, 600000, 'Tee', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Summer-funny.jpg'),
(50, 'Summer-Funny', 100, 600000, 'Tee', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Summer-funny.jpg'),
(51, 'Summer-Funny', 100, 600000, 'Tee', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Summer-funny.jpg'),
(52, 'Summer-Red', 100, 600000, 'T-Shirt', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Summer-red.jpg'),
(53, 'Summer-Red', 100, 600000, 'T-Shirt', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Summer-red.jpg'),
(54, 'Summer-Red', 100, 600000, 'T-Shirt', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Summer-red.jpg'),
(55, 'Cream-Pink', 100, 600000, 'T-Shirt', 'S', 'T-Shirt Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'T-Shirt-pink.jpg'),
(56, 'Cream-Pink', 100, 600000, 'T-Shirt', 'M', 'T-Shirt Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'T-Shirt-pink.jpg'),
(57, 'Cream-Pink', 100, 600000, 'T-Shirt', 'L', 'T-Shirt Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'T-Shirt-pink.jpg'),
(58, 'UMGJ-FALLEN-Tee', 100, 650000, 'Tee', 'S', 'Tái hiện cảm xúc của một kỳ nghỉ mát ngoài trời, \"Les Vacances\" mang đến những màu sắc mới tượng trưng cho màu của thiên nhiên: Màu xanh lá (Deep Green) của cây cỏ, màu nâu (Brown) của mùa thu, màu hồng cam (Living Coral) của những bông hoa dưới ánh mặt trời. Những gam màu này được kết hợp uyển chuyển với gam màu chủ đạo của Privé, tạo nên những phối màu sang trọng và trẻ trung, giúp cho kỳ nghỉ mát của bạn trở nên rực rỡ hơn bao giờ hết. \r\nĐược thiết kế dành cho những hoạt động ngoài trời, chất liệu chủ đạo của BST – len Rayon – luôn đảm bảo sự thoáng mát và thoải mái cho người mặc. Ngoài ra, sự đa dạng về kiểu dáng sản phẩm cũng giúp người mặc có nhiều lựa chọn hơn về phong cách để phù hợp nhất với mỗi chuyến đi của mình.', 'UMGJ-FALLEN-Tee.jpg'),
(59, 'UMGJ-FALLEN-Tee', 100, 650000, 'Tee', 'M', 'Tái hiện cảm xúc của một kỳ nghỉ mát ngoài trời, \"Les Vacances\" mang đến những màu sắc mới tượng trưng cho màu của thiên nhiên: Màu xanh lá (Deep Green) của cây cỏ, màu nâu (Brown) của mùa thu, màu hồng cam (Living Coral) của những bông hoa dưới ánh mặt trời. Những gam màu này được kết hợp uyển chuyển với gam màu chủ đạo của Privé, tạo nên những phối màu sang trọng và trẻ trung, giúp cho kỳ nghỉ mát của bạn trở nên rực rỡ hơn bao giờ hết. \r\nĐược thiết kế dành cho những hoạt động ngoài trời, chất liệu chủ đạo của BST – len Rayon – luôn đảm bảo sự thoáng mát và thoải mái cho người mặc. Ngoài ra, sự đa dạng về kiểu dáng sản phẩm cũng giúp người mặc có nhiều lựa chọn hơn về phong cách để phù hợp nhất với mỗi chuyến đi của mình.', 'UMGJ-FALLEN-Tee.jpg'),
(60, 'UMGJ-FALLEN-Tee', 100, 650000, 'Tee', 'L', 'Tái hiện cảm xúc của một kỳ nghỉ mát ngoài trời, \"Les Vacances\" mang đến những màu sắc mới tượng trưng cho màu của thiên nhiên: Màu xanh lá (Deep Green) của cây cỏ, màu nâu (Brown) của mùa thu, màu hồng cam (Living Coral) của những bông hoa dưới ánh mặt trời. Những gam màu này được kết hợp uyển chuyển với gam màu chủ đạo của Privé, tạo nên những phối màu sang trọng và trẻ trung, giúp cho kỳ nghỉ mát của bạn trở nên rực rỡ hơn bao giờ hết. \r\nĐược thiết kế dành cho những hoạt động ngoài trời, chất liệu chủ đạo của BST – len Rayon – luôn đảm bảo sự thoáng mát và thoải mái cho người mặc. Ngoài ra, sự đa dạng về kiểu dáng sản phẩm cũng giúp người mặc có nhiều lựa chọn hơn về phong cách để phù hợp nhất với mỗi chuyến đi của mình.', 'UMGJ-FALLEN-Tee.jpg'),
(70, 'DROP-SHOULDER-SS-POLO-SHIRT', 100, 600000, 'Tee', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'DROP-SHOULDER-SS-POLO-SHIRT.jpg'),
(71, 'DROP-SHOULDER-SS-POLO-SHIRT', 100, 600000, 'Tee', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'DROP-SHOULDER-SS-POLO-SHIRT.jpg'),
(72, 'DROP-SHOULDER-SS-POLO-SHIRT', 100, 600000, 'Tee', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'DROP-SHOULDER-SS-POLO-SHIRT.jpg'),
(73, 'Tee-Basic-Purple', 100, 500000, 'Tee', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Tee-basic-purple.jpg'),
(74, 'Tee-Basic-Purple', 100, 500000, 'Tee', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Tee-basic-purple.jpg'),
(75, 'Tee-Basic-Purple', 100, 500000, 'Tee', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Tee-basic-purple.jpg'),
(76, 'EMGO-VARSITY', 50, 600000, 'Varsity', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'EMGO-VARSITY.jpg'),
(77, 'EMGO-VARSITY', 50, 600000, 'Varsity', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'EMGO-VARSITY.jpg'),
(78, 'EMGO-VARSITY', 50, 600000, 'Varsity', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'EMGO-VARSITY.jpg'),
(79, 'Jacket-Black', 50, 400000, 'Jacket', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Jacket-Black.jpg'),
(80, 'Jacket-Black', 50, 400000, 'Jacket', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Jacket-Black.jpg'),
(81, 'Jacket-Black', 50, 400000, 'Jacket', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Jacket-Black.jpg'),
(82, 'Jacket-Sweet', 50, 400000, 'Jacket', 'S', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Jacket_Sweeat.jpg'),
(83, 'Jacket-Sweet', 50, 400000, 'Jacket', 'M', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Jacket_Sweeat.jpg'),
(84, 'Jacket-Sweet', 50, 400000, 'Jacket', 'L', 'DVRK Privé Fall 2021 \"Les Vacances\" – Định nghĩa của một kỳ nghỉ mát hoàn hảo.\r\nVới Privé, kỳ nghỉ hoàn hảo không chỉ là nơi có nắng vàng, cát trắng, biển xanh mà còn là nơi có thể để lại thật nhiều kỷ niệm với những người bạn, người thân và đong đầy mọi cung bậc cảm xúc. Ngoài ra, để những khoảnh khắc tuyệt vời ấy được lưu giữ một cách trọn vẹn nhất, đương nhiên là không thể thiếu những bộ trang phục đẹp mắt và ưng ý nhất mà chúng ta đã dành riêng cho kỳ nghỉ này. \r\n', 'Jacket_Sweeat.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `ID` int(11) NOT NULL,
  `src` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`ID`, `src`, `active`) VALUES
(1, 'img1.jpg', 1),
(2, 'img2.jpg', 1),
(3, 'img3.jpg', 1),
(4, 'img4.jpg', 1),
(5, 'img5.jpg', 1),
(6, 'img6.jpg', 1),
(1, 'img1.jpg', 1),
(2, 'img2.jpg', 1),
(3, 'img3.jpg', 1),
(4, 'img4.jpg', 1),
(5, 'img5.jpg', 1),
(6, 'img6.jpg', 1),
(1, 'img1.jpg', 1),
(2, 'img2.jpg', 1),
(3, 'img3.jpg', 1),
(4, 'img4.jpg', 1),
(5, 'img5.jpg', 1),
(6, 'img6.jpg', 1),
(1, 'img1.jpg', 1),
(2, 'img2.jpg', 1),
(3, 'img3.jpg', 1),
(4, 'img4.jpg', 1),
(5, 'img5.jpg', 1),
(6, 'img6.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MA_TK` int(10) UNSIGNED NOT NULL,
  `MA_GROUP_QUYEN` int(10) UNSIGNED DEFAULT NULL,
  `TEN_DANG_NHAP` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MAT_KHAU` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `STATUS` int(1) NOT NULL DEFAULT 1,
  `EMAIL` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MA_TK`, `MA_GROUP_QUYEN`, `TEN_DANG_NHAP`, `MAT_KHAU`, `STATUS`, `EMAIL`) VALUES
(1, 2, 'Minh Trung', 'e10adc3949ba59abbe56e057f20f883e', 1, 'minhtrung4367@gmail.com'),
(2, 1, 'admin', 'admin', 1, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgiamgia`
--
ALTER TABLE `chitietgiamgia`
  ADD KEY `MA_CTGG` (`MA_CTGG`),
  ADD KEY `MA_SP` (`MA_SP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MA_CTHD`),
  ADD KEY `MA_SP` (`MA_SP`),
  ADD KEY `MA_HD` (`MA_HD`) USING BTREE;

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`MA_CTPN`),
  ADD KEY `MA_PN` (`MA_PN`),
  ADD KEY `MA_SP` (`MA_SP`);

--
-- Chỉ mục cho bảng `chuongtrinhgiamgia`
--
ALTER TABLE `chuongtrinhgiamgia`
  ADD PRIMARY KEY (`MA_CTGG`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MA_DANH_MUC`);

--
-- Chỉ mục cho bảng `groupquyen`
--
ALTER TABLE `groupquyen`
  ADD PRIMARY KEY (`MA_GROUP_QUYEN`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MA_HD`),
  ADD KEY `MA_KH` (`MA_KH`),
  ADD KEY `MA_MGG` (`MA_MGG`),
  ADD KEY `MA_NV` (`MA_NV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MA_KH`),
  ADD KEY `MA_TK` (`MA_TK`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MA_NV`),
  ADD KEY `MA_TK` (`MA_TK`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MA_PN`),
  ADD KEY `MA_TK` (`MA_TK`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD KEY `MA_GROUP_QUYEN` (`MA_GROUP_QUYEN`),
  ADD KEY `MA_DANH_MUC` (`MA_DANH_MUC`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MA_SP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MA_TK`),
  ADD KEY `MA_GROUP_QUYEN` (`MA_GROUP_QUYEN`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `MA_CTHD` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `MA_CTPN` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhgiamgia`
--
ALTER TABLE `chuongtrinhgiamgia`
  MODIFY `MA_CTGG` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MA_DANH_MUC` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `groupquyen`
--
ALTER TABLE `groupquyen`
  MODIFY `MA_GROUP_QUYEN` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MA_HD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MA_KH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MA_NV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MA_PN` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MA_SP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MA_TK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietgiamgia`
--
ALTER TABLE `chitietgiamgia`
  ADD CONSTRAINT `chitietgiamgia_ibfk_2` FOREIGN KEY (`MA_CTGG`) REFERENCES `chuongtrinhgiamgia` (`MA_CTGG`),
  ADD CONSTRAINT `chitietgiamgia_ibfk_3` FOREIGN KEY (`MA_SP`) REFERENCES `sanpham` (`MA_SP`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MA_SP`) REFERENCES `sanpham` (`MA_SP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MA_HD`) REFERENCES `hoadon` (`MA_HD`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`MA_PN`) REFERENCES `phieunhap` (`MA_PN`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`MA_SP`) REFERENCES `sanpham` (`MA_SP`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MA_KH`) REFERENCES `khachhang` (`MA_KH`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`MA_MGG`) REFERENCES `chuongtrinhgiamgia` (`MA_CTGG`),
  ADD CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`MA_NV`) REFERENCES `nhanvien` (`MA_NV`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`MA_TK`) REFERENCES `taikhoan` (`MA_TK`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MA_TK`) REFERENCES `taikhoan` (`MA_TK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
