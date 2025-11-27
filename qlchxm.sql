-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2025 at 08:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

CREATE Database qlchxm;
USE qlchxm;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlchxm`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MADH` int(11) NOT NULL,
  `MAXE` varchar(10) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DONGIA` int(11) DEFAULT NULL,
  `THANHTIEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MADH`, `MAXE`, `SOLUONG`, `DONGIA`, `THANHTIEN`) VALUES
(8, 'XM002', 1, 21000000, 21000000),
(9, 'XM003', 2, 35000000, 70000000),
(9, 'XM005', 1, 42000000, 42000000);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MAHD` int(11) NOT NULL,
  `MAXE` varchar(10) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DONGIA` int(11) DEFAULT NULL,
  `THANHTIEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MAHD`, `MAXE`, `SOLUONG`, `DONGIA`, `THANHTIEN`) VALUES
(3, 'XM002', 1, 21000000, 21000000),
(4, 'XM002', 1, 21000000, 21000000),
(5, 'XM003', 2, 35000000, 70000000),
(5, 'XM005', 1, 42000000, 42000000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MAPN` bigint(20) NOT NULL,
  `MAXE` varchar(10) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DONGIA` int(11) DEFAULT NULL,
  `THANHTIEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`MAPN`, `MAXE`, `SOLUONG`, `DONGIA`, `THANHTIEN`) VALUES
(1, 'XM001', 2, 15000000, 30000000),
(6, 'XM002', 2, 100000000, 200000000),
(7, 'XM004', 1, 3000, 3000),
(8, 'XM007', 2, 5000, 10000),
(9, 'XM004', 1, 15000000, 15000000),
(10, 'XM003', 10, 25000000, 250000000),
(11, 'XM008', 12, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MADH` int(11) NOT NULL,
  `NGAYLAP` date DEFAULT NULL,
  `MAKH` varchar(10) NOT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `TONGTIEN` int(11) DEFAULT NULL,
  `TRANGTHAI` varchar(50) DEFAULT NULL,
  `PTTHANHTOAN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MADH`, `NGAYLAP`, `MAKH`, `DIACHI`, `TONGTIEN`, `TRANGTHAI`, `PTTHANHTOAN`) VALUES
(8, '2025-05-21', '1', 'Hà Nội', 23100000, 'Đã hoàn thành', 'Tiền mặt khi nhận hàng'),
(9, '2025-05-21', '1', 'Hà Nội', 123200000, 'Đã hoàn thành', 'Tiền mặt khi nhận hàng');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `idXe` varchar(10) NOT NULL,
  `soLuong` int(11) DEFAULT 0,
  `idKhachHang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` int(11) NOT NULL,
  `NGAYLAP` date DEFAULT NULL,
  `MAKH` varchar(10) NOT NULL,
  `MANV` varchar(10) NOT NULL,
  `TONGTIEN` int(11) DEFAULT NULL,
  `MADH` int(11) DEFAULT NULL,
  `PTTHANHTOAN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MAHD`, `NGAYLAP`, `MAKH`, `MANV`, `TONGTIEN`, `MADH`, `PTTHANHTOAN`) VALUES
(3, '2025-05-21', '1', 'NV001', 21000000, 8, 'Tiền mặt khi nhận hàng'),
(4, '2025-05-21', '1', 'NV001', 21000000, 8, 'Tiền mặt khi nhận hàng'),
(5, '2025-05-21', '1', 'NV001', 112000000, 9, 'Tiền mặt khi nhận hàng');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` varchar(10) NOT NULL,
  `HOTEN` varchar(100) NOT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `TENDANGNHAP` varchar(50) DEFAULT NULL,
  `MATKHAU` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `SDT`, `DIACHI`, `TENDANGNHAP`, `MATKHAU`) VALUES
