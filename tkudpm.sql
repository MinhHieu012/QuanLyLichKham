-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2024 lúc 03:56 AM
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
-- Cơ sở dữ liệu: `tkudpm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `levels` tinyint(1) NOT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `username`, `password`, `levels`, `specialty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hiếu', 'Admin', '$2y$10$r5t2Escp3S9umpYDbMJMEe9idxDJYgCOxiB23gPqjTr9CK.pAMAOG', 1, NULL, 0, '2023-01-13 07:08:28', '2023-01-13 07:08:28'),
(4, 'Lê Minh A', 'Lê Minh A', '$2y$10$G4I3Rj62AWogpG5OuDs0NuSq3i5LxA8eePYrDADzw6FSCrkrALFTS', 2, 'Lâm sàng', 0, '2023-01-12 01:12:09', '2023-01-13 08:52:17'),
(5, 'Lê Minh B', 'Lê Minh B', '$2y$10$D9PTS7YmY87Y.PgBnS8wLuo/CRUxR.peYFH/ytTZQkzS/l4.vkcE2', 2, 'Lâm sàng', 0, '2023-01-12 01:30:15', '2023-01-13 08:52:17'),
(6, 'Lê Minh C', 'Lê Minh C', '$2y$10$nPZjRza0WM/I/VdXvvyaMeCxEKaQmB47Ic5Knvtuxn2Nmvpd9fdOK', 2, 'Lâm sàng', 0, '2023-01-12 01:33:06', '2023-01-13 08:56:27'),
(7, 'Lê Minh D', 'Lê Minh D', '$2y$10$qHFgtj.lw0pRT0I971O.TOXb/FlSXmJOamw/sgdIslitUE1lkl6X6', 2, 'Lâm sàng', 0, '2023-01-12 01:33:19', '2023-01-13 08:56:36'),
(8, 'Lê Minh E', 'Lê Minh E', '$2y$10$gywUWBCpEp5BkKOnBO/CgOh5E1XgyGHBulRWhs.xgdzIFRh6wZsrq', 2, 'Lâm sàng', 0, '2023-01-12 01:33:31', '2023-01-13 09:01:41'),
(9, 'Lê Minh F', 'Lê Minh F', '$2y$10$NmTmTNi4s0bakfY1ytXavOw0JZF70kdnm7lHfb0fJWERD2RlAqxZm', 2, 'Lâm sàng', 0, '2023-01-12 01:33:41', '2023-01-13 09:01:41'),
(10, 'Lê Minh G', 'Lê Minh G', '$2y$10$xP9FYwW05jS8pgtWWL0iFOMaMNbgzaEoSIHAqvLGF/JddZ7PKSHP2', 2, 'Xét nghiệm', 0, '2023-01-12 01:33:57', '2023-01-13 09:02:14'),
(11, 'Lê Minh H', 'Lê Minh H', '$2y$10$hygoY5OzuQw1exITdkCW5OZhBqMETHcTdcEIIPWzyyICbUUR9pem2', 2, 'Xét nghiệm', 0, '2023-01-12 01:34:06', '2023-01-13 09:02:14'),
(12, 'Lê Minh J', 'Lê Minh J', '$2y$10$Ij0uOnil5Qgl.8WJUIKNJ.2e275CSwW2oCGteybIjaKFyrTGbWmza', 2, 'Xét nghiệm', 0, '2023-01-12 01:34:14', '2023-01-13 09:02:14'),
(13, 'Lê Minh K', 'Lê Minh K', '$2y$10$oQO6iBPWG8dINt.pVekqWOGMWNQjOKbiLW3JcBeyUT4C0HH7/6FHK', 2, 'Xét nghiệm', 0, '2023-01-12 01:34:22', '2023-01-13 09:02:14'),
(14, 'Lê Minh Z', 'Lê Minh Z', '$2y$10$jL0stNjrNYZsTbbWdDwkN.K04hMAOrBPW7e4CUFuTKYkyGewSTK9S', 2, 'Xét nghiệm', 0, '2023-01-12 01:35:00', '2023-01-13 09:02:14'),
(15, 'Lê Minh M', 'Lê Minh M', '$2y$10$IKkTIwLgjdgAr4GRFuMJiOxAUESFPpCp/RrdpGsfshJqnhEL2low6', 2, 'Xét nghiệm', 0, '2023-01-12 01:35:10', '2023-01-13 09:02:14'),
(17, 'Lê Minh Hiếu', '0967710509', '$2y$10$03g910OjL7y9CYe.73TCQ.fX0.5.cGofNh3x9OCtjMPfxvQt0Te4S', 3, NULL, 0, '2024-06-15 10:17:53', '2024-06-15 10:17:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_details`
--

CREATE TABLE `accounts_details` (
  `id` int(11) NOT NULL,
  `accounts_id` int(11) NOT NULL,
  `phones` varchar(13) DEFAULT NULL,
  `date_of_births` date DEFAULT NULL,
  `genders` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts_details`
--

INSERT INTO `accounts_details` (`id`, `accounts_id`, `phones`, `date_of_births`, `genders`, `address`, `created_at`, `updated_at`) VALUES
(1, 4, '0967710509', '2002-11-09', 'Nam', 'Hồ Chí Minh', '2023-01-13 07:16:58', '2023-01-13 08:54:21'),
(2, 5, '0967710509', '2000-11-09', 'Nữ', 'Hồ Chí Minh', '2023-01-13 07:17:43', '2023-01-13 07:17:43'),
(3, 6, '96771059', '2000-10-09', 'Nam', 'Hà Nội', '2023-01-13 07:18:12', '2023-01-13 07:18:12'),
(4, 7, '0967710509', '2005-11-09', 'Nam', 'Hồ Chí Minh', '2023-01-13 07:18:33', '2023-01-13 07:18:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointment_schedules`
--

CREATE TABLE `appointment_schedules` (
  `id` int(11) NOT NULL,
  `accounts_id` int(11) NOT NULL,
  `names` varchar(45) DEFAULT NULL,
  `phones` varchar(13) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `appointment_times_id` int(11) NOT NULL,
  `health_checkup_packages_id` int(11) NOT NULL,
  `doctor_examines` varchar(100) DEFAULT NULL,
  `rooms_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `appointment_status_id` int(11) NOT NULL,
  `payment_status_id` int(11) NOT NULL,
  `cancelled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `appointment_schedules`
--

INSERT INTO `appointment_schedules` (`id`, `accounts_id`, `names`, `phones`, `dates`, `appointment_times_id`, `health_checkup_packages_id`, `doctor_examines`, `rooms_id`, `status`, `appointment_status_id`, `payment_status_id`, `cancelled`, `created_at`, `updated_at`) VALUES
(1, 17, 'Lê Minh Hiếu', '0967710509', '2024-06-20', 1, 1, 'Lê Minh A', 11, 1, 1, 1, 0, '2024-06-15 10:18:42', '2024-06-15 10:19:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointment_status`
--

CREATE TABLE `appointment_status` (
  `id` int(11) NOT NULL,
  `not_examined` tinyint(1) DEFAULT NULL,
  `being_examined` tinyint(1) DEFAULT NULL,
  `done` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `appointment_status`
--

INSERT INTO `appointment_status` (`id`, `not_examined`, `being_examined`, `done`) VALUES
(1, 1, NULL, NULL),
(2, NULL, 1, NULL),
(3, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `appointment_times`
--

CREATE TABLE `appointment_times` (
  `id` int(11) NOT NULL,
  `types` varchar(20) DEFAULT NULL,
  `times` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `appointment_times`
--

INSERT INTO `appointment_times` (`id`, `types`, `times`, `created_at`, `updated_at`) VALUES
(1, 'Sáng', 'Sáng 08:00 giờ đến 09:00 giờ', '2023-01-11 17:48:32', '2023-01-11 17:53:50'),
(2, 'Sáng', 'Sáng 09:00 giờ đến 10:00 giờ', '2023-01-11 17:48:41', '2023-01-11 17:48:41'),
(3, 'Sáng', 'Sáng 10:00 giờ đến 11:00 giờ', '2023-01-11 17:50:02', '2023-01-11 17:50:02'),
(4, 'Sáng', 'Sáng 11:00 giờ đến 12:00 giờ', '2023-01-11 17:50:32', '2023-01-11 17:50:32'),
(5, 'Chiều', 'Chiều 01:30 đến 02:30', '2023-01-11 17:52:40', '2023-01-11 17:52:40'),
(6, 'Chiều', 'Chiều 02:30 đến 03:30', '2023-01-11 17:52:55', '2023-01-11 17:52:55'),
(7, 'Chiều', 'Chiều 03:30 đến 04:30', '2023-01-11 17:53:09', '2023-01-11 17:53:09'),
(8, 'Chiều', 'Chiều 04:30 đến 05:30', '2023-01-11 17:53:22', '2023-01-11 17:53:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `health_checkup_packages`
--

CREATE TABLE `health_checkup_packages` (
  `id` int(11) NOT NULL,
  `types` varchar(100) DEFAULT NULL,
  `names` varchar(150) DEFAULT NULL,
  `prices` varchar(50) DEFAULT NULL,
  `descriptions` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `health_checkup_packages`
--

INSERT INTO `health_checkup_packages` (`id`, `types`, `names`, `prices`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Khám lâm sàng', 'Đo Mạch, Huyết Áp, Chỉ số BMI', '50.000đ', 'Kiểm tra mạch, huyết áp, chiều cao, cân nặng, tính chỉ số BMI nhằm phát hiện tăng huyết áp, rối loạn nhịp tim, thừa cân, béo phì', '2023-01-11 17:55:44', '2023-01-11 17:55:44'),
(2, 'Khám lâm sàng', 'Khám Tổng Quát', '350.000đ', 'Khám nội tổng quát, tư vấn, trao đổi bệnh sử và đánh giá yếu tố nguy cơ về sức khỏe', '2023-01-11 17:56:26', '2023-01-11 17:56:26'),
(3, 'Khám lâm sàng', 'Khám Mắt, Đo thị lực', '300.000đ', 'Khám mắt kiểm tra, tư vấn và đưa ra các vấn đề về mắt và thị lực', '2023-01-11 17:57:07', '2023-01-11 17:57:07'),
(4, 'Khám lâm sàng', 'Khám Tai Mũi Họng', '150.000đ', 'Khám tai, mũi, họng và kiểm tra, tư vấn và đưa ra các vấn đề về tai, mũi, họng', '2023-01-11 17:57:39', '2023-01-11 17:57:39'),
(5, 'Khám lâm sàng', 'Khám Răng', '350.000đ', 'Khám răng kiểm tra, tư vấn và đưa ra các vấn đề về răng', '2023-01-11 17:58:06', '2023-01-11 17:58:06'),
(6, 'Xét nghiệm', 'Xét nghiệm máu toàn phần (CBC)', '300.000đ', 'Xét nghiệm này giúp xác định các bệnh lý ác tính về máu: bệnh bạch cầu cấp, đa u tủy xương, rối loạn sinh tủy,…', '2023-01-11 17:59:13', '2023-01-11 17:59:27'),
(7, 'Xét nghiệm', 'Xét nghiệm sinh hóa máu (SB)', '200.000đ', 'Xét nghiệm sinh hóa máu là loại xét nghiệm nhằm đo nồng độ hay hoạt độ của một số chất trong máu, qua đó giúp đánh giá chức năng của các cơ quan trong cơ thể', '2023-01-11 18:00:04', '2023-01-11 18:00:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `unpaid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_status`
--

INSERT INTO `payment_status` (`id`, `paid`, `unpaid`) VALUES
(1, NULL, 1),
(2, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `types` varchar(50) DEFAULT NULL,
  `rooms` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `types`, `rooms`, `created_at`, `updated_at`) VALUES
(1, 'Phòng khám lâm sàng', 'Phòng LS01', '2023-01-11 18:05:11', '2023-01-11 18:05:11'),
(2, 'Phòng khám lâm sàng', 'Phòng LS02', '2023-01-11 18:06:11', '2023-01-11 18:06:11'),
(3, 'Phòng khám lâm sàng', 'Phòng LS03', '2023-01-11 18:06:17', '2023-01-11 18:06:17'),
(4, 'Phòng khám lâm sàng', 'Phòng LS04', '2023-01-11 18:06:25', '2023-01-11 18:06:25'),
(5, 'Phòng khám lâm sàng', 'Phòng LS05', '2023-01-11 18:06:34', '2023-01-11 18:06:34'),
(6, 'Phòng khám lâm sàng', 'Phòng LS06', '2023-01-11 18:06:40', '2023-01-11 18:06:40'),
(7, 'Phòng khám lâm sàng', 'Phòng LS07', '2023-01-11 18:06:47', '2023-01-11 18:06:47'),
(8, 'Phòng khám lâm sàng', 'Phòng LS08', '2023-01-11 18:06:55', '2023-01-11 18:06:55'),
(9, 'Phòng khám lâm sàng', 'Phòng LS09', '2023-01-11 18:07:03', '2023-01-11 18:07:03'),
(10, 'Phòng khám lâm sàng', 'Phòng LS10', '2023-01-11 18:07:12', '2023-01-11 18:07:12'),
(11, 'Phòng khám xét nghiệm', 'Phòng XN01', '2023-01-11 18:07:39', '2023-01-11 18:07:39'),
(12, 'Phòng khám xét nghiệm', 'Phòng XN02', '2023-01-11 18:07:48', '2023-01-11 18:07:48'),
(13, 'Phòng khám xét nghiệm', 'Phòng XN03', '2023-01-11 18:07:55', '2023-01-11 18:07:55'),
(14, 'Phòng khám xét nghiệm', 'Phòng XN04', '2023-01-11 18:08:04', '2023-01-11 18:08:04'),
(15, 'Phòng khám xét nghiệm', 'Phòng XN05', '2023-01-11 18:08:23', '2023-01-11 18:08:23'),
(16, 'Phòng khám xét nghiệm', 'Phòng XN06', '2023-01-11 18:08:34', '2023-01-11 18:08:34'),
(17, 'Chưa có', 'Chưa có', '2023-01-13 07:25:10', '2023-01-13 07:45:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `accounts_details`
--
ALTER TABLE `accounts_details`
  ADD PRIMARY KEY (`id`,`accounts_id`),
  ADD KEY `fk_accounts_details_accounts1_idx` (`accounts_id`);

--
-- Chỉ mục cho bảng `appointment_schedules`
--
ALTER TABLE `appointment_schedules`
  ADD PRIMARY KEY (`id`,`accounts_id`,`appointment_times_id`,`health_checkup_packages_id`,`rooms_id`,`appointment_status_id`,`payment_status_id`),
  ADD KEY `fk_appointment_schedules_accounts_idx` (`accounts_id`),
  ADD KEY `fk_appointment_schedules_appointment_status1_idx` (`appointment_status_id`),
  ADD KEY `fk_appointment_schedules_payment_status1_idx` (`payment_status_id`),
  ADD KEY `fk_appointment_schedules_appointment_times1_idx` (`appointment_times_id`),
  ADD KEY `fk_appointment_schedules_health_checkup_packages1_idx` (`health_checkup_packages_id`),
  ADD KEY `fk_appointment_schedules_rooms1_idx` (`rooms_id`);

--
-- Chỉ mục cho bảng `appointment_status`
--
ALTER TABLE `appointment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `appointment_times`
--
ALTER TABLE `appointment_times`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `health_checkup_packages`
--
ALTER TABLE `health_checkup_packages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `accounts_details`
--
ALTER TABLE `accounts_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `appointment_schedules`
--
ALTER TABLE `appointment_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `appointment_status`
--
ALTER TABLE `appointment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `appointment_times`
--
ALTER TABLE `appointment_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `health_checkup_packages`
--
ALTER TABLE `health_checkup_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts_details`
--
ALTER TABLE `accounts_details`
  ADD CONSTRAINT `fk_accounts_details_accounts1` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `appointment_schedules`
--
ALTER TABLE `appointment_schedules`
  ADD CONSTRAINT `fk_appointment_schedules_accounts` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `fk_appointment_schedules_appointment_status1` FOREIGN KEY (`appointment_status_id`) REFERENCES `appointment_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_appointment_schedules_appointment_times1` FOREIGN KEY (`appointment_times_id`) REFERENCES `appointment_times` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_appointment_schedules_health_checkup_packages1` FOREIGN KEY (`health_checkup_packages_id`) REFERENCES `health_checkup_packages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_appointment_schedules_payment_status1` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_appointment_schedules_rooms1` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
