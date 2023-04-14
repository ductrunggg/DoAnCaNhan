-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2023 at 11:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webyte`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(52, 14, '9630', 1, '2023-03-23 09:38:12', 'tienmat', 0),
(53, 14, '8471', 1, '2023-03-23 09:38:33', 'tienmat', 0),
(54, 17, '476', 1, '2023-03-23 21:51:01', 'tienmat', 0),
(55, 14, '548', 1, '2023-03-24 07:47:15', 'tienmat', 0),
(56, 14, '6639', 1, '2023-03-24 08:26:46', 'tienmat', 0),
(57, 14, '9362', 1, '2023-03-30 11:25:36', 'tienmat', 0),
(58, 14, '2860', 1, '2023-03-30 11:26:39', 'tienmat', 0),
(59, 14, '4694', 1, '2023-03-30 11:27:40', 'tienmat', 0),
(60, 13, '6645', 1, '2023-03-30 11:35:53', 'tienmat', 0),
(61, 13, '3880', 0, '2023-03-30 13:07:55', 'tienmat', 0),
(62, 14, '9246', 1, '2023-03-30 22:25:55', 'tienmat', 0),
(63, 18, '4485', 1, '2023-04-05 13:51:47', 'tienmat', 0),
(64, 18, '7708', 1, '2023-04-05 16:51:22', 'tienmat', 0),
(65, 13, '7419', 1, '2023-04-06 22:59:39', 'tienmat', 0),
(66, 19, '4653', 1, '2023-04-07 07:24:29', 'tienmat', 0),
(67, 18, '8249', 1, '2023-04-07 07:49:36', 'tienmat', 0),
(68, 18, '4027', 1, '2023-04-07 07:50:34', 'chuyenkhoan', 0),
(69, 13, '4885', 1, '2023-04-14 00:03:09', 'tienmat', 0),
(70, 14, '7607', 1, '2023-04-14 00:58:40', 'tienmat', 0),
(71, 20, '2444', 1, '2023-04-14 09:14:55', 'tienmat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(69, '9630', 8, 1),
(70, '9630', 9, 1),
(71, '8471', 8, 2),
(72, '8471', 9, 1),
(73, '476', 2, 2),
(74, '548', 17, 1),
(75, '6639', 18, 1),
(76, '9362', 10, 1),
(77, '2860', 10, 1),
(78, '2860', 19, 1),
(79, '4694', 10, 3),
(80, '4694', 19, 3),
(81, '6645', 18, 1),
(82, '3880', 18, 3),
(83, '3880', 19, 3),
(84, '9246', 19, 6),
(85, '4485', 2, 1),
(86, '4485', 6, 1),
(87, '4485', 5, 1),
(88, '4485', 3, 1),
(89, '7708', 16, 1),
(90, '7419', 18, 1),
(91, '7419', 9, 1),
(92, '7419', 4, 1),
(93, '7419', 2, 1),
(94, '4653', 4, 2),
(95, '4653', 16, 2),
(96, '4653', 10, 1),
(97, '4653', 8, 1),
(98, '4653', 19, 1),
(99, '8249', 4, 2),
(100, '8249', 16, 2),
(101, '8249', 10, 1),
(102, '8249', 8, 1),
(103, '8249', 19, 1),
(104, '4027', 4, 2),
(105, '4027', 16, 2),
(106, '4027', 10, 1),
(107, '4027', 8, 1),
(108, '4027', 19, 2),
(109, '4885', 18, 1),
(110, '4885', 9, 1),
(111, '7607', 6, 1),
(112, '2444', 19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(13, 'auduongductrung', 'dt@gmail.com', '82 nguyen cong hoan', 'c4ca4238a0b923820dcc509a6f75849b', '0903162409'),
(14, 'dt', 'dt53@gmail.com', '116 tran ke xuong', '202cb962ac59075b964b07152d234b70', '0907105530'),
(18, 'nth', 'nth@gmail.com', '36 cong hoa', 'c4ca4238a0b923820dcc509a6f75849b', '0344517822'),
(19, 'phamquanghuy', 'pqh@gmail.com', '8 tam bình quận thủ đức ', '250cf8b51c773f3f8dc8b4be867a9a02', '0909778553'),
(20, 'trung', 'trung@gmail.com', '48 hoa su', 'c4ca4238a0b923820dcc509a6f75849b', '0909399734');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Cân sức khỏe', 4),
(2, 'Máy xông mũi họng', 3),
(4, 'Máy đo huyết áp', 2),
(5, 'Máy đo đường huyết', 1),
(6, 'Đèn hồng ngoại', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(1, 'Máy xông mũi họng Omron NE-C803', '007', '750000', 100, '1679463283_NE-C803.jpg', '<p>-&nbsp;K&iacute;ch thước m&aacute;y: 85(rộng) x 43 (cao) x 115 (dầy) mm</p>\r\n\r\n<p>- Trọng lượng: 180g ( chỉ bao gồm m&aacute;y n&eacute;n kh&iacute;)</p>\r\n\r\n<p>- Tốc độ x&ocirc;ng : 0,3 ml/ph&uacute;t ( theo trọng lượng&nbsp; hao hụt ).</p>\r\n\r\n<p>- Dung t&iacute;ch cốc thuốc: 10ml</p>\r\n\r\n<p>- K&iacute;ch thước hạt: 3 mm</p>\r\n\r\n<p>- Dung lượng cốc thuốc : 7 ml</p>\r\n', '<p>&nbsp;Tr&ecirc;n thị trường c&oacute; nhiều d&ograve;ng sản phẩm m&aacute;y x&ocirc;ng cho bạn lựa chọn, nhưng Omron lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu do đ&acirc;y l&agrave; sản phẩm tạo được độ uy t&iacute;n về chất lượng sản phẩm, hiệu quả sử dụng cao, tiện lợi...rất ph&ugrave; hợp cho việc chăm s&oacute;c sức khỏe gia đ&igrave;nh.</p>\r\n\r\n<p>&nbsp; M&aacute;y x&ocirc;ng mũi họng Omron NE-C803&nbsp;thuộc d&ograve;ng m&aacute;y n&eacute;n kh&iacute; kh&ocirc;ng n&oacute;ng, dễ sử dụng v&agrave; đảm bảo vệ sinh. Đ&acirc;y l&agrave; sản phẩm l&yacute; tưởng cho việc chăm s&oacute;c sức khỏe gia đ&igrave;nh bạn.</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron - Nhật Bản.</p>\r\n\r\n<p><strong>Bảo h&agrave;nh:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron Việt Nam 24 th&aacute;ng.</p>\r\n', 1, 2),
(2, 'Máy xông mũi họng Omron NE-C28', '006', '1480000', 100, '1679463045_NE-C28.jpg', '<p>- K&iacute;ch thước m&aacute;y: 175(d&agrave;i) x 158(rộng) x 98(cao) mm.</p>\r\n\r\n<p>- Trọng lượng: 1.6kg.</p>\r\n\r\n<p>- Tốc độ phun kh&iacute;: 0.5ml thuốc/ph&uacute;t (t&iacute;nh theo lượng dung dịch thuốc hao hụt tr&ecirc;n 1 ph&uacute;t).</p>\r\n\r\n<p>- Dung t&iacute;ch cốc thuốc: Tối đa 7ml.</p>\r\n\r\n<p>- K&iacute;ch thước hạt thuốc: 3 micron (si&ecirc;u nhỏ, ph&ugrave; hợp với nang phổi của trẻ nhỏ)</p>\r\n', '<p>&nbsp;M&aacute;y x&ocirc;ng mũi Omron NE-C28&nbsp;l&agrave; sản phẩm m&aacute;y x&ocirc;ng điều trị hiệu quả cao c&aacute;c chứng bệnh li&ecirc;n qua mũi họng v&agrave; phế quản.</p>\r\n\r\n<p>&nbsp;M&aacute;y x&ocirc;ng mũi Omron NE-C28 dễ sử dụng v&agrave; đảm bảo vệ sinh. Phụ kiện k&egrave;m theo ph&ugrave; hợp với mọi đối tượng sử dụng từ trẻ sơ sinh, trẻ nhỏ v&agrave; người lớn tuổi.</p>\r\n\r\n<p>&nbsp; &nbsp; Tốc độ x&ocirc;ng c&oacute; 2 mức ri&ecirc;ng biệt cho người lớn v&agrave; trẻ nhỏ; hạt thuốc phun c&oacute; độ mịn cao, thẩm thấu nhanh v&agrave;o cơ thể v&agrave; độ bền lu&ocirc;n ở mức cao nhất. Đ&acirc;y l&agrave; sản phẩm rất ph&ugrave; hợp cho quy m&ocirc; gia đ&igrave;nh</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron - Nhật Bản.</p>\r\n', 1, 2),
(3, 'Máy đo huyết áp cổ tay Omron HEM-6161', '005', '900000', 100, '1679462976_HEM-6161.jpg', '<p>- Phương ph&aacute;p đo: Đo dao động.</p>\r\n\r\n<p>- Giới hạn đo:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Huyết &aacute;p: 0 tới 299 mm Hg</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Nhịp tim: 40 tới 180 nhịp/ph&uacute;t.</p>\r\n\r\n<p>- Độ ch&iacute;nh x&aacute;c:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Huyết &aacute;p: &plusmn;3 mm Hg.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Nhịp tim: &plusmn;5%.</p>\r\n\r\n<p>- Tự động bơm v&agrave; xả kh&iacute;.</p>\r\n\r\n<p>- Pin: 2 pin AAA.</p>\r\n\r\n<p>- Trọng lượng: 101g (kh&ocirc;ng gồm pin).</p>\r\n\r\n<p>- K&iacute;ch thước m&aacute;y : Khoảng 78 (rộng) x 60 (cao) x 21 (d&agrave;i) mm</p>\r\n\r\n<p>- Phụ kiện k&egrave;m theo:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Hộp đựng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Hướng dẫn sử dụng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Phiếu bảo h&agrave;nh ch&iacute;nh h&atilde;ng Omron - 60 th&aacute;ng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Pin.</p>\r\n', '<p>- Một chiếc m&aacute;y đo huyết &aacute;p v&agrave; nhịp tim tại cổ tay thuận tiện nhất, gi&aacute; rẻ nhất của h&atilde;ng Omron&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; - Thế hệ thứ hai 2020 mới tự động ho&agrave;n to&agrave;n, đơn giản, dễ sử dụng, cho kết quả ch&iacute;nh x&aacute;c tuyệt đối.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; - Ưu điểm: Tiện lợi, dễ sử dụng, tiện mang đi l&agrave;m việc, đi c&ocirc;ng t&aacute;c.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; - Th&ocirc;ng số đo của m&aacute;y bao gồm chỉ số huyết &aacute;p tối đa, chỉ số huyết &aacute;p tối thiểu v&agrave; nhịp tim/ph&uacute;t.</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Ch&iacute;nh h&atilde;ng Omron - Nhật Bản.</p>\r\n', 1, 4),
(4, 'Máy đo huyết áp bắp tay Omron HEM-8712', '004', '940000', 100, '1679462860_HEM-8712.jpg', '<p>- Giới hạn đo:</p>\r\n\r\n<p>&nbsp; + Huyết &aacute;p: từ 0 đến 299 mmHg.</p>\r\n\r\n<p>&nbsp; + Nhịp tim: từ 40 đến 180 nhịp/ph&uacute;t.</p>\r\n\r\n<p>- Độ ch&iacute;nh x&aacute;c:</p>\r\n\r\n<p>&nbsp; + Huyết &aacute;p: +- 3 mmHg.</p>\r\n\r\n<p>&nbsp; + Nhịp tim: +- 5 %.</p>\r\n\r\n<p>- Cơ chế hoạt động: tự động bơm xả kh&iacute; v&agrave; đo giao động.</p>\r\n\r\n<p>- Nguồn năng lượng: Sử dụng 4 pin AAA hoặc bộ cắm điện trực tiếp AC Adapter.</p>\r\n\r\n<p>- Trọng lượng m&aacute;y: 250g (kh&ocirc;ng bao gồm pin).</p>\r\n\r\n<p>- K&iacute;ch thước m&aacute;y: 129 x&nbsp;103&nbsp;x 80&nbsp;mm.</p>\r\n\r\n<p>- Phụ kiện k&egrave;m theo m&aacute;y:</p>\r\n\r\n<p>&nbsp; + V&ograve;ng b&iacute;t quấn bắp tay cỡ trung b&igrave;nh ( d&agrave;nh cho cỡ tay từ 22 - 32cm, c&oacute; thể mua th&ecirc;m loại nhỏ v&agrave; to)</p>\r\n\r\n<p>&nbsp; + Hướng dẫn sử dụng bằng tiếng Việt v&agrave; phiếu bảo h&agrave;nh ch&iacute;nh h&atilde;ng Omron Việt Nam 60 th&aacute;ng.</p>\r\n\r\n<p>&nbsp; + Bộ pin cỡ AAA gồm 4 vi&ecirc;n.</p>\r\n', '<p>M&aacute;y đo huyết &aacute;p Omron HEM-8712 l&agrave; d&ograve;ng đo huyết &aacute;p bắp tay cơ bản, đảm bảo c&aacute;c t&iacute;nh năng đơn giản nhất, nhằm mang tới cho người d&ugrave;ng một chiếc m&aacute;y dễ sử dụng.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sử dụng c&ocirc;ng nghệ cảm biến điện tử Intellisense thế hệ thứ hai 2022 mới ho&agrave;n to&agrave;n tự động, gi&uacute;p đo huyết &aacute;p nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c, tiện dụng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Th&ocirc;ng số đo của m&aacute;y bao gồm chỉ số huyết &aacute;p tối đa, chỉ số huyết &aacute;p tối thiểu v&agrave; nhịp tim/ph&uacute;t.</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Ch&iacute;nh h&atilde;ng Omron - Nhật Bản.</p>\r\n\r\n<p><strong>Bảo h&agrave;nh:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron Việt Nam 60 th&aacute;ng. (5 năm).</p>\r\n', 1, 4),
(5, 'Que thử máy đo đường huyết Omron', '002', '300000', 100, '1679462460_quethu.jpg', '<p>Quy c&aacute;ch đ&oacute;ng g&oacute;i 25 que/lọ<br />\r\nD&ograve;ng m&aacute;y sử dụng: Omron HGM-111 &amp;&nbsp;Omron HGM-112</p>\r\n', '<p>Que thử đường huyết chỉ sử dụng cho m&aacute;y đo đường huyết HGM-111 v&agrave; HGM-112. Que thử được thiết kế để người sử dụng đo lượng đường của m&aacute;u tươi trong mao mạch lấy từ đầu ng&oacute;n &nbsp;tay hoặc l&ograve;ng b&agrave;n tay.</p>\r\n', 1, 5),
(6, 'Cân điện tử Omron HN-289', '003', '500000', 100, '1679462727_HN-289.jpg', '<p>- Loại Pin: CR 2032</p>\r\n\r\n<p>- Sai số c&acirc;n nặng: 0,1kg (100g)</p>\r\n\r\n<p>- M&agrave;n h&igrave;nh hiển thị: LCD</p>\r\n\r\n<p>- M&agrave;u sắc: Xanh; Đen</p>\r\n\r\n<p>- Mức c&acirc;n: 5kg - 150kg</p>\r\n\r\n<p>- Trọng lượng: 1,2kg</p>\r\n\r\n<p>- K&iacute;ch thước: 290mm x 270mm x 22mm</p>\r\n', '<p>- <em><strong>C&acirc;n điện tử</strong>&nbsp;<strong>Omron HN-289</strong></em>&nbsp;thiết kế kiểu d&aacute;ng đơn giản nhưng sang trọng với bề mặt được l&agrave;m bằng k&iacute;nh d&agrave;y 2,2cm chịu lực tốt. Đồng thời bề mặt k&iacute;nh nhẵn b&oacute;ng gi&uacute;p việc vệ sinh cũng dễ d&agrave;ng hơn.</p>\r\n\r\n<p>-&nbsp;<em><strong>Omron HN-289</strong></em>&nbsp;c&oacute; mặt k&iacute;nh d&agrave;y, chịu lực l&ecirc;n tới 150 kg.</p>\r\n\r\n<p>- Trọng lượng c&acirc;n nhẹ chỉ 1,2 kg gi&uacute;p bạn di chuyển khi sử dụng hay cất giữ thật nhẹ nh&agrave;ng. Mặt dưới của&nbsp;<strong>c&acirc;n điện tử Omron HN-289</strong>&nbsp;c&oacute; 4 cảm biến th&ocirc;ng minh gi&uacute;p bạn c&acirc;n nhanh ch&oacute;ng với kết quả c&acirc;n ch&iacute;nh x&aacute;c, sai số chỉ 100g.</p>\r\n\r\n<p>- Mức&nbsp;giới hạn của c&acirc;n từ 5-150 kg. Với chiếc c&acirc;n n&agrave;y gia đ&igrave;nh bạn c&oacute; thể dễ d&agrave;ng kiểm tra v&agrave; theo d&otilde;i c&acirc;n nặng của m&igrave;nh để l&ecirc;n chế độ ăn v&agrave; tập luyện hợp l&yacute; cho cơ thể khỏe mạnh.</p>\r\n\r\n<p>-&nbsp;<strong>Omron HN-289</strong>&nbsp;c&oacute; m&agrave;n h&igrave;nh LCD lớn gi&uacute;p bạn quan s&aacute;t kết quả c&acirc;n sau khi đo r&otilde; r&agrave;ng. C&acirc;n d&ugrave;ng pin CR 2032 dễ lắp. Sau khi c&acirc;n xong, c&acirc;n&nbsp;sẽ tự động tắt khi kh&ocirc;ng sử dụng gi&uacute;p tiết kiệm pin.</p>\r\n', 1, 1),
(7, 'Máy đo đường huyết Omron HGM112', '001', '1200000', 100, '1679582008_HMG-112.jpg', '<p>- Sản phẩm: M&aacute;y đo đường huyết</p>\r\n\r\n<p>- Kiểm tra: Mức độ đường huyết</p>\r\n\r\n<p>- Mẫu :M&aacute;u mao mạch tươi to&agrave;n phần*1</p>\r\n\r\n<p>- Lượng mẫu m&aacute;u : 0,5 &micro;l</p>\r\n\r\n<p>- Que thử : Que thử đường huyết Omron</p>\r\n\r\n<p>- Đơn vị đo : mg/dL hoặc mmol/L</p>\r\n\r\n<p>- Phạm vi đo: 10 tới 600 mg/dL hoặc 0,6 tới 33,3 mmol/L.</p>\r\n\r\n<p>- Tuổi thọ của pin: Khoảng 2.000 lần đo (số lần đo thực tế c&oacute; thể thấp hơn t&ugrave;y theo điều kiện sử dụng)</p>\r\n\r\n<p>- Ti&ecirc;u thụ năng lượng: 0,02 W (tối đa)</p>\r\n\r\n<p>- Vị tr&iacute; đo : Đầu ng&oacute;n tay hoặc l&ograve;ng b&agrave;n tay</p>\r\n', '<p>- L&agrave; sản phẩm m&aacute;y đo đường huyết&nbsp;<em>được ưa chuộng nhất tại Việt Nam</em>&nbsp;nhờ sự ch&iacute;nh x&aacute;c v&agrave; t&iacute;nh năng sử dụng đơn giản.</p>\r\n\r\n<p>- Que thử được m&atilde; h&oacute;a tự động, gi&uacute;p loại bỏ c&aacute;c lỗi sai c&oacute; thể dẫn đếu sai liều lượng thuốc điều trị.</p>\r\n\r\n<p>- Kh&ocirc;ng phải c&agrave;i m&atilde; cho mỗi lần sử dụng, d&ugrave;ng đơn giản nhất l&agrave; với người gi&agrave;.</p>\r\n\r\n<p>- Phụ kiện như que thử m&aacute;u, kim lấy m&aacute;u sẵn c&oacute; v&agrave; mua dễ d&agrave;ng ở bất kỳ chỗ n&agrave;o.</p>\r\n\r\n<p>- Thời gian đo nhanh trong 5 gi&acirc;y.</p>\r\n\r\n<p>- Đo với một mẫu m&aacute;u nhỏ</p>\r\n\r\n<p>- C&oacute; đ&egrave;n m&agrave;n h&igrave;nh dễ đọc kết quả đo.</p>\r\n\r\n<p>- C&oacute; t&iacute;n hiệu b&aacute;o lỗi khi sử dụng que thử qu&aacute; hạn, bị hỏng hoặc que thử đ&atilde; qua sử dụng.</p>\r\n\r\n<p>- Bộ nhớ lưu kết quả lần đo trước.</p>\r\n', 1, 5),
(8, 'Cân sức khỏe cơ học Nhơn Hòa', '008', '300000', 50, '1679463372_nhonhoa.jpg', '<table style=\"width:539px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>H&atilde;ng sản xuất/Model</td>\r\n			<td>Nhơn H&ograve;a 120kg CSK-120</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phạm vi đo</td>\r\n			<td>20 &ndash; 120kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gi&aacute; trị độ chia</td>\r\n			<td>500g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sai số</td>\r\n			<td>tối thiểu : &plusmn;500g &ndash; tối đa : &plusmn;1500g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>Mặt k&iacute;nh nhựa nhựa AS trong suốt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Tấm l&oacute;t, bảng tham khảo: nhựa ABS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Vỏ hộp c&acirc;n được sơn tĩnh điện, mặt nhựa l&oacute;t c&oacute; nhiều m&agrave;u sắc</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Mặt số bằng nh&ocirc;m: in lụa, đường k&iacute;nh mặt số &oslash;170 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Hệ lbs : V&ograve;ng chia c&oacute; khoảng hở</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Hệ kg : V&ograve;ng chia k&iacute;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng lượng</td>\r\n			<td>2.5 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>304 x 278 x 70 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ sản phẩm</td>\r\n			<td>Ch&iacute;nh h&atilde;ng Nhơn H&ograve;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>12 Th&aacute;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ b&aacute;n h&agrave;ng đầy đủ</td>\r\n			<td>C&acirc;n + HDSD + Phiếu bảo h&agrave;nh ch&iacute;nh h&atilde;ng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<p>C&acirc;n sức khỏe 120kg Nhơn H&ograve;a CSK-120 được sản xuất tại Việt Nam với mặt k&iacute;nh, tấm l&oacute;t v&agrave; bảng tham khảo bằng chất liệu nhựa ABS cao cấp tạo độ ch&iacute;nh x&aacute;c tuyệt đối, bền bỉ, kh&oacute; bị biến dạng khi bị va chạm hay chịu lực. Đặc biệt, vỏ ngo&agrave;i c&acirc;n được phủ lớp sơn tĩnh điện, chống gỉ s&eacute;t khi tiếp x&uacute;c với m&ocirc;i trường ẩm ướt, tạo độ s&aacute;ng b&oacute;ng v&agrave; đẹp mắt, g&oacute;p phần l&agrave;m cho sản phẩm c&oacute; độ bền cao hơn. Bạn c&oacute; thể y&ecirc;n t&acirc;m sử dụng sản phẩm n&agrave;y trong một thời gian d&agrave;i gi&uacute;p tiết kiệm chi ph&iacute; v&igrave; kh&ocirc;ng cần phải sửa chữa, thay thế thường xuy&ecirc;n như c&aacute;c loại c&acirc;n th&ocirc;ng thường kh&aacute;c.</p>\r\n', 1, 1),
(9, 'Đèn hồng ngoại MEDILAMP 250', '009', '400000', 100, '1679540673_250.jpg', '<p>- H&atilde;ng sản xuất: Th&agrave;nh Nh&acirc;n TNE</p>\r\n\r\n<p>- Xuất xứ: Việt Nam</p>\r\n\r\n<p>- Nguồn điện: 220-240V - 50Hz</p>\r\n\r\n<p>- Bước s&oacute;ng: 940nm</p>\r\n\r\n<p>- Vật liệu: Kim loại</p>\r\n\r\n<p>- Chiều cao th&acirc;n đ&egrave;n: 45cm</p>\r\n\r\n<p>- C&ocirc;ng suất: 0 - 250W</p>\r\n\r\n<p>- Khoảng c&aacute;ch đ&egrave;n c&aacute; nh&acirc;n: 30 - 80cm</p>\r\n\r\n<p>- Thời gian rọi: 15 đến 30 ph&uacute;t</p>\r\n\r\n<p>- Chu&ocirc;i đ&egrave;n: E27; 220V, 250W</p>\r\n\r\n<p>- Bộ sản phẩm gồm: Ch&acirc;n đ&egrave;n c&oacute; chiết &aacute;p v&agrave; b&oacute;ng đ&egrave;n 250W</p>\r\n\r\n<p>- Bảo h&agrave;nh: 3 năm</p>\r\n', '<p>&Aacute;nh s&aacute;ng của một ngọn đ&egrave;n th&ocirc;ng thường kh&ocirc;ng đem lại t&aacute;c dụng l&agrave;m l&agrave;nh vết thương hay c&aacute;c c&ocirc;ng dụng y học. Tuy nhi&ecirc;n, tia hồng ngoại đ&atilde; được y học thế giới liệt v&agrave;o nh&oacute;m c&aacute;c&nbsp;<strong>&ldquo;thi&ecirc;n nhi&ecirc;n liệu ph&aacute;p&rdquo;</strong>, c&oacute; thể đem lại c&aacute;c kết quả điều trị rất hữu &iacute;ch.</p>\r\n\r\n<p>N&ecirc;n c&aacute;c d&ograve;ng đ&egrave;n hồng ngoại đang được rất nhiều người quan t&acirc;m v&agrave; sử dụng bởi t&aacute;c dụng của n&oacute; trong trị liệu. Ch&iacute;nh v&igrave; thế c&aacute;c nh&agrave; nghi&ecirc;n cứu đ&atilde; cho ra đời&nbsp;<strong>&ldquo;Đ&egrave;n hồng ngoại TNE MEDILAMP 250W đa năng&rdquo;</strong>&nbsp;để gi&uacute;p mọi người trong việc chăm s&oacute;c sức khỏe hằng ng&agrave;y.</p>\r\n', 1, 6),
(10, 'Đèn hồng ngoại Beurer IL21', '010', '900000', 50, '1679464046_Beurer IL21.jpg', '<p>&ndash; Th&acirc;n đ&egrave;n bằng nhựa cao cấp đạt ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u</p>\r\n\r\n<p>&ndash; Thiết kế th&acirc;n thiện chuẩn mực</p>\r\n\r\n<p>&ndash; Xuất xứ: Đức</p>\r\n\r\n<p>&ndash; C&oacute; 5 nấc chỉnh g&oacute;c nghi&ecirc;ng.</p>\r\n\r\n<p>&ndash; Đ&egrave;n c&oacute; c&ocirc;ng suất: 150W.</p>\r\n\r\n<p>&ndash; Bảo h&agrave;nh 03 năm cho th&acirc;n m&aacute;y, kh&ocirc;ng bảo h&agrave;nh b&oacute;ng đ&egrave;n.</p>\r\n\r\n<p>&ndash; Khoảng c&aacute;ch khi sử dụng với đ&egrave;n 60-80cm</p>\r\n\r\n<p>&ndash; K&iacute;ch thước: 140 x 205 x 175 mm</p>\r\n\r\n<p>&ndash; Nặng: 612g</p>\r\n', '<p>&ndash; Vi&ecirc;m mạn t&iacute;nh: vi&ecirc;m khớp, vi&ecirc;m g&acirc;n, tho&aacute;i ho&aacute; khớp, &aacute;p xe&hellip;</p>\r\n\r\n<p>&ndash; Ph&ugrave; nề do vi&ecirc;m, ch&egrave;n &eacute;p, do chấn thương.</p>\r\n\r\n<p>&ndash; Đau n&ocirc;ng cơ khớp, đau do thần kinh ngoại vi</p>\r\n\r\n<p>&ndash; Tổ chức da, cơ sẹo xơ d&iacute;nh.</p>\r\n\r\n<p>&ndash; Thiểu dưỡng do tuần ho&agrave;n k&eacute;m.</p>\r\n\r\n<p>&ndash; Co thắt cơ, cơ tăng trương lực, chuẩn bị cho tập vận động</p>\r\n\r\n<p>&ndash; Vết thương chậm liền</p>\r\n\r\n<p>&ndash; Giảm đau, giảm co thắt cơ trong c&aacute;c chứng đau mạn t&iacute;nh như: đau thắt lưng, đau cổ vai c&aacute;nh tay, đau thần kinh tọa, đau thần kinh li&ecirc;n sườn, đau khớp, đau cơ,&hellip;</p>\r\n\r\n<p>&ndash; Tăng cường dinh dưỡng tại chỗ trong c&aacute;c trường hợp vết thương, vết lo&eacute;t l&acirc;u liền, l&agrave;m nhanh liền sẹo,&hellip;</p>\r\n\r\n<p>&ndash; L&agrave;m gi&atilde;n cơ để gi&uacute;p cho c&aacute;c kỹ thuật trị liệu kh&aacute;c như xoa b&oacute;p, tập vận động dễ d&agrave;ng hơn,..</p>\r\n\r\n<p>Đ&egrave;n hồng ngoại trị liệu Beurer IL21 với t&aacute;c động của bức xạ nhiệt hồng ngoại c&aacute;c tế b&agrave;o, mạch m&aacute;u, c&aacute;c m&ocirc;.. tr&ecirc;n cơ thể tăng khả năng hoạt động, Sức n&oacute;ng của đ&egrave;n c&oacute; t&aacute;c dụng hỗ trợ giảm đau, chống co cứng cơ; l&agrave;m gi&atilde;n mạch, tăng chuyển h&oacute;a v&agrave; dinh dưỡng tại chỗ; thường duy tr&igrave; chiếu đ&egrave;n trong khoảng thời gian 15-30 ph&uacute;t.</p>\r\n', 1, 6),
(16, 'Máy đo đường huyết Omron HGM111', '011', '1000000', 100, '1679581948_HGM-111.jpg', '<p>- Sản phẩm: M&aacute;y đo đường huyết</p>\r\n\r\n<p>- Kiểm tra: Mức độ đường huyết</p>\r\n\r\n<p>- Mẫu :M&aacute;u mao mạch tươi to&agrave;n phần*1</p>\r\n\r\n<p>- Lượng mẫu m&aacute;u : 0,5 &micro;l</p>\r\n\r\n<p>- Que thử : Que thử đường huyết Omron</p>\r\n\r\n<p>- Đơn vị đo : mg/dL hoặc mmol/L</p>\r\n\r\n<p>- Phạm vi đo: 10 tới 600 mg/dL hoặc 0,6 tới 33,3 mmol/L.</p>\r\n\r\n<p>- Tuổi thọ của pin: Khoảng 2.000 lần đo (số lần đo thực tế c&oacute; thể thấp hơn t&ugrave;y theo điều kiện sử dụng)</p>\r\n\r\n<p>- Ti&ecirc;u thụ năng lượng: 0,02 W (tối đa)</p>\r\n\r\n<p>- Vị tr&iacute; đo : Đầu ng&oacute;n tay hoặc l&ograve;ng b&agrave;n tay</p>\r\n', '<p>M&aacute;y đo đường huyết Omron HGM-111 - thiết bị hỗ trợ v&agrave; theo d&otilde;i đường huyết c&aacute; nh&acirc;n nhanh ch&oacute;ng, hiệu quả với que thử được m&atilde; h&oacute;a tự động nhằm tăng sự ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>Sản phẩm đạt ti&ecirc;u chuẩn ISO 9001:2008 v&agrave; ti&ecirc;u chuẩn về chất lượng sản phẩm EN ISO 13485. Đem lại kết quả đo ch&iacute;nh x&aacute;c đến 99% tương đương với c&aacute;c sản phẩm đo đường huyết chuy&ecirc;n dụng&nbsp;ở bệnh viện. M&aacute;y sử dụng que thử đ&atilde; được m&atilde; h&oacute;a tự động d&ugrave;ng chung cho tất cả c&aacute;c loại m&aacute;y đo đường huyết Omron v&agrave; b&uacute;t lấy m&aacute;u c&oacute; thể d&ugrave;ng được với tất cả c&aacute;c loại kim kh&aacute;c nhau tr&ecirc;n thị trường gi&uacute;p thuận tiện hơn trong sử dụng.</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron Nhật Bản</p>\r\n\r\n<p><strong>Bảo h&agrave;nh:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron 60 th&aacute;ng</p>\r\n', 1, 5),
(17, 'Máy đo huyết áp bắp tay Omron HEM-7280T', '012', '2400000', 50, '1679582352_HEM-7280T.jpg', '<p>- Phương ph&aacute;p đo: Đo dao động.</p>\r\n\r\n<p>- Giới hạn đo:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Huyết &aacute;p: 0 tới 299 mm Hg</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Nhịp tim: 40 tới 180 nhịp/ph&uacute;t.</p>\r\n\r\n<p>- Độ ch&iacute;nh x&aacute;c:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Huyết &aacute;p: &plusmn;3 mm Hg.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Nhịp tim: &plusmn;5%.</p>\r\n\r\n<p>- Tự động bơm v&agrave; xả kh&iacute;.</p>\r\n\r\n<p>- Pin: 4 pin AA hoặc bộ đổi điện Omron</p>\r\n\r\n<p>- Trọng lượng: 364g (kh&ocirc;ng gồm pin).</p>\r\n\r\n<p>- K&iacute;ch thước m&aacute;y : Khoảng 115 (rộng) x 84 (cao) x 139 (d&agrave;i)</p>\r\n', '<p>M&aacute;y đo huyết &aacute;p bắp tay lu&ocirc;n lu&ocirc;n cho ra kết quả ch&iacute;nh x&aacute;c nhất. Do mạch m&aacute;u ở bắp tay, kể cả với người lớn tuổi, gần tim nhất, lu&ocirc;n r&otilde; mạch v&agrave; th&ocirc;ng số huyết &aacute;p chuẩn với chỉ số của cơ thể nhất.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; M&aacute;y đo huyết &aacute;p bắp tay Omron 7280T sử dụng c&ocirc;ng nghệ cảm biến vi vạch xử l&yacute; kết quả Intellisense Fuzzy Logic thế hệ thứ ba năm 2020 mới ho&agrave;n to&agrave;n tự động, gi&uacute;p đo huyết &aacute;p nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c, tiện dụng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; L&agrave; d&ograve;ng sản phẩm ho&agrave;n to&agrave;n mới trong năm 2020<em>.&nbsp;</em>Thiết kế nổi bật với t&iacute;nh năng kết nối đơn giản, đồng bộ dữ liệu dễ d&agrave;ng; kết quả r&otilde; r&agrave;ng, dễ hiểu, c&oacute; thể truy cập bất kỳ l&uacute;c n&agrave;o th&ocirc;ng qua thiết bị di động th&ocirc;ng minh, gi&uacute;p thuận tiện theo d&otilde;i sức khỏe.</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Ch&iacute;nh h&atilde;ng Omron - Nhật Bản</p>\r\n\r\n<p><strong>Bảo h&agrave;nh:</strong>&nbsp;Ch&iacute;nh h&atilde;ng Omron Việt Nam 60 th&aacute;ng. (5 năm).</p>\r\n', 1, 4),
(18, 'Cân sức khỏe điện tử Beurer GS211', '013', '400000', 100, '1679589472_GS211.jpg', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>C&acirc;n nặng tối đa: 180kg&nbsp;</li>\r\n	<li>Độ ph&acirc;n giải : 0.1kg&nbsp;</li>\r\n	<li>2 pin lithium 3V, CR 2032&nbsp;</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c v&agrave; độ lặp lại trong phạm vi dung sai: + / -1% + 0,1 kg theo đ&uacute;ng chuẩn kỹ thuật&nbsp;</li>\r\n</ul>\r\n', '<p>C&acirc;n sức khỏe điện tử Buerer GS211 Mognolia sẽ gi&uacute;p bạn kiểm so&aacute;t c&acirc;n nặng hiệu quả. Buerer GS211 được thiết kế bằng k&iacute;nh cường lực, an to&agrave;n, độ ch&iacute;nh x&aacute;c cao, đ&atilde; được kiểm định v&agrave; đạt ti&ecirc;u chuẩn chất lượng Ch&acirc;u &Acirc;u. Mặt kh&aacute;c, c&acirc;n sức khỏe Beurer GS211 Magnolia c&ograve;n tự động cảnh b&aacute;o khi qu&aacute; trọng tải, tự động tắt khi kh&ocirc;ng sử dụng.</p>\r\n\r\n<p>Kiểm tra sức khỏe định kỳ l&agrave; việc v&ocirc; c&ugrave;ng quan trọng v&agrave; c&oacute; t&iacute;nh thường xuy&ecirc;n. C&oacute; thể kiểm tra bằng c&aacute;c loại m&aacute;y đo huyết &aacute;p để kiểm so&aacute;t tim mạch, huyết &aacute;p, M&aacute;y tiểu đường để kiểm tra mức đường huyết. C&acirc;n sức khỏe để kiểm tra c&acirc;n nặng hữu &iacute;ch cho người cần kiểm so&aacute;t sự tăng giảm của bệnh tật hay sự ph&aacute;t triển của cơ thể hoặc hiệu quả của việc giảm c&acirc;n c&oacute; chủ &yacute;. C&acirc;n sức khỏe điện tử Beurer GS211 Mognolia sẽ gi&uacute;p bạn kiểm so&aacute;t c&acirc;n nặng hiệu quả.</p>\r\n', 1, 1),
(19, 'Máy xông mũi họng Beurer IH18', '014', '900000', 100, '1679589779_IH18.jpg', '<p>&ndash; K&iacute;ch thước ( DxRxC): 160x 155x 84 mm<br />\r\n&ndash; Trọng lượng: 1,3 kg<br />\r\n&ndash; &Aacute;p lực: 0,66- 1,1 bar<br />\r\n&ndash; Tốc độ phun: 0,4 ml/ph&uacute;t<br />\r\n&ndash; K&iacute;ch thước hạt: 3,16&nbsp;&micro;m<br />\r\n&ndash; Độ ồn: 52 dBA<br />\r\n&ndash; Dung t&iacute;ch bầu x&ocirc;ng: tối đa 6 ml<br />\r\n&ndash; D&ograve;ng chảy thuốc: 0,2ml/ ph&uacute;t<br />\r\n-Điện &aacute;p:&nbsp;230 V ~, 50 Hz; 180 VA<br />\r\n&ndash; Điều kiện hoạt động:&nbsp;Nhiệt độ : 100C &ndash; 400C , độ ẩm 10% &ndash; 95%<br />\r\n&ndash; Bảo quản, vận chuyển:&nbsp;Nhi.t &eth;. : -200C &ndash; 700C , độ ẩm 10% &ndash; 95%</p>\r\n', '<p>M&aacute;y x&ocirc;ng mũi họng Beurer IH18 l&agrave; d&ograve;ng thiết bị y tế d&ugrave;ng cho gia đ&igrave;nh. Thiết bị l&agrave; vật dụng y tế thiết yếu cho những gia đ&igrave;nh c&oacute; trẻ nhỏ, những người bị mắc c&aacute;c bệnh về đường h&ocirc; hấp như hen suyễn, vi&ecirc;m phế quản, vi&ecirc;m xoang,&hellip;&nbsp;</p>\r\n\r\n<p>&ndash; Thiết kế nhỏ gọn bằng l&ograve;ng b&agrave;n tay, dễ d&agrave;ng thuận tiện trong việc di chuyển nhiều<br />\r\n&ndash; Kh&iacute; phun ra nhỏ mịn, dễ d&agrave;ng thẩm thấu v&agrave;o trong cơ thể<br />\r\n&ndash; Gi&aacute; th&agrave;nh kinh tế, ph&ugrave; hợp với mọi gia đ&igrave;nh. C&oacute; tấm lọc kh&iacute; an to&agrave;n trong việc sử dụng<br />\r\n&ndash; M&aacute;y chạy &ecirc;m, nhẹ nh&agrave;ng, kh&ocirc;ng l&agrave;m trẻ giật m&igrave;nh khi x&ocirc;ng kh&iacute;<br />\r\n&ndash; Bảo h&agrave;nh: 5 năm</p>\r\n', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(15, '2023-03-30', 1, '1300000', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
