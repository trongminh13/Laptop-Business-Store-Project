-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
-- User : dominh130802@gmail.com
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2024 lúc 07:19 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_reviews`
--

CREATE TABLE `customer_reviews` (
  `id_dangky` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_reviews`
--

INSERT INTO `customer_reviews` (`id_dangky`, `name`, `comment`, `created_at`) VALUES
(2, 'Dương Văn Hưng', 'Hay em', '2024-01-26 06:29:39.73934'),
(4, 'Minh hai son', ' ', '2024-01-31 07:39:05.62307'),
(345, 'minh13', 'mk admin:123456789', '0000-00-00 00:00:00.00000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(8, 'dotrongminh', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Minh Ngu', 'minhngu@gmail.com', 'Khương Trung- Thanh Xuân- Hà Nội', '6ebe76c9fb411be97b3b0d48b791a7c9', '0921991634'),
(2, 'Dương Văn Hưng', 'hung@gmail.com', 'Hoàng Mai - Hà Nội', '6ebe76c9fb411be97b3b0d48b791a7c9', '0273528394'),
(3, 'Vũ Tuấn', 'spd@gmail.com', 'Trái đất', '6ebe76c9fb411be97b3b0d48b791a7c9', '0293649302'),
(4, 'Minh hai son', 'gamod@gmail.com', 'dgagfhfdhsf', '6ebe76c9fb411be97b3b0d48b791a7c9', '0921991634'),
(5, '   ', 'faddfd@gmail.com', 'minh ffda t re', '25d55ad283aa400af464c76d713c07ad', '0921991634'),
(6, ' ', 'haisonbac@gmail.com', 'dgagfhfdhsf', '25f9e794323b453885f5181f1b624d0b', '0921995432'),
(7, 'hh', '1@1.1', '           ', '8ddcff3a80f4189ca1c9d4d902c3c909', '0123456789'),
(8, 'minh13', 'abc@gmail.com', 'dgagfhfdhsf', '25f9e794323b453885f5181f1b624d0b', '0921991635');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'MacBook', 3),
(3, 'MSI', 2),
(4, 'ASUS', 1),
(9, 'Lenovo', 4),
(10, 'DELL', 1),
(11, 'HP', 1),
(12, 'Acer', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `id_donhang` int(11) NOT NULL,
  `id_dangky` int(11) NOT NULL,
  `code_donhang` int(11) NOT NULL,
  `tinhtrang` int(3) NOT NULL DEFAULT 0,
  `ngaydat` timestamp NOT NULL DEFAULT current_timestamp(),
  `cart_payment` varchar(50) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`id_donhang`, `id_dangky`, `code_donhang`, `tinhtrang`, `ngaydat`, `cart_payment`, `cart_shipping`) VALUES
