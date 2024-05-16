-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 07:07 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlthanhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(50);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `MaTV` int(10) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `Khoa` varchar(100) DEFAULT NULL,
  `Nganh` varchar(100) DEFAULT NULL,
  `SDT` int(10) DEFAULT NULL,
  `pass_word` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`MaTV`, `ho_ten`, `Khoa`, `Nganh`, `SDT`, `pass_word`, `Email`) VALUES
(444444444, 'Trương Tấn Đat', 'cntt', 'ktpm', 777930114, '12345678', '@1234.com'),
(1111111111, 'Trương Tấn Đat', 'cntt', 'ktpm', 777777777, '1234567', '@1234.com'),
(1112312331, 'Trương Tấn Đat', 'cntt', 'ktpm', 777930114, '0777930114', 'truongtandat30114@gmail.com'),
(1120010007, 'Nguyễn Gia Mai', 'Toán UD', 'Toán', 911200100, '1120010007', '1120010007@gmail.com'),
(1120020019, 'Chu Phúc Ngọc', 'SP KHXH', 'Lí', 911200200, '1120020001', '11200200019@gmail.com'),
(1120090014, 'Nguyễn Thị Mỹ Ngân', 'SP KHXH', 'Văn', 911200900, '1120090001', '11200900014@gmail.com'),
(1120090018, 'Trần Thị Anh Ngọc', 'SP KHXH', 'Văn', 911200900, '1120090001', '11200900018@gmail.com'),
(1120380064, 'Nguyễn Ngọc Quỳnh Lực', 'Ngoại Ngữ', 'NNA', 911203800, '1120380064', '1120380064@gmail.com'),
(1120410311, 'Lê Việt Nga', 'CNTT', 'CNTT', 911204103, '1120411031', '11204110311@gmail.com'),
(1120480015, 'Trần Phạm Ngọc Ly', 'Toán UD', 'Toán', 911204800, '1120480015', '1120480015@gmail.com'),
(1120480216, 'Nguyễn Trần Thái Ngọc', 'Toán UD', 'Toán', 911204802, '1120480021', '11204800216@gmail.com'),
(1120480217, 'Trần Minh Phúc Ngọc', 'Toán UD', 'Toán', 911204802, '1120480021', '11204800217@gmail.com'),
(1121020009, 'Bùi Đình Thái My', 'SP KHTN', 'Lí', 911210200, '1121020009', '1121020009@gmail.com'),
(1121100003, 'Nguyễn Đắc Phương Linh', 'SP KHXH', 'Sử', 911211000, '1121100003', '1121100003@gmail.com'),
(1121100012, 'Trương Hoài Nga', 'SP KHXH', 'Sử', 911211000, '1121100001', '11211000012@gmail.com'),
(1121110001, 'Phạm Thị Lan Khôi', 'SP KHXH', 'Địa', 911211100, '1121110001', '1121110001@gmail.com'),
(1121130012, 'Lê Ngọc lan', 'Ngoại Ngữ', 'Anh', 911211300, '1121130012', '1121130012@gmail.com'),
(1122090010, 'Lê Xuân Nam', 'SP KHXH', 'Văn', 911220900, '1122090001', '11220900010@gmail.com'),
(1122090013, 'Nguyễn Mỹ Ngân', 'SP KHXH', 'Văn', 911220900, '1122090001', '11220900013@gmail.com'),
(1122090015, 'Nguyễn Thủy Triều Ngọc', 'SP KHXH', 'Văn', 911220900, '1122090001', '11204800216@gmail.com'),
(1122530016, 'Lê Thục Ly', 'QLGD', 'TLH', 911225300, '1122530016', '1122530016@gmail.com'),
(1122550008, 'Nguyễn Gia My', 'QTKD', 'QTKD', 911225500, '1122550008', '1122550008@gmail.com'),
(1234566778, 'Trương Tấn Đat', 'cntt', 'ktpm', 777930114, '1234567', 'truongtandat30114@gmail.com'),
(1999999981, 'Trương Tấn Đat', 'cntt', 'ktpm', 777930114, '0777930114', 'truongtandat30114@gmail.com'),
(2147483647, 'Nguyễn Văn Nam', 'CNTT', 'HTTT', 123456789, '123456789', '');

-- --------------------------------------------------------

--
-- Table structure for table `thietbi`
--