('1', 'Nguyễn Văn A', '0912345678', 'Hà Nội', 'nguyenvana', '1'),
('2', 'Trần Thị B', '0987654321', 'Hồ Chí Minh', 'tranthib', 'abcdef'),
('3', 'Lê Văn C', '0909123456', 'Đà Nẵng', 'levanc', '112233');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MANCC` varchar(10) NOT NULL,
  `TENNCC` varchar(100) NOT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `SODIENTHOAI` varchar(10) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MANCC`, `TENNCC`, `DIACHI`, `SODIENTHOAI`, `isActive`) VALUES
('NCC001', 'Công ty Honda Việt Nam', 'Hà Nội', '0123456789', 1),
('NCC002', 'Công ty Yamaha Motor', 'Đà Nẵng', '9876543210', 1),
('NCC003', 'Công ty SYM Việt Nam', 'Bình Dương', '0969764271', 1),
('NCC02', 'abc company', 'adss', '0987654321', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MANV` varchar(10) NOT NULL,
  `HOTEN` varchar(100) NOT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `GIOITINH` varchar(10) DEFAULT NULL,
  `SODIENTHOAI` varchar(10) DEFAULT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `CHUCVU` varchar(50) DEFAULT NULL,
  `TENDANGNHAP` varchar(50) DEFAULT NULL,
  `MATKHAU` varchar(100) DEFAULT NULL,
  `QUYEN` varchar(20) NOT NULL,
  `isActive` smallint(6) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MANV`, `HOTEN`, `NGAYSINH`, `GIOITINH`, `SODIENTHOAI`, `DIACHI`, `CHUCVU`, `TENDANGNHAP`, `MATKHAU`, `QUYEN`, `isActive`) VALUES