(45, 363642, 3491, 1, '2024-01-18 06:17:55', 'tien mat', 3),
(46, 3, 2512, 1, '2024-01-26 07:23:18', 'vnpay', 5),
(47, 3, 8073, 1, '2024-01-26 07:26:11', 'tien mat', 5),
(48, 3, 3699, 1, '2024-01-26 07:27:21', 'tien mat', 5),
(49, 3, 2429, 1, '2024-01-26 07:28:16', 'paypal', 5),
(50, 3, 6846, 1, '2024-01-26 07:33:10', 'paypal', 5),
(51, 3, 4496, 1, '2024-01-26 07:34:52', '', 0),
(52, 3, 6352, 1, '2024-01-26 07:37:17', 'tien mat', 5),
(53, 3, 5557, 1, '2024-01-26 07:39:11', 'tien mat', 5),
(54, 3, 8363, 0, '2024-01-26 07:42:52', 'tien mat', 5),
(55, 3, 4265, 1, '2024-01-26 09:39:21', 'chuyen khoan', 5),
(56, 3, 4333, 1, '2024-01-26 09:39:43', 'tien mat', 5),
(57, 4, 1875, 0, '2024-01-30 05:36:23', 'tien mat', 7),
(58, 4, 4934, 1, '2024-01-30 05:39:10', 'tien mat', 7),
(59, 4, 8332, 0, '2024-01-30 06:16:54', 'chuyen khoan', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang_chitiet`
--

CREATE TABLE `tbl_donhang_chitiet` (
  `id_donhang_chitiet` int(11) NOT NULL,
  `code_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang_chitiet`
--

INSERT INTO `tbl_donhang_chitiet` (`id_donhang_chitiet`, `code_donhang`, `id_sanpham`, `soluongmua`) VALUES
(23, 5882, 204, 1),
(24, 8777, 204, 1),
(25, 3561, 174, 1),
(26, 4155, 194, 1),
(27, 4927, 204, 1),
(28, 9034, 202, 1),
(29, 7543, 189, 1),
(30, 7543, 169, 1),
(31, 3474, 194, 1),
(32, 382, 196, 2),
(33, 382, 177, 1),
(34, 8778, 193, 1),
(35, 8022, 195, 1),
(36, 4596, 198, 1),
(37, 9010, 179, 1),
(38, 8735, 194, 1),
(39, 3491, 168, 1),
(40, 2512, 220, 2),
(41, 8073, 193, 1),
(42, 2429, 165, 1),
(43, 6846, 166, 1),
(44, 4496, 201, 1),
(45, 6352, 193, 1),
(46, 5557, 203, 1),
(47, 8363, 204, 1),
(48, 4265, 194, 1),
(49, 4333, 222, 1),
(50, 1875, 227, 1),
(51, 4934, 229, 1),
(52, 4934, 195, 1),
(53, 8332, 225, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p>Đỗ Trọng Minh-13/08/2002<br />\r\nDương Văn Hưng-29/11/2002<br />\r\nVũ Minh Tuấn-15/08/2002</p>\r\n<p>mk admin:123456789</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(300) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(165, 'Apple Macbook Air M2', '32990000', 6, '1704270075_macbook_air_m22.webp', '<p>M&aacute;y mới 100%, đầy đủ phụ kiện từ nh&agrave; sản xuất. Sản phẩm c&oacute; m&atilde; SA/A (được Apple Việt Nam ph&acirc;n phối ch&iacute;nh thức).</p>\n\n<p>Th&acirc;n m&aacute;y, c&aacute;p sạc, s&aacute;ch HDSD<', '<h1>&nbsp;</h1>\n\n<ul>\n	<li>\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\n\n	<p>Loại card đồ họa</p>\n\n	<p>8 nh&acirc;n GPU, 16 nh&acirc;n Neural Engine</p>\n\n	<p>Loại CPU</p>\n\n	<p>Apple M2</p>\n	</li>\n</ul>\n\n<p>&nbsp;</p>\n', 1, 2),
(166, 'Apple MacBook Air M1 ', '19290000', 6, '1704270105_air_m2.webp', '<p>M&aacute;y mới 100%, đầy đủ phụ kiện từ nh&agrave; sản xuất. Sản phẩm c&oacute; m&atilde; SA/A (được Apple Việt Nam ph&acirc;n phối ch&iacute;nh thức).</p>\r\n\r\n<p>M&aacute;y, S&aacute;ch HDSD, C&aacute;p sạc USB-C (2 m)', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>GPU 7 nh&acirc;n, 16 nh&acirc;n Neural Engine</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>8 nh&acirc;n với 4 nh&acirc;n hiệu năng cao v&agrave; 4 nh&acirc;n tiết kiệm điện</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 2),
(167, 'Apple Macbook Pro 13 M2', '25890000', 6, '1704270258_pro-m2.webp', '<p>M&aacute;y mới 100%, đầy đủ phụ kiện từ nh&agrave; sản xuất. Sản phẩm c&oacute; m&atilde; SA/A (được Apple Việt Nam ph&acirc;n phối ch&iacute;nh thức).</p>\r\n\r\n<p>M&aacute;y, S&aacute;ch HDSD, D&acirc;y c&aacute;p sạc U', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>10 nh&acirc;n GPU</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Apple M2 t&aacute;m nh&acirc;n CPU</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 2),
(168, 'Macbook Pro 14 M1 Pro', '28970000', 6, '1704270364_mac_pro.webp', '<p>M&aacute;y mới 100%, đầy đủ phụ kiện từ nh&agrave; sản xuất. Sản phẩm c&oacute; m&atilde; SA/A (được Apple Việt Nam ph&acirc;n phối ch&iacute;nh thức).</p>\r\n\r\n<p>MacBook Pro 14-inch, củ sạc 67W USB-C, c&aacute;p sạ', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>16 GPU</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>M1 Pro/M1 Max 10 CPU</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 2),
(169, 'Macbook Pro 14 M3', '44990000', 6, '1704270459_macbook_6_.webp', '<p>1 ĐỔI 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng nh&agrave; sản xuất. Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh ch&iacute;nh h&atilde;ng Apple: CareS</p>\r\n', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>10 nh&acirc;n<br />\r\n	Neural Engine 16 nh&acirc;n</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Apple M3 8 nh&acirc;n</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 2),
(170, 'Laptop HP Pavilion 14-DV2073TU 7C0P2PA', '16990000', 6, '1704270647_text_ng_n_6__47.webp', '<p>Mới, đầy đủ phụ kiện từ nh&agrave; sản xuất</p>\r\n\r\n<p>Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agra', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel Iris Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5-1235U, 10 l&otilde;i / 12 luồng, 4.40 GHz, 12MB</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 11),
(171, 'Laptop HP Victus 15-FA1155TX 952R1PA', '17990000', 6, '1704270778_text_ng_n_6_29.webp', '<p>M&aacute;y, sạc, s&aacute;ch hướng dẫn</p>\r\n\r\n<p>Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agrave; sản xuất', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Nvidia GeForce RTX 2050 4GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Core i5 12450H 3.3GHz, Turbo tối đa 4.4 GHz</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 11),
(172, 'Laptop HP Pavilion 15-EG2037TX 6K783PA', '15290000', 6, '1704270918_hp_pavilion_15-eg2037tx_6k783pa_1.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng</p>\r\n\r\n<p>Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&reg; GeForce&reg; MX550 2GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel&reg; Core&trade; i5-1235U</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 11),
(173, 'Laptop HP Zbook Firefly 14 G8 1A2F1AV', '19990000', 6, '1704271018_gaming_003_3_.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng</p>\r\n\r\n<p>D&acirc;y nguồn ( 2 d&acirc;y ) , S&aacute;ch hướng dẫn, Sạc Laptop HP</p>\r\n\r\n<p>Bảo h&agrave;nh ch&iacute;nh h', '<h1>&nbsp;</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel&reg; Iris&reg; Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel&reg; Core&trade; i5-1135G7 2.40GHz up to 4.20GHz, 4 nh&acirc;n 8 luồng<br />\r\n	8MB Intel&reg; Smart Cache</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 11),
(174, 'Laptop HP Elitebook 630 G9 6M142PA', '17490000', 6, '1704271137_text_ng_n_14__1_65.webp', '<p>Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agrave; sản xuất.</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel Iris Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5-1235U ( 1.3 GHz - 4.4GHz / 12MB / 10 nh&acirc;n, 12 luồng )</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 11),
(175, 'Laptop MSI Gaming Bravo 15 B7ED-010VN', '15990000', 6, '1704271310_msi_1.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>AMD Radeon RX 6550M, 4 GB</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen 5 - 7535HS (6 l&otilde;i / 12 luồng, 3.30 GHz, Turbo Boost 4.55 GHz, 16 MB)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 3),
(176, 'Laptop MSI Gaming GF63 12UCX-841VN', '25890000', 7, '1704271394_text_ng_n_9__3_2.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA GeForce RTX 2050 4GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5-12450H (2.0 GHz - 4.4 GHz, 12MB, 8 nh&acirc;n / 12 lu&ocirc;̀ng)</p>\r\n	</li>\r\n</ul>\r\n', 1, 3),
(177, 'Laptop MSI Modern 14 C11M-011VN', '25670000', 15, '1704271502_text_ng_n_17__1_32.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i3-1115G4 (3.00 GHz, up to 4.10 GHz, 6MB, 2 l&otilde;i / 4 luồng)</p>\r\n	</li>\r\n</ul>\r\n', 1, 3),
(178, 'Laptop MSI Gaming GF63 12UC-887VN', '28000000', 3, '1704271577_text_ng_n_10__3_11.webp', '<p>Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agrave; sản xuất.</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Nvidia Geforce RTX 3050 4GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i7-12650H 3.5GHz up to 4.70GHz 24MB, 10 nh&acirc;n, 16 luồng</p>\r\n	</li>\r\n</ul>\r\n', 1, 3),
(179, 'Laptop MSI Crosshair 15 B12UEZ-460VN', '30650000', 15, '1704271662_text_ng_n_20_.webp', '<p>Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agrave; sản xuất.</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA GeForce RTX 3060 6GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i7-12700H 14 nh&acirc;n 24 luồng, Tốc độ CPU 3.50 GHz</p>\r\n	</li>\r\n</ul>\r\n', 1, 3),
(185, 'Laptop Asus TUF GAMING F15 FX506HF-HN014W', '19690000', 13, '1704271972_text_ng_n_10__2_80.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y<', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA GeForce RTX 2050 4GB</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5-11400H (12MB Cache, up to 4.6GHz, 6 l&otilde;i / 12 luồng)</p>\r\n	</li>\r\n</ul>\r\n', 1, 4),
(186, 'Laptop Asus VivoBook Go 14 E1404FA-NK177W', '13890000', 8, '1704272073_text_ng_n_-_2023-06-08t005130.908.webp', '<p>Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agrave; sản xuất.</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>AMD Radeon Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen 5 7520U (4MB cache, up to 4.3 GHz, 4 l&otilde;i/8 luồng)</p>\r\n	</li>\r\n</ul>\r\n', 1, 4),
(187, 'Laptop Asus Zenbook 14 OLED UM3402YA-KM405W', '20990000', 4, '1704272171_text_d_i_1__1_3.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng</p>\r\n\r\n<p>Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>AMD Radeon Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen 5 7530U (2.0GHz, 6 l&otilde;i / 12 luồng, 16MB cache, up to 4.5 GHz max boost)</p>\r\n	</li>\r\n</ul>\r\n', 1, 4),
(188, 'Laptop Asus ROG Strix G16 G614JU-N3135W', '32990000', 9, '1704272280_text_ng_n_20__1_21.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&nbsp;GeForce&nbsp;RTX&nbsp;4050&nbsp;6GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5-13450HX Gen 13 (2.4 GHz, 20M Cache, up to 4.6 GHz, 10 l&otilde;i: 6 P / 4 E)</p>\r\n	</li>\r\n</ul>\r\n', 1, 4),
(189, 'Laptop ASUS ROG Flow X13 GV301RC-LJ050W', '29990000', 1, '1704272383_10h42.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&nbsp;GeForce&nbsp;RTX&nbsp;3050</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen 7 6800HS</p>\r\n	</li>\r\n</ul>\r\n', 1, 4),
(190, 'Laptop Lenovo IdeaPad Gaming 3 15ACH6 82K2027QVN', '17990000', 2, '1704272479_text_d_i_2_2.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA GeForce RTX 2050 4GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen 5 5500H (6 l&otilde;i / 12 luồng, 3.6 / 4.2GHz, 3MB L2 / 16MB L3)</p>\r\n	</li>\r\n</ul>\r\n', 1, 9),
(191, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009NVN', '25890000', 10, '1704272553_gaming_003_3__3.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 36 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel Iris Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5-1135G7 (4C / 8T, 2.4 / 4.2GHz, 8MB)</p>\r\n	</li>\r\n</ul>\r\n', 1, 9),
(192, 'Laptop Lenovo Ideapad Gaming 3 15ARH7 82SB00BBVN', '17990000', 7, '1704272623_lenovo_ideapad_gaming.webp', '<p>M&aacute;y, sạc, s&aacute;ch hướng dẫn/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y nếu c&oacute; lỗi phần cứng từ nh&agrave; sản xuất.</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&reg; GeForce RTX&trade; 3050 4GB GDDR6 TGP 85W</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen&trade; 5 6600H (6 nh&acirc;n 12 luồng xung nhịp tối đa 3.3Ghz)</p>\r\n	</li>\r\n</ul>\r\n', 1, 9),
(193, 'Laptop Lenovo LOQ 15APH8 82XT00AKVN', '24990000', 8, '1704272717_text_d_i_1__1_2.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA GeForce RTX 4050 6GB GDDR6, Boost Clock 2370MHz, TGP 95W</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>AMD Ryzen 7 7840HS (8 l&otilde;i / 16 luồng, 3.8 / 5.1GHz, 8MB L2 / 16MB L3)</p>\r\n	</li>\r\n</ul>\r\n', 1, 9),
(194, 'Laptop Lenovo IdeaPad 3 14ITL6 82H701QWVN', '15290000', 8, '1704272806_text_ng_n_20__1_44.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 24 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i3-1115G4 (2 l&otilde;i / 4 luồng, 3.0 / 4.1GHz, 6MB)</p>\r\n	</li>\r\n</ul>\r\n', 1, 9),
(195, 'Laptop Dell Latidude 7320 9PPWV', '16990000', 1, '1704272901_laptop-dell-latitude-7320-9ppwv.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Sạc, s&aacute;ch hướng dẫn sử dụng</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Iris Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>i5-1145G7</p>\r\n	</li>\r\n</ul>\r\n', 1, 10),
(196, 'Laptop Dell Inspiron 15 3520 D5N53', '10290000 ', 3, '1704272991_text_ng_n_6_9.webp', '<p>Bảo h&agrave;nh 1 đổi 1 trong v&ograve;ng 12 th&aacute;ng bởi Nh&agrave; Ph&acirc;n Phối (&Aacute;p dụng m&aacute;y b&aacute;n từ 1.7.2022) C&aacute;c m&aacute;y mua trước đ&oacute; &aacute;p dụng bảo h&agrave;nh 12 th&aacute;ng t', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i3-1115G4 (6 MB cache, 2 l&otilde;i / 4 luồng, 3.00 GHz to 4.10 GHz, 15 W)</p>\r\n	</li>\r\n</ul>\r\n', 1, 10),
(197, 'Laptop Dell Vostro 3520', '13890000', 7, '1704273090_text_ng_n_7__106.webp', '<p>Bảo h&agrave;nh 1 đổi 1 trong v&ograve;ng 12 th&aacute;ng bởi Nh&agrave; Ph&acirc;n Phối (&Aacute;p dụng m&aacute;y b&aacute;n từ 1.7.2022) C&aacute;c m&aacute;y mua trước đ&oacute; &aacute;p dụng bảo h&agrave;nh 12 th&aacute;ng t', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5 - 1235U (10 l&otilde;i / 12 luồng, up to 4.40 GHz, 12 MB)</p>\r\n	</li>\r\n</ul>\r\n', 1, 10),
(198, 'Laptop Dell Inspiron 14 I7430-7374SLV CN29D', '21490000', 10, '1704273180_text_ng_n_32__1_6.webp', '<p>Bảo h&agrave;nh 1 đổi 1 trong v&ograve;ng 12 th&aacute;ng bởi Nh&agrave; Ph&acirc;n Phối (&Aacute;p dụng m&aacute;y b&aacute;n từ 1.7.2022) C&aacute;c m&aacute;y mua trước đ&oacute; &aacute;p dụng bảo h&agrave;nh 12 th&aacute;ng t', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel Iris Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i7-1355U (12 MB cache, 10 l&otilde;i / 12 luồng, up to 5.00 GHz)</p>\r\n	</li>\r\n</ul>\r\n', 1, 10),
(199, 'Laptop Dell Inspiron 3511 P112F001ABL', '10490000', 7, '1704273784_1_75_43.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng</p>\r\n\r\n<p>D&acirc;y nguồn, S&aacute;ch hướng dẫn, Sạc Laptop Dell</p>\r\n\r\n<p>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 t', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i3-1115G4 1.7GHz up to 4.1GHz 6MB</p>\r\n	</li>\r\n</ul>\r\n', 1, 10),
(200, 'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV', '18990000', 6, '1704273924_text_ng_n_7.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất/Bảo h&agrave;nh pin 12 th&aacute;ng/D&acirc;y nguồn, S&aacute;ch hướng dẫn, Sạc Laptop/Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng tại trung t&acirc;', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&reg; GeForce RTX&trade; 3050 4G</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel&reg; Core&trade; i5-11400H &ndash; CPU thế hệ 11 mới nhất</p>\r\n	</li>\r\n</ul>\r\n', 1, 12),
(201, 'Laptop Acer Gaming Aspire 7 A715-76-57CY', '13890000', 10, '1704274024_text_ng_n_5_60.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5 - 12450H (3.30 GHz - 4.40 GHz, 8 l&otilde;i / 12 luồng, 12 MB)</p>\r\n	</li>\r\n</ul>\r\n', 1, 12),
(202, 'Laptop Acer Aspire 7 A715-76G-5806', '17990000', 10, '1704274102_text_ng_n_21__2_3.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA GeForce RTX 3050, 4 GB</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5 - 12450H (8 l&otilde;i / 12 luồng, 2.00 GHz, Turbo Boost 4.4 GHz, 12 MB)</p>\r\n	</li>\r\n</ul>\r\n', 1, 12),
(203, 'Laptop Acer Aspire 3 A315-56-38B1 NX.HS5SV.00G', '7390000', 3, '1704274227_cd554_5_.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/M&aacute;y, sạc, s&aacute;ch hướng dẫn sử dụng</p>\r\n', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel UHD Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i3-1005G1</p>\r\n	</li>\r\n</ul>\r\n', 1, 12),
(204, 'Laptop Gaming Acer Nitro 5 Tiger AN515-58-769J', '24490000', 8, '1704274297_gaming_003_2__1.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&reg; GeForce RTX&trade; 3050 4GB GDDR6</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i7-12700H up to 4.7GHz, 24MB Cache</p>\r\n	</li>\r\n</ul>\r\n', 1, 12),
(205, 'Laptop Gaming Acer Nitro V ANV15-51-57B2', '24490000', 4, '1706093026_text_ng_n_16__4_5.webp', '<p>Nguy&ecirc;n hộp, đầy đủ phụ kiện từ nh&agrave; sản suất<br />\r\nBảo h&agrave;nh pin 12 th&aacute;ng/Bảo h&agrave;nh 12 th&aacute;ng tại trung t&acirc;m bảo h&agrave;nh Ch&iacute;nh h&atilde;ng. 1 đổi 1 trong 30 ng&agrave;y<', '<p>NVIDIA GeForce RTX 4050 6GB GDDR6 VRAM<br />\r\nRAM&nbsp;8GB&nbsp;DDR5 5200Mhz&nbsp;2 khe (N&acirc;ng cấp tối đa 32 GB)<br />\r\nỔ cứng&nbsp;512GB PCIe NVMe SED SSD (n&acirc;ng cấp tối đa 2 TB Gen4, 16 Gb/s, NVMe)<br />\r\nM&agrave;n h&igrave;nh 15.6 inches&nbsp;SlimBezel&nbsp;1920 x 1080 pixels (FullHD)&nbsp;144 Hz</p>\r\n', 1, 12),
(206, 'Laptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002', '17490000', 3, '1706093319_text_ng_n_6__119.webp', '<ul>\r\n	<li>Thiết kế với trọng lượng nhẹ 1.25 kg dễ d&agrave;ng mang theo mọi nơi</li>\r\n	<li>CPU&nbsp;Intel Core i5-1240P mạnh mẽ c&acirc;n mọi t&aacute;c vụ l&agrave;m việc, học tập</li>\r\n	<li>RAM 16GB đa nhiệm hỗ tr', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>Intel Iris Xe Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i5-1240P (3.3GHz~ 4.4GHz, 12 l&otilde;i / 16 luồng)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>16GB<br />\r\nLoại RAM</p>\r\n\r\n<p>LPDDR4X Onboard<br />\r\nỔ cứng</p>\r\n\r\n<p>512GB SSD M.2 PCIe<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>14 inches<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>2560 x 1440 pixels (2K)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>FHD audio/video recording<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home<br />\r\nWi-Fi</p>\r\n\r\n<p>Intel Wireless Wi-Fi 6 AX201<br />\r\nBluetooth</p>\r\n\r\n<p>Bluetooth 5.1<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>2W x 2<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6, Bảo mật v&acirc;n tay<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>56Wh<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>321 x 210.8 x 15.9 mm<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.25 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>2x USB 3.2 Gen1 Type-A<br />\r\n2x Thunder Bolt 4<br />\r\n1x HDMI 2.0<br />\r\n1x Mic-in/ Headphone-out combo jack<br />\r\n1x DC-in<br />\r\nLAN Gigabit</p>\r\n', 1, 12),
(209, 'Laptop Gaming Acer Nitro 5 AN515 58 52SP', '19890000', 5, '1706093501_1706093428_1.6.webp', '<ul>\r\n	<li>Chip Core i5-12500H c&ugrave;ng card rời RTX&trade; 3050 4GB cho khả năng chiến c&aacute;c tựa game AAA, chỉnh sửa h&igrave;nh ảnh tr&ecirc;n PTS, Render video ngắn mượt m&agrave;.</li>\r\n	<li>Ram 8GB + 1 khe trống cho ph&a', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>NVIDIA&reg; GeForce RTX&trade; 3050 4GB GDDR6<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel&reg; Core&trade; i5-12500H (12 nh&acirc;n, 16 luồng, 3.30 GHz up to 4.50 GHz, 18 MB)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>8GB<br />\r\nLoại RAM</p>\r\n\r\n<p>8GB DDR4 3200MHz, tối đa 32GB<br />\r\nSố khe ram</p>\r\n\r\n<p>2 khe<br />\r\nỔ cứng</p>\r\n\r\n<p>512 GB PCIe NVMe SED SSD cắm sẵn<br />\r\nN&acirc;ng cấp tối đa 2TB Gen4, NVMe v&agrave; 1 TB 2.5-inch 5400 RPM<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>Chất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>15.6 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>IPS 144Hz<br />\r\nAcer ComfyView<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1080 pixels (FullHD)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>1280 x 720<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home<br />\r\nWi-Fi</p>\r\n\r\n<p>6 AX 1650i<br />\r\nBluetooth</p>\r\n\r\n<p>5.1<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>4-cell, 57.5 Wh<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>360.4 x 271.09 x 25.9 mm (WxDxH)<br />\r\nTrọng lượng</p>\r\n\r\n<p>2.5 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x USB Type-C hỗ trợ USB 3.2 Gen 2 / Display qua USB-C / Thunderbolt 4 / sạc USB 5 V, 3 A / DC-in 20 V, 65 W<br />\r\n1x USB 3.2 Gen 2 hỗ trợ sạc USB khi tắt nguồn<br />\r\n1x USB 3.2 Gen 2<br />\r\n1x USB 3.2 Gen 1<br />\r\n1x HDMI&reg;2.1 hỗ trợ HDCP<br />\r\n1x 3.5 mm headphone/speaker</p>\r\n', 1, 12),
(210, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X', '18990000', 6, '1706093629_text_ng_n_8__3_17.webp', '<ul>\r\n	<li>Sở hữu thiết kế tối giản vỏ x&aacute;m c&ugrave;ng trọng lượng rất nhẹ chỉ 1.6 kg cho ph&eacute;p bạn mang theo đi học tập hay l&agrave;m việc.</li>\r\n	<li>Intel Core i5-1335U xử l&yacute; nhanh c&aacute;c t&a', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>Intel Iris Xe Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i5-1335U (3.7 Ghz, up to 5.0 GHz, 24MB cache)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>16GB<br />\r\nLoại RAM</p>\r\n\r\n<p>LPDDR5 5200Mhz Onboard<br />\r\nỔ cứng</p>\r\n\r\n<p>512GB PCIe NVMe SSD (n&acirc;ng cấp tối đa 2 TB HDD v&agrave; 1 TB SSD PCIe Gen3 8 Gb/s up to 4 lanes, NVMe)<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>C&oacute;<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>14 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Acer ComfyView<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1200 pixels (FullHD+)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>HD<br />\r\nKhe đọc thẻ nhớ</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Win 11 Home<br />\r\nWi-Fi</p>\r\n\r\n<p>Wi-Fi 6E, 802.11a/b/g/n/ac/ax<br />\r\nBluetooth</p>\r\n\r\n<p>Bluetooth 5<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>Acer TrueHarmony<br />\r\nTwo built-in stereo speakers<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6, M&agrave;n h&igrave;nh cảm ứng<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>50Wh Li-ion battery<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>318.2 x 225.5 x 17.99 mm (W x D x H)<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.6 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x USB Type-C<br />\r\n2x USB-A<br />\r\n1x HDMI 2.1<br />\r\n1x 3.5 mm headphone/speaker jack<br />\r\n1x DC-in jack for AC adapter</p>\r\n', 1, 12),
(217, 'Laptop Acer Predator Triton 500 SE PT516-51S-71RW', '77990000', 3, '1706094253_acer-predator-triton-500-se-pt51.webp', '<p>Laptop Acer Predator Triton 500 SE PT516-51S-71RW - một chiếc m&aacute;y t&iacute;nh x&aacute;ch tay đặc biệt. Được thiết kế gọn nhẹ, c&aacute; t&iacute;nh c&ugrave;ng hiệu năng mạnh mẽ với bộ vi xử l&yacute; Intel Cor', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>NVIDIA GeForce RTX 3080 8GB GDDR6 up to 1345MHz at 110W<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>64GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR4 3200MHz, 2 khe cắm tối đa 64GB<br />\r\nỔ cứng</p>\r\n\r\n<p>1TB SSD PCIE G3X4 (Support RAID 0) (2 slots)<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>16 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Tần số qu&eacute;t 165Hz, G-Sync, 3ms, 500nits, 100% sRGB<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>2560 x 1600 pixels (2K)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>HD 720p<br />\r\nKhe đọc thẻ nhớ</p>\r\n\r\n<p>C&oacute;<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 10 Home SL<br />\r\nWi-Fi</p>\r\n\r\n<p>INTEL KILLER AX1650i Wifi 6<br />\r\nBluetooth</p>\r\n\r\n<p>v5.1<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>DTS:X ULTRA<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>4 Cell 99Whr<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>358.5 x 262.4 x 19.9 (mm)<br />\r\nTrọng lượng</p>\r\n\r\n<p>2.4 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>2x Thunderbolt 4 / USB 3.2 Gen 2 Type-C (support data transfer, Power Delivery and DisplayPort 1.4)<br />\r\n2x USB 3.2 Gen 2 Type-A<br />\r\n1x HDMI 2.1 (8K@60Hz and 4K@120Hz)<br />\r\n1x RJ45<br />\r\n1x 3.5mm Combo Audio Jack<br />\r\nFingerPrint</p>\r\n', 1, 12),
(220, 'Laptop MSI Katana GF66 12UCK-699VN', '16490000', 5, '1706094462_sdgsdg.webp', '<p>Laptop MSI Katana GF66 12UCK-699VN tạo điểm nhấn tr&ecirc;n thị trường laptop hiện nay nhờ sở hữu bộ vi xử l&yacute; cao cấp, thuộc thế hệ mới nhất đến từ thương hiệu Intel. Đi c&ugrave;ng với đ&oacute;&', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>NVIDIA GeForce RTX 3050<br />\r\nLoại CPU</p>\r\n\r\n<p>I5-12450H<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>8GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR4<br />\r\nSố khe ram</p>\r\n\r\n<p>2 khe<br />\r\nỔ cứng</p>\r\n\r\n<p>512GB PCIE<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>15.6 inches<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1080 pixels (FullHD)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Loại đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>RGB Backlight Keyboard<br />\r\nWebcam</p>\r\n\r\n<p>HD type<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home<br />\r\nWi-Fi</p>\r\n\r\n<p>5.2<br />\r\nBluetooth</p>\r\n\r\n<p>Wi-Fi 6<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>53.5 Battery (Whr) 3-Cell<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>359 x 259 x 27.9 mm<br />\r\nTrọng lượng</p>\r\n\r\n<p>2.25 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>2x Type-A USB3.2 Gen1 1x Type-C USB3.2 Gen1 1x (4K @ 60Hz) HDMI 1x RJ45 1x Type-A USB2.0</p>\r\n', 1, 3),
(222, 'Laptop MSI Creator Z16 A11UET-217VN', '47990000', 2, '1706094636_msi-creator-z16-a11uet-217vn-i7.webp', '<p><strong>Laptop MSI Creator Z16 A11UET-217VN</strong>&nbsp;l&agrave; một sự kết hợp tuyệt vời giữa thiết kế với c&ocirc;ng nghệ hiện đại. Dễ d&agrave;ng thao t&aacute;c, điều khiển với m&agrave;n h&igrave;nh cảm ứ', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>NVIDIA&reg; GeForce RTX&trade; 3060 Max-Q 6GB</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB, 8 nh&acirc;n 16 luồng</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM &amp; Ổ cứng</p>\r\n\r\n	<p>Dung lượng RAM</p>\r\n\r\n	<p>32GB</p>\r\n\r\n	<p>Loại RAM</p>\r\n\r\n	<p>32GB (16GBx2) DDR4 3200MHz</p>\r\n\r\n	<p>Ổ cứng</p>\r\n\r\n	<p>1TB SSD M.2 NVMe PCIe Gen4x4 (C&ograve;n trống 1 khe SSD M.2 NVMe PCIe Gen4)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh</p>\r\n\r\n	<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n	<p>C&oacute;</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/kich-thuoc-man-hinh-dien-thoai\" target=\"_blank\">K&iacute;ch thước m&agrave;n h&igrave;nh</a></p>\r\n\r\n	<p>16 inches</p>\r\n\r\n	<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n	<p>Tần số qu&eacute;t 120Hz, DCI-P3 100%</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/do-phan-giai-man-hinh\" target=\"_blank\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</a></p>\r\n\r\n	<p>2560 x 1600 pixels (2K)</p>\r\n	</li>\r\n	<li>\r\n	<p>Giao tiếp &amp; kết nối</p>\r\n\r\n	<p>Webcam</p>\r\n\r\n	<p>IR 720p HD Webcam</p>\r\n\r\n	<p>Khe đọc thẻ nhớ</p>\r\n\r\n	<p>C&oacute;</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/he-dieu-hanh-la-gi-nhung-he-dieu-hanh-pho-bien-tren-may-tinh-dien-thoai\" target=\"_blank\">Hệ điều h&agrave;nh</a></p>\r\n\r\n	<p>Windows 10 Home SL</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/wifi-la-gi-song-wi-fi-hoat-dong-va-co-chuc-nang-nhu-the-nao\" target=\"_blank\">Wi-Fi</a></p>\r\n\r\n	<p>Killer Wi-Fi 6E AX1675</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/ket-noi-bluetooth-khai-niem-va-nhung-cong-dung-co-ban\" target=\"_blank\">Bluetooth</a></p>\r\n\r\n	<p>v5.2</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n	<p>2 Loa</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiện &iacute;ch kh&aacute;c</p>\r\n\r\n	<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n	<p>Ổ cứng SSD, Wi-Fi 6</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/mah-la-gi-don-vi-mah-la-gi\" target=\"_blank\">Pin</a></p>\r\n\r\n	<p>4 Cell 90WHr</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế &amp; Trọng lượng</p>\r\n\r\n	<p>K&iacute;ch thước</p>\r\n\r\n	<p>359 x 256 x 15.9 mm</p>\r\n\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>2.2 kg</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng số kỹ thuật</p>\r\n\r\n	<p>Cổng giao tiếp</p>\r\n\r\n	<p>2x Type-C (USB / DP / Thunderbolt&trade; 4)<br />\r\n	2x Type-A USB3.2 Gen2<br />\r\n	1x Mic-in/Headphone-out Combo Jack</p>\r\n	</li>\r\n</ul>\r\n', 1, 3),
(223, 'Laptop Lenovo Yoga Slim 7 14ACN6 82N7008VVN', '15990000', 6, '1706261117_14_2_125.webp', '<p>Laptop Lenovo Yoga Slim 7 14ACN6 82N7008VVN c&oacute; thiết kế th&ocirc;ng minh v&agrave; hiệu năng đ&aacute;p ứng y&ecirc;u cầu l&agrave;m việc cường độ cao. Chiếc laptop Lenovo Yoga c&ograve;n sở hữu nhiều t&iacute;nh năn', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>AMD Radeon t&iacute;ch hợp<br />\r\nLoại CPU</p>\r\n\r\n<p>AMD Ryzen 7 5800U (8C / 16T, 1.9 / 4.4GHz, 4MB L2 / 16MB L3)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>8GB<br />\r\nLoại RAM</p>\r\n\r\n<p>8GB LPDDR4x-4266 (Onboard)<br />\r\nSố khe ram</p>\r\n\r\n<p>Ram onboard, kh&ocirc;ng hỗ trợ n&acirc;ng cấp<br />\r\nỔ cứng</p>\r\n\r\n<p>512 GB SSD M.2 2280 PCIe 3.0x4 NVMe<br />\r\nHỗ trợ tối đa 256GB M.2 2242 SSD hoặc 1TB M.2 2280 SSD<br />\r\nTh&ocirc;ng số kh&aacute;c</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Vỏ kim loại<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>C&oacute;<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>14 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nĐộ s&aacute;ng 300nits<br />\r\nĐộ phủ m&agrave;u 72% NTSC<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1080 pixels (FullHD)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>HD 720p với m&agrave;n trập camera<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home 64<br />\r\nWi-Fi</p>\r\n\r\n<p>Wi-Fi 6 11ax, 2x2<br />\r\nBluetooth</p>\r\n\r\n<p>Bluetooth 5.0<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>&Acirc;m thanh độ n&eacute;t cao (HD)<br />\r\nDolby Atmos<br />\r\nBộ khuếch đại th&ocirc;ng minh (AMP)<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6, M&agrave;n h&igrave;nh cảm ứng, Bảo mật v&acirc;n tay<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>71Wh<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>320.4 x 214.6 x 15.68 - 17.7 mm (WxDxH)<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.45 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x USB 3.2 Gen 1 (Lu&ocirc;n bật)<br />\r\n2x USB-C 3.2 Gen 1 (Hỗ trợ truyền dữ liệu, Power Delivery 3.0 v&agrave; DisplayPort 1.4)<br />\r\n1x Headphone / microphone combo jack (3.5mm)</p>\r\n', 1, 9),
(224, 'Laptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN', '15490000', 7, '1706262264_text_ng_n_39__1_3.webp', '<p><strong>Laptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN&nbsp;</strong>l&agrave; một sản phẩm đa năng với m&agrave;n h&igrave;nh cảm ứng&nbsp;<strong>14 inch&nbsp;</strong>v&agrave; vi xử l&yacute;&nbsp;<strong>AMD Ryzen 7 5700U&nbsp;</st', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>AMD Radeon Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>AMD Ryzen 7 5700U (8 l&otilde;i / 16 luồng, 1.8 / 4.3GHz, 4MB L2 / 8MB L3)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>16GB<br />\r\nLoại RAM</p>\r\n\r\n<p>LPDDR4x-4266 Onboard<br />\r\nỔ cứng</p>\r\n\r\n<p>512GB SSD M.2 2242 PCIe 4.0x4 NVMe (C&oacute; thể th&aacute;o ra lắp thanh mới, tối đa 1TB)<br />\r\nTh&ocirc;ng số kh&aacute;c</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Vỏ nhựa<br />\r\nBảo mật</p>\r\n\r\n<p>Firmware TPM 2.0<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>C&oacute;<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>14 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Độ s&aacute;ng 300 nits<br />\r\nĐộ phủ m&agrave;u 45% NTSC<br />\r\nT&Uuml;V Low Blue Light<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1200 pixels (WUXGA)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>FHD 1080p với m&agrave;n trập camera<br />\r\nKhe đọc thẻ nhớ</p>\r\n\r\n<p>C&oacute;<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home SL<br />\r\nWi-Fi</p>\r\n\r\n<p>Wi-Fi 6, 11ax 2x2<br />\r\nBluetooth</p>\r\n\r\n<p>Bluetooth 5.1<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>&Acirc;m thanh độ ph&acirc;n giải cao (HD)<br />\r\nRealtek ALC3287 codec<br />\r\nLoa &acirc;m thanh nổi mặt trước, 2W x2<br />\r\nDolby Audio<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6, M&agrave;n h&igrave;nh cảm ứng, Bảo mật v&acirc;n tay<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>52.5Wh<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>313.1 x 224.9 x 17.8 mm (W x D x H)<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.55 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x HDMI 1.4b<br />\r\n1x Headphone / microphone combo jack (3.5mm)<br />\r\n1x Đầu nối nguồn<br />\r\n1x Đầu đọc thẻ SD<br />\r\n1x USB 3.2 Gen 1<br />\r\n1x USB 3.2 Gen 1 (Always On)<br />\r\n1x USB-C 3.2 Gen 2 (Truyền dữ liệu, Power Delivery 3.0, DisplayPort 1.4)</p>\r\n', 1, 9),
(225, 'Laptop Lenovo Thinkpad P14S G2 T 20VX008GVN', '25990000', 4, '1706262381_4h30.webp', '<p><strong>Laptop Lenovo ThinkPad P14S G2 T 20VX008GVN</strong>&nbsp;với kiểu d&aacute;ng bắt mắt n&ecirc;n đa số sinh vi&ecirc;n trẻ hiện nay đều rất y&ecirc;u th&iacute;ch v&agrave; lựa chọn. Sản phẩm&nbsp;<strong>laptop Leno', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>NVIDIA Quadro T500 4GB GDDR6<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i5-1135G7<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>8GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR4-3200<br />\r\nSố khe ram</p>\r\n\r\n<p>8GB Onboard + 8GB tr&ecirc;n khe<br />\r\nN&acirc;ng cấp tối đa 32GB<br />\r\nỔ cứng</p>\r\n\r\n<p>512GB SSD M.2 2280 PCIe x4 NVMe Opal2<br />\r\nKh&ocirc;ng hỗ trợ n&acirc;ng cấp<br />\r\nTh&ocirc;ng số kh&aacute;c</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Vỏ nhựa<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>14 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh chống lo&aacute;<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1080 pixels (FullHD)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>HD 720p<br />\r\nKhe đọc thẻ nhớ</p>\r\n\r\n<p>C&oacute;<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 10<br />\r\nWi-Fi</p>\r\n\r\n<p>Intel AX201 11ax, 2x2<br />\r\nBluetooth</p>\r\n\r\n<p>v5.2<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>2W x2, Dolby Audio<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>50Wh<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>329.4 x 227.5 x 17.9 mm<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.502 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x USB 3.2 Gen 1<br />\r\n1x USB 3.2 Gen 1 (Always On)<br />\r\n2x Thunderbolt 4 / USB4 40Gbps / USB-C 3.2 Gen 2 (support data transfer, Power Delivery 3.0 and DisplayPort 1.4)<br />\r\n1x HDMI 2.0<br />\r\n1x Khe cắm thẻ nhớ<br />\r\n1x Cổng tai nghe</p>\r\n', 1, 9),
(226, 'Laptop Asus Expertbook B5 B5602CBA-L20197W', '29990000', 2, '1706262746_text_ng_n_2__2_41.webp', '<p>Laptop Asus Expertbook B5 B5602CBA-L20197W l&agrave; c&aacute;i t&ecirc;n ti&ecirc;u biểu cho d&ograve;ng lap văn ph&ograve;ng c&oacute; phong c&aacute;ch l&agrave;m l&agrave;m việc linh hoạt, cải tiến hiệu suất cực lớn. C&aacute;c c', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>Intel Iris Xe Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i7-1260P 2.1 GHz (18M Cache, up to 4.7 GHz, 12 l&otilde;i)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>16GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR5<br />\r\nSố khe ram</p>\r\n\r\n<p>8GB DDR5 Onboard + 8GB DDR5 SO-DIMM<br />\r\nỔ cứng</p>\r\n\r\n<p>512GB M.2 NVMe PCIe 4.0 SSD<br />\r\nTh&ocirc;ng số kh&aacute;c</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Vỏ kim loại<br />\r\nBảo mật</p>\r\n\r\n<p>Khe bảo mật Kensington<br />\r\nBIOS Booting User Password Protection<br />\r\nBIOS setup user password<br />\r\nComputrace ready from BIOS<br />\r\nHDD User Password Protection and Security<br />\r\nLoJack<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền OLED/AMOLED<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>16 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>Độ s&aacute;ng 400 nits<br />\r\nĐộ phủ m&agrave;u DCI-P3: 100%<br />\r\nTần số qu&eacute;t 60Hz<br />\r\nVESA CERTIFIED Display HDR True Black 600<br />\r\nThời gian phản hồi (Typ/Max) (ms) 1/1<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>3840 x 2400 pixel (4K)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Loại đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n<p>C&oacute; đ&egrave;n b&agrave;n ph&iacute;m<br />\r\nWebcam</p>\r\n\r\n<p>720p HD camera + IR với m&agrave;n trập camera<br />\r\nKhe đọc thẻ nhớ</p>\r\n\r\n<p>C&oacute;<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home<br />\r\nWi-Fi</p>\r\n\r\n<p>Wi-Fi 6E (802.11ax) (Dual band) 2*2<br />\r\nBluetooth</p>\r\n\r\n<p>Bluetooth 5.1<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>Dolby Atmos<br />\r\nLoa t&iacute;ch hợp<br />\r\nMicr&ocirc; t&iacute;ch hợp<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6, Bảo mật v&acirc;n tay, M&agrave;n h&igrave;nh Oled<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>84WHrs, 4S1P, 4-cell Li-ion<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>35.82 x 26.12 x 1.99 ~ 1.99 cm (W x H x D)<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.50 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x USB 2.0 Type-A<br />\r\n1x USB 3.2 Gen 2 Type-A<br />\r\n2x Thunderbolt 4 (Display / Sạc)<br />\r\n1x HDMI 2.0b<br />\r\n1x 3.5mm Combo Audio Jack<br />\r\n1x RJ45 Gigabit Ethernet<br />\r\n1x Đầu đọc thẻ Micro SD</p>\r\n', 1, 4),
(227, 'Laptop HP 240 G9 6L1Y2PA', '14490000', 6, '1706262802_text_ng_n_6__139.webp', '<p>Laptop HP 240 G9 6L1Y2PA trang bị bộ vi xử l&yacute; Intel Gen 12 t&acirc;n tiến với 8GB RAM DDR4, ổ cứng SSD NVMe PCIe 512GB để tối ưu cho hiệu năng mạnh mẽ. Laptop c&ograve;n c&oacute; card đồ họa Intel UHD Graphics gi', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>Intel UHD Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i5 Alder Lake - 1235U (1.30 GHz, 10 l&otilde;i / 12 luồng, Turbo Boost 4.4 GHz, 12 MB)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>8GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR4 3200 MHz<br />\r\nSố khe ram</p>\r\n\r\n<p>2 khe (1 khe 8 GB + 1 khe rời, n&acirc;ng cấp tối đa 16 GB)<br />\r\nỔ cứng</p>\r\n\r\n<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)<br />\r\nTh&ocirc;ng số kh&aacute;c</p>\r\n\r\n<p>Chất liệu</p>\r\n\r\n<p>Vỏ nhựa<br />\r\nBảo mật</p>\r\n\r\n<p>TPM 2.0<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nChất liệu tấm nền</p>\r\n\r\n<p>Tấm nền IPS<br />\r\nTần số qu&eacute;t</p>\r\n\r\n<p>60 Hz<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>14 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh chống ch&oacute;i<br />\r\nĐộ s&aacute;ng 250 nits<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1080 pixels (FullHD)<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>HD webcam<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Home SL<br />\r\nWi-Fi</p>\r\n\r\n<p>Wi-Fi 6 (802.11ax)<br />\r\nBluetooth</p>\r\n\r\n<p>Bluetooth 5.2<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>Realtek High Definition Audio<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>3-cell Li-ion, 41 Wh<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>324 x 225.9 x 19.9 mm (D&agrave;i x Rộng x D&agrave;y)<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.47 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x HDMI<br />\r\n1x Jack tai nghe 3.5 mm<br />\r\n1x LAN (RJ45)<br />\r\n2x USB 3.1<br />\r\n1x USB Type-C</p>\r\n', 1, 11);
INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(228, 'Laptop HP Envy X360 BF0112TU 7C0N9PA', '21990000', 3, '1706262852_text_ng_n_1__3_25.webp', '<p><strong>HP Envy X360</strong>&nbsp;l&agrave; d&ograve;ng laptop sở hữu bộ vi xử l&yacute; Intel Core i5 Alder Lake - 1230U, kết hợp c&ugrave;ng RAM 16 GB xử l&yacute; mượt m&agrave; c&aacute;c t&aacute;c vụ đa nhiệm nặng. M&aacu', '<ul>\r\n	<li>\r\n	<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n	<p>Loại card đồ họa</p>\r\n\r\n	<p>Intel Iris Xe Graphics</p>\r\n\r\n	<p>Loại CPU</p>\r\n\r\n	<p>Intel Core i5 Alder Lake - 1230U (10 nh&acirc;n 12 luồng)<br />\r\n	Xung nhịp 1Ghz - Turbo Boost 4.4 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM &amp; Ổ cứng</p>\r\n\r\n	<p>Dung lượng RAM</p>\r\n\r\n	<p>16GB</p>\r\n\r\n	<p>Loại RAM</p>\r\n\r\n	<p>LPDDR4X (Onboard) 4266 MHz</p>\r\n\r\n	<p>Số khe ram</p>\r\n\r\n	<p>Kh&ocirc;ng hỗ trợ n&acirc;ng cấp</p>\r\n\r\n	<p>Ổ cứng</p>\r\n\r\n	<p>512 GB SSD NVMe PCIe</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh</p>\r\n\r\n	<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n	<p>Kh&ocirc;ng</p>\r\n\r\n	<p>Chất liệu tấm nền</p>\r\n\r\n	<p>Tấm nền IPS</p>\r\n\r\n	<p>Tần số qu&eacute;t</p>\r\n\r\n	<p>60 Hz</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/kich-thuoc-man-hinh-dien-thoai\" target=\"_blank\">K&iacute;ch thước m&agrave;n h&igrave;nh</a></p>\r\n\r\n	<p>13.3 inches</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/do-phan-giai-man-hinh\" target=\"_blank\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh</a></p>\r\n\r\n	<p>2880 x 1800 pixels</p>\r\n	</li>\r\n	<li>\r\n	<p>Giao tiếp &amp; kết nối</p>\r\n\r\n	<p>Loại đ&egrave;n b&agrave;n ph&iacute;m</p>\r\n\r\n	<p>C&oacute;</p>\r\n\r\n	<p>Webcam</p>\r\n\r\n	<p>HP TrueVision 5 MPCamera IR</p>\r\n\r\n	<p>Khe đọc thẻ nhớ</p>\r\n\r\n	<p>C&oacute;</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/he-dieu-hanh-la-gi-nhung-he-dieu-hanh-pho-bien-tren-may-tinh-dien-thoai\" target=\"_blank\">Hệ điều h&agrave;nh</a></p>\r\n\r\n	<p>Windows 11 Home SL</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/wifi-la-gi-song-wi-fi-hoat-dong-va-co-chuc-nang-nhu-the-nao\" target=\"_blank\">Wi-Fi</a></p>\r\n\r\n	<p>Wi-Fi 6E (802.11ax)</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/ket-noi-bluetooth-khai-niem-va-nhung-cong-dung-co-ban\" target=\"_blank\">Bluetooth</a></p>\r\n\r\n	<p>Bluetooth 5.2</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n	<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n	<p>HP Audio BoostBang &amp; Olufsen audio</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiện &iacute;ch kh&aacute;c</p>\r\n\r\n	<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n	<p>Ổ cứng SSD, Wi-Fi 6, C&ocirc;ng nghệ Intel Evo, M&agrave;n h&igrave;nh Oled</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n	<p><a href=\"https://cellphones.com.vn/sforum/mah-la-gi-don-vi-mah-la-gi\" target=\"_blank\">Pin</a></p>\r\n\r\n	<p>4-cell Li-ion, 66 Wh</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế &amp; Trọng lượng</p>\r\n\r\n	<p>K&iacute;ch thước</p>\r\n\r\n	<p>D&agrave;i 298.3 mm - Rộng 214.9 mm - D&agrave;y 16.1 mm</p>\r\n\r\n	<p>Trọng lượng</p>\r\n\r\n	<p>Nặng 1.34 kg</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&ocirc;ng số kỹ thuật</p>\r\n\r\n	<p>Cổng giao tiếp</p>\r\n\r\n	<p>2 x Thunderbolt 4 with USB-C (USB Power Delivery, DisplayPort 1.4)<br />\r\n	Jack tai nghe 3.5 mm<br />\r\n	2x SuperSpeed USB A</p>\r\n	</li>\r\n</ul>\r\n', 1, 11),
(229, 'Laptop Dell Latitude 3520 70251590', '24590000', 4, '1706263093_dell-latitude-3520-70251590-10-001.webp', '<p>Laptop l&agrave; phụ kiện quan trọng trong học tập v&agrave; c&ocirc;ng việc, do đ&oacute; việc t&igrave;m kiếm một mẫu laptop cấu h&igrave;nh mạnh c&oacute; thể đ&aacute;p ứng nhiều nhu cầu sử dụng từ l&agrave;m', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>Intel Iris Xe Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i7-1165G7 (2.80GHz up to 4.70GHz, 12MB Cache)<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>8GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR4 3200MHz, 2 khe cắm<br />\r\nỔ cứng</p>\r\n\r\n<p>256GB SSD M.2 PCIe NVMe Gen3 x4<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>Kh&ocirc;ng<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>15.6 inches<br />\r\nC&ocirc;ng nghệ m&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh chống l&oacute;a, 60Hz<br />\r\nĐộ ph&acirc;n giải m&agrave;n h&igrave;nh</p>\r\n\r\n<p>1920 x 1080 pixels (FullHD)<br />\r\nC&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>C&ocirc;ng nghệ &acirc;m thanh</p>\r\n\r\n<p>2 Loa<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Khe đọc thẻ nhớ</p>\r\n\r\n<p>C&oacute;<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>FreeOS<br />\r\nWi-Fi</p>\r\n\r\n<p>Intel Dual Band Wi-Fi 6 AX201 2x2<br />\r\nBluetooth</p>\r\n\r\n<p>v5.1<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, Wi-Fi 6<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>3 Cell, 41Whr<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>18.06 x 36 x 240.9 mm<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.79 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1 x USB 2.0 port<br />\r\n1 x USB 3.2 Gen 1 Type-A port with PowerShare<br />\r\n1 x USB 3.2 Gen 1 Type-A port<br />\r\n1 x USB 3.2 Gen 2 Type-C port with DisplayPort 1.2 Alt mode<br />\r\n1 x USB 3.2 Gen 2x2 Type-C port with DisplayPort 1.2 Alt mode<br />\r\n1 x HDMI 1</p>\r\n', 1, 10),
(230, 'Laptop Dell Latitude 5330 27KJ4', '16990000', 6, '1706263061_group_11_2_1.webp', '<p>Laptop Dell Latitude 5330 27KJ4 c&oacute; chip xử l&yacute; intel core i5 c&ugrave;ng dung lượng RAM l&ecirc;n đến 16GB v&agrave; ổ cứng SSD PCIe 256GB đ&aacute;p ứng mọi trải nghiệm người d&ugrave;ng. Đi k&egrave;m đ&oacute; ', '<p>Vi xử l&yacute; &amp; đồ họa</p>\r\n\r\n<p>Loại card đồ họa</p>\r\n\r\n<p>Intel Iris Xe Graphics<br />\r\nLoại CPU</p>\r\n\r\n<p>Intel Core i5-1245U (2+8 l&otilde;i / 12 luồng, 1.60 GHz to 4.40 GHz, 12 MB )<br />\r\nRAM &amp; Ổ cứng</p>\r\n\r\n<p>Dung lượng RAM</p>\r\n\r\n<p>16GB<br />\r\nLoại RAM</p>\r\n\r\n<p>DDR4 3200 MHz Onboard<br />\r\nỔ cứng</p>\r\n\r\n<p>256 GB PCIe NVMe M.2 2230<br />\r\nM&agrave;n h&igrave;nh</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cảm ứng</p>\r\n\r\n<p>C&oacute;<br />\r\nK&iacute;ch thước m&agrave;n h&igrave;nh</p>\r\n\r\n<p>13.3 inches<br />\r\nGiao tiếp &amp; kết nối</p>\r\n\r\n<p>Webcam</p>\r\n\r\n<p>C&oacute;<br />\r\nKhe đọc thẻ nhớ</p>\r\n\r\n<p>C&oacute;<br />\r\nHệ điều h&agrave;nh</p>\r\n\r\n<p>Windows 11 Pro<br />\r\nWi-Fi</p>\r\n\r\n<p>C&oacute;<br />\r\nBluetooth</p>\r\n\r\n<p>C&oacute;<br />\r\nTiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p>T&iacute;nh năng đặc biệt</p>\r\n\r\n<p>Ổ cứng SSD, M&agrave;n h&igrave;nh cảm ứng, Bảo mật v&acirc;n tay<br />\r\nPin &amp; c&ocirc;ng nghệ sạc</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>4 cell, 58 WHr, lithium-ion<br />\r\nThiết kế &amp; Trọng lượng</p>\r\n\r\n<p>K&iacute;ch thước</p>\r\n\r\n<p>305.70 x 207.50 x 16.92 - 18.43 mm (W x D x H)<br />\r\nTrọng lượng</p>\r\n\r\n<p>1.32 kg<br />\r\nTh&ocirc;ng số kỹ thuật</p>\r\n\r\n<p>Cổng giao tiếp</p>\r\n\r\n<p>1x Khe cắm thẻ SIM<br />\r\n1x Cổng &acirc;m thanh đa năng<br />\r\n1x USB 3.2 Gen 1 c&oacute; PowerShare<br />\r\n1x HDMI 2.0<br />\r\n1x Wedge-s haped lock slot<br />\r\n2x Thunderbolt 4<br />\r\n1x USB 3.2 Gen 1 port<br />\r\n1x Khe cắm thẻ nhớ microSD</p>\r\n', 1, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(300) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(3, 'Hugn02', '0987654321', 'Hà Nội', 'ship buổi sáng', 363642),
(4, 'Dương Văn A', '0987654321', 'Phú Thọ', 'ship chậm thôi', 363643),
(5, 'Vũ Tuấn', '0293649302', 'Trái đất', 'Giao trong giờ hành chính', 3),
(6, 'Vũ Tuấn', '0293649302', 'Trái đất', 'Giao trong giờ hành chính', 3),
(7, 'Minh hai son', '0921991634', 'dgagfhfdhsf', 'haha', 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer_reviews`
--
ALTER TABLE `customer_reviews`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`id_donhang`);

--
-- Chỉ mục cho bảng `tbl_donhang_chitiet`
--
ALTER TABLE `tbl_donhang_chitiet`
  ADD PRIMARY KEY (`id_donhang_chitiet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang_chitiet`
--
ALTER TABLE `tbl_donhang_chitiet`
  MODIFY `id_donhang_chitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
