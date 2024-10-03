-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2024 lúc 02:51 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `examjv2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `national`
--

CREATE TABLE `national` (
  `NationalId` int(11) NOT NULL,
  `NationalName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `national`
--

INSERT INTO `national` (`NationalId`, `NationalName`) VALUES
(1, 'Vietnam'),
(2, 'USA'),
(3, 'Japan'),
(4, 'Vietnam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `player`
--

CREATE TABLE `player` (
  `PlayerId` int(11) NOT NULL,
  `PlayerName` varchar(100) NOT NULL,
  `HighScore` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  `NationalId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `player`
--

INSERT INTO `player` (`PlayerId`, `PlayerName`, `HighScore`, `Level`, `NationalId`) VALUES
(6, 'Ronaldo', 10, 3, 1),
(7, 'Neymar Jr', 50, 5, 2),
(8, 'Lionel Messi', 30, 4, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `national`
--
ALTER TABLE `national`
  ADD PRIMARY KEY (`NationalId`);

--
-- Chỉ mục cho bảng `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerId`),
  ADD KEY `NationalId` (`NationalId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `national`
--
ALTER TABLE `national`
  MODIFY `NationalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `player`
--
ALTER TABLE `player`
  MODIFY `PlayerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`NationalId`) REFERENCES `national` (`NationalId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