('a', 'a', '2025-05-02', 'Nam', '0123456789', 'a', 'Quản lý', 'a', 'a', 'ADMIN', 1),
('NV001', 'Huỳnh Chí Văn', '2005-05-15', 'Nam', '0911222333', 'Lâm Đồng', 'Quản lý', 'huynhchivan', '123', 'ADMIN', 1),
('NV002', 'Nguyễn Thanh Hiệu', '2005-09-20', 'Nam', '0988111222', 'Hải Phòng', 'Nhân viên bán hàng', 'nguyenthanhieu', '456', 'NHANVIENBANHANG', 1),
('NV003', 'Nguyễn Thanh Văn', '2005-12-01', 'Nam', '0909111222', 'Nam Định', 'Nhân viên kho', 'nguyenthanhvan', '789', 'NHANVIENKHO', 1),
('nv11', 'khang huy', '2005-08-29', 'Nam', '0123456798', 'abc', 'Nhân viên bán hàng', 'huy', 'huy', 'NHANVENBANHANG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MAPN` bigint(20) NOT NULL,
  `NGAYNHAP` date DEFAULT NULL,
  `MANV` varchar(10) NOT NULL,
  `MANCC` varchar(10) NOT NULL,
  `TONGTIEN` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Đang_Chờ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MAPN`, `NGAYNHAP`, `MANV`, `MANCC`, `TONGTIEN`, `status`) VALUES
(1, '2025-05-20', 'NV001', 'NCC001', 30000000, 'Hoàn_Thành'),
(5, '2025-05-21', 'nv11', 'NCC003', 20000, 'Đang_Chờ'),
(6, '2025-05-21', 'nv11', 'NCC003', 200000000, 'Đang_Chờ'),
(7, '2025-05-21', 'a', 'NCC02', 3000, 'Đang_Chờ'),
(8, '2025-05-21', 'NV001', 'NCC002', 10000, 'Đang_Chờ'),
(9, '2025-05-21', 'NV001', 'NCC02', 15000000, 'Hoàn_Thành'),
(10, '2025-05-21', 'Nv001', 'NCC001', 250000000, 'Hoàn_Thành'),
(11, '2025-05-21', 'a', 'NCC003', 12, 'Hoàn_Thành');

-- --------------------------------------------------------

--
-- Table structure for table `xemay`
--

CREATE TABLE `xemay` (
  `MAXE` varchar(10) NOT NULL,
  `TENXE` varchar(100) NOT NULL,
  `HANGXE` varchar(50) DEFAULT NULL,
  `GIABAN` int(11) DEFAULT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `ANH` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `xemay`
--

INSERT INTO `xemay` (`MAXE`, `TENXE`, `HANGXE`, `GIABAN`, `SOLUONG`, `ANH`) VALUES
('XM001', 'Wave Alpha 110cc', 'Honda', 18000000, 26, 'images/xemay1.png'),
('XM002', 'Sirius Fi', 'Yamaha', 21000000, 5, 'xemay2.png'),
('XM003', 'Vision 2023', 'Honda', 35000000, 37, 'xemay3.png'),
('XM004', 'ss', 'Honda', 18000000, 3, 'xemay4.png'),
('XM005', 'Air Blade 125', 'Honda', 42000000, 17, 'xemay5.png'),
('XM006', 'Exciter 155 VVA', 'Yamaha', 47000000, 7, 'xemay6.png'),
('XM007', 'SH Mode 125cc', 'Honda', 60000000, 6, 'xemay7.png'),
('XM008', 'Grande Hybrid', 'Yamaha', 45000000, 12, 'xemay8.png'),
('XM009', 'Janus 2023', 'Yamaha', 31000000, 10, 'xemay9.png'),
('XM010', 'Lead 125', 'Honda', 42000000, 6, 'xemay10.png'),
('XM011', 'Piaggio Liberty 125', 'Piaggio', 56000000, 3, 'xemay11.png'),
('XM012', 'Vespa Primavera', 'Vespa', 80000000, 2, 'xemay12.png'),
('XM013', 'SYM Galaxy 110', 'SYM', 19000000, 5, 'xemay13.png'),
('XM014', 'Kymco Like 125', 'Kymco', 40000000, 4, 'xemay14.png'),
('XM015', 'VinFast Feliz S', 'Vespa', 29000000, 6, 'xemay15.png'),
('XM016', 'Yadea G5', 'SYM', 20000000, 7, 'xemay16.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MADH`,`MAXE`),
  ADD KEY `MAXE` (`MAXE`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MAHD`,`MAXE`),
  ADD KEY `MAXE` (`MAXE`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`MAPN`,`MAXE`),
  ADD KEY `MAXE` (`MAXE`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MADH`),
  ADD KEY `MAKH` (`MAKH`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idXe`,`idKhachHang`),
  ADD KEY `idKhachHang` (`idKhachHang`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`),
  ADD KEY `MAKH` (`MAKH`),
  ADD KEY `MANV` (`MANV`),
  ADD KEY `MADH` (`MADH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`),
  ADD UNIQUE KEY `UQ_khachhang_TENDANGNHAP` (`TENDANGNHAP`),
  ADD UNIQUE KEY `UQ_khachhang_SDT` (`SDT`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MANCC`),
  ADD UNIQUE KEY `UQ_nhacungcap_SODIENTHOAI` (`SODIENTHOAI`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MANV`),
  ADD UNIQUE KEY `UQ_nhanvien_TENDANGNHAP` (`TENDANGNHAP`),
  ADD UNIQUE KEY `UQ_nhanvien_SODIENTHOAI` (`SODIENTHOAI`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MAPN`),
  ADD KEY `MANV` (`MANV`),
  ADD KEY `MANCC` (`MANCC`);

--
-- Indexes for table `xemay`
--
ALTER TABLE `xemay`
  ADD PRIMARY KEY (`MAXE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MADH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MAHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MAPN` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MADH`) REFERENCES `donhang` (`MADH`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MAXE`) REFERENCES `xemay` (`MAXE`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MAHD`) REFERENCES `hoadon` (`MAHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MAXE`) REFERENCES `xemay` (`MAXE`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`MAPN`) REFERENCES `phieunhap` (`MAPN`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`MAXE`) REFERENCES `xemay` (`MAXE`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`idXe`) REFERENCES `xemay` (`MAXE`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`idKhachHang`) REFERENCES `khachhang` (`MAKH`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`MADH`) REFERENCES `donhang` (`MADH`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