CREATE TABLE `thietbi` (
  `MaTB` int(10) NOT NULL,
  `TenTB` varchar(100) NOT NULL,
  `mo_tatb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thietbi`
--

INSERT INTO `thietbi` (`MaTB`, `TenTB`, `mo_tatb`) VALUES
(120191, 'Micro không dây 01', 'JBL VM 2001'),
(120192, 'Micro có dây 01', 'MCCD 1001'),
(120203, 'Micro không dây 02', 'BCE 9001'),
(120214, 'Micro không dây 03', 'M3001'),
(120235, 'Micro không dây 03', 'BCE UGX12'),
(220191, 'Máy chiếu Panasonic', 'PNSN 031'),
(320201, 'Máy ảnh Fuji', 'FJ 20201'),
(420201, 'Cassette Sony', 'CN 20201'),
(420212, 'Cassette Sony', 'CN 20211'),
(420213, 'Cassette TQ', 'CSTQ 20211'),
(420224, 'Cassette Sony', 'CS 20221'),
(420236, 'Cassette Sony', 'CS 2023'),
(520221, 'Tivi LG', 'TVLG021'),
(520222, 'Tivi Samsung', 'TVSS20221'),
(620231, 'Quạt đứng', 'QD 20231'),
(620232, 'Quạt đứng', 'QD 20232'),
(620233, 'Quạt đứng', 'QD 20233'),
(620234, 'Quạt đứng', 'QD 20234');

-- --------------------------------------------------------

--
-- Table structure for table `thongtinsd`
--

CREATE TABLE `thongtinsd` (
  `MaTT` int(10) NOT NULL,
  `MaTV` int(10) NOT NULL,
  `MaTB` int(10) DEFAULT NULL,
  `TGVao` datetime DEFAULT NULL,
  `TGMuon` datetime DEFAULT NULL,
  `TGTra` datetime DEFAULT NULL,
  `TGDatcho` datetime DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thongtinsd`
--

INSERT INTO `thongtinsd` (`MaTT`, `MaTV`, `MaTB`, `TGVao`, `TGMuon`, `TGTra`, `TGDatcho`, `trang_thai`) VALUES
(6, 1121110001, NULL, '2024-04-04 10:39:00', NULL, NULL, NULL, NULL),
(7, 1121130012, NULL, '2024-04-04 10:39:00', NULL, NULL, NULL, NULL),
(8, 1121100003, NULL, '2024-04-04 10:40:00', NULL, NULL, NULL, NULL),
(9, 1121110001, NULL, '2024-05-04 08:39:00', NULL, NULL, NULL, NULL),
(10, 1121130012, NULL, '2024-05-04 08:50:00', NULL, NULL, NULL, NULL),
(11, 1121100003, NULL, '2024-05-04 09:55:00', NULL, NULL, NULL, NULL),
(12, 1121110001, 220191, NULL, '2024-03-05 08:50:00', '2024-05-03 12:50:00', NULL, NULL),
(13, 2147483647, 120203, NULL, '2024-03-06 09:50:00', '2024-05-03 12:53:00', NULL, NULL),
(14, 2147483647, 320201, NULL, '2024-03-07 11:00:00', '2024-07-03 13:00:00', NULL, NULL),
(15, 2147483647, 420201, NULL, '2024-03-08 10:00:00', '2024-08-03 16:00:00', NULL, NULL),
(16, 2147483647, 120214, NULL, '2024-03-09 09:00:00', '2024-09-03 11:00:00', NULL, NULL),
(17, 2147483647, 420212, NULL, '2024-03-10 13:00:00', '2024-10-03 13:30:00', NULL, NULL),
(18, 2147483647, 420213, NULL, '2024-03-12 09:11:00', '2024-12-03 11:12:00', '2024-05-23 13:58:00', NULL),
(19, 2147483647, 520221, NULL, '2024-03-12 09:17:00', '2024-03-12 10:17:00', '2024-05-23 13:58:00', NULL),
(20, 1122550008, 620231, NULL, '2024-03-13 12:13:00', NULL, NULL, NULL),
(21, 1121020009, 620232, NULL, '2024-03-14 09:10:00', NULL, NULL, NULL),
(22, 2147483647, 620233, NULL, '2024-03-15 09:17:00', NULL, NULL, NULL),
(33, 1120010007, 120191, NULL, '2024-05-26 13:58:00', NULL, NULL, NULL),
(34, 1120010007, 420212, NULL, NULL, NULL, '2024-05-23 13:58:00', NULL),
(35, 1120010007, 120192, NULL, '2024-05-24 12:00:00', NULL, NULL, NULL),
(39, 1120010007, 120191, NULL, '2024-05-26 13:58:00', NULL, NULL, NULL),
(40, 1120010007, 120191, NULL, '2024-05-27 12:00:00', NULL, NULL, NULL),
(42, 1120010007, 620234, NULL, NULL, NULL, '2024-05-23 12:00:00', NULL),
(43, 444444444, 120235, NULL, NULL, NULL, '2024-05-24 12:00:00', NULL),
(44, 444444444, 120235, NULL, NULL, NULL, '2024-05-23 08:00:00', NULL),
(45, 1120010007, 620234, NULL, NULL, NULL, '2024-05-31 12:00:00', NULL),
(46, 1112312331, 420201, NULL, '2024-05-25 12:00:00', NULL, NULL, NULL),
(47, 1112312331, 220191, NULL, NULL, NULL, '2024-05-29 12:00:00', NULL),
(48, 1999999981, 120203, NULL, NULL, NULL, '2024-05-16 12:00:00', NULL),
(49, 1999999981, 120203, NULL, NULL, NULL, '2024-05-17 14:00:00', NULL),
(50, 1999999981, NULL, '2024-05-16 02:41:20', NULL, NULL, NULL, NULL),
(51, 1999999981, NULL, '2024-05-16 02:41:35', NULL, NULL, NULL, NULL),
(52, 1234566778, NULL, '2024-05-16 02:42:38', NULL, NULL, NULL, NULL),
(53, 1234566778, 120203, NULL, '2024-05-16 02:43:16', NULL, NULL, NULL),
(54, 1999999981, NULL, '2024-05-16 02:43:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xuly`
--

CREATE TABLE `xuly` (
  `MaXL` int(10) NOT NULL,
  `MaTV` int(10) NOT NULL,
  `HinhThucXL` varchar(250) DEFAULT NULL,
  `SoTien` int(100) DEFAULT NULL,
  `NgayXL` datetime DEFAULT NULL,
  `TrangThaiXL` int(2) DEFAULT NULL,
  `hinh_thucxl` varchar(255) DEFAULT NULL,
  `so_tien` int(11) DEFAULT NULL,
  `trang_thaixl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xuly`
--

INSERT INTO `xuly` (`MaXL`, `MaTV`, `HinhThucXL`, `SoTien`, `NgayXL`, `TrangThaiXL`, `hinh_thucxl`, `so_tien`, `trang_thaixl`) VALUES
(10, 1121110001, 'Khóa thẻ 1 tháng', NULL, '2024-01-02 10:00:00', 0, NULL, NULL, NULL),
(11, 1121130012, 'Khóa thẻ 1 tháng', NULL, '2024-02-02 10:59:00', 0, NULL, NULL, NULL),
(12, 1121100003, 'Khóa thẻ 1 tháng', NULL, '2024-03-02 10:58:00', 0, NULL, NULL, NULL),
(13, 1120380064, 'Khóa thẻ 2 tháng', NULL, '2024-04-03 10:58:00', 1, NULL, NULL, NULL),
(14, 1121110001, 'Bồi thường', 300000, '2024-05-03 10:58:00', 0, NULL, NULL, NULL),
(15, 1121130012, 'Bồi thường', 200000, '2024-06-03 10:58:00', 0, NULL, NULL, NULL),
(16, 1121100003, 'Khóa thẻ 1 tháng và bồi thường', 100000, '2024-07-03 10:58:00', 0, NULL, NULL, NULL),
(18, 2147483647, 'Khóa thẻ 2 tháng', NULL, '2024-09-03 10:58:00', 1, NULL, NULL, NULL),
(19, 444444444, 'Khóa thẻ 1 tháng', NULL, '2024-05-16 09:44:52', 0, NULL, NULL, NULL),
(20, 1999999981, 'Khóa thẻ 1 tháng và bồi thường', 100, '2024-05-16 09:45:18', 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`MaTV`);

--
-- Indexes for table `thietbi`
--
ALTER TABLE `thietbi`
  ADD PRIMARY KEY (`MaTB`);

--
-- Indexes for table `thongtinsd`
--
ALTER TABLE `thongtinsd`
  ADD PRIMARY KEY (`MaTT`),
  ADD KEY `MaTV` (`MaTV`,`MaTB`),
  ADD KEY `MaTB` (`MaTB`);

--
-- Indexes for table `xuly`
--
ALTER TABLE `xuly`
  ADD PRIMARY KEY (`MaXL`),
  ADD KEY `MaTV` (`MaTV`),
  ADD KEY `MaTV_2` (`MaTV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `thongtinsd`
--
ALTER TABLE `thongtinsd`
  MODIFY `MaTT` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `thongtinsd`
--
ALTER TABLE `thongtinsd`
  ADD CONSTRAINT `thongtinsd_ibfk_1` FOREIGN KEY (`MaTV`) REFERENCES `thanhvien` (`MaTV`),
  ADD CONSTRAINT `thongtinsd_ibfk_2` FOREIGN KEY (`MaTB`) REFERENCES `thietbi` (`MaTB`);

--
-- Constraints for table `xuly`
--
ALTER TABLE `xuly`
  ADD CONSTRAINT `xuly_ibfk_1` FOREIGN KEY (`MaTV`) REFERENCES `thanhvien` (`MaTV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
