-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 11:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `expiration` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id_code`, `user_id`, `code`, `created_at`, `expiration`) VALUES
(1, 1, '507498', '2021-04-26 16:33:04', '2021-04-26 16:38:04'),
(2, 1, '272658', '2021-04-26 16:33:12', '2021-04-26 16:38:12'),
(3, 2, '724024', '2021-04-28 11:42:19', '2021-04-28 11:47:19'),
(4, 2, '069987', '2021-04-28 11:43:18', '2021-04-28 11:48:18'),
(5, 2, '548783', '2021-04-28 11:43:27', '2021-04-28 11:48:27'),
(6, 2, '980823', '2021-04-28 11:45:27', '2021-04-28 11:50:27'),
(7, 2, '176282', '2021-04-28 11:49:42', '2021-04-28 11:54:42'),
(8, 2, '696778', '2021-04-28 11:49:49', '2021-04-28 11:54:49'),
(9, 2, '901284', '2021-04-28 11:55:04', '2021-04-28 12:00:04'),
(10, 2, '573514', '2021-04-28 11:55:30', '2021-04-28 12:00:30'),
(11, 2, '702728', '2021-04-28 11:56:57', '2021-04-28 12:01:57'),
(12, 2, '568499', '2021-04-28 12:17:51', '2021-04-28 12:22:51'),
(13, 2, '801949', '2021-04-28 12:18:01', '2021-04-28 12:23:01'),
(14, 3, '672895', '2021-04-28 20:27:56', '2021-04-28 20:32:56'),
(15, 3, '680258', '2021-04-28 20:28:09', '2021-04-28 20:33:09'),
(16, 3, '276740', '2021-04-28 20:30:00', '2021-04-28 20:35:00'),
(17, 3, '071023', '2021-04-28 20:31:06', '2021-04-28 20:36:06'),
(18, 4, '709924', '2021-04-28 20:45:10', '2021-04-28 20:50:10'),
(19, 4, '562303', '2021-04-28 20:45:22', '2021-04-28 20:50:22'),
(20, 5, '748408', '2021-04-28 20:51:03', '2021-04-28 20:56:03'),
(21, 5, '387655', '2021-04-28 20:51:20', '2021-04-28 20:56:20'),
(22, 5, '115152', '2021-04-28 20:52:32', '2021-04-28 20:57:32'),
(23, 5, '926893', '2021-04-28 20:52:40', '2021-04-28 20:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `logid` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `dateandtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`logid`, `user_id`, `username`, `activity`, `dateandtime`) VALUES
(1, 1, 'nanayko', 'Logged In', '2021-04-26 16:33:04'),
(2, 1, 'nanayko', 'Entered Successsful Code', '2021-04-26 16:33:12'),
(3, 1, 'nanayko', 'Logged Out', '2021-04-26 16:33:19'),
(4, 1, 'nanayko', 'Changed Password', '2021-04-26 16:34:08'),
(5, 2, 'pakganern', 'Logged In', '2021-04-28 11:42:19'),
(6, 2, 'pakganern', 'Entered Successsful Code', '2021-04-28 11:43:28'),
(7, 2, 'pakganern', 'Logged In', '2021-04-28 11:45:27'),
(8, 2, 'pakganern', 'Logged In', '2021-04-28 11:55:30'),
(9, 2, 'pakganern', 'Entered Successsful Code', '2021-04-28 11:56:57'),
(10, 2, 'pakganern', 'Logged Out', '2021-04-28 11:57:11'),
(11, 2, 'pakganern', 'Logged In', '2021-04-28 12:17:51'),
(12, 2, 'pakganern', 'Entered Successsful Code', '2021-04-28 12:18:01'),
(13, 2, 'pakganern', 'Logged Out', '2021-04-28 12:18:04'),
(14, 3, 'tonton', 'Logged In', '2021-04-28 20:27:56'),
(15, 3, 'tonton', 'Entered Successsful Code', '2021-04-28 20:28:09'),
(16, 3, 'tonton', 'Logged Out', '2021-04-28 20:28:13'),
(17, 3, 'tonton', 'Changed Password', '2021-04-28 20:28:37'),
(18, 3, 'tonton', 'Logged In', '2021-04-28 20:30:00'),
(19, 3, 'tonton', 'Entered Successsful Code', '2021-04-28 20:31:07'),
(20, 3, 'tonton', 'Logged Out', '2021-04-28 20:31:10'),
(21, 4, 'piwpiw', 'Logged In', '2021-04-28 20:45:10'),
(22, 4, 'piwpiw', 'Entered Successsful Code', '2021-04-28 20:45:23'),
(23, 4, 'piwpiw', 'Logged Out', '2021-04-28 20:45:34'),
(24, 4, 'piwpiw', 'Changed Password', '2021-04-28 20:46:07'),
(25, 5, 'liam', 'Logged In', '2021-04-28 20:51:02'),
(26, 5, 'liam', 'Entered Successsful Code', '2021-04-28 20:51:20'),
(27, 5, 'liam', 'Logged Out', '2021-04-28 20:51:44'),
(28, 5, 'liam', 'Changed Password', '2021-04-28 20:52:14'),
(29, 5, 'liam', 'Logged In', '2021-04-28 20:52:32'),
(30, 5, 'liam', 'Entered Successsful Code', '2021-04-28 20:52:41'),
(31, 5, 'liam', 'Logged Out', '2021-04-28 21:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'qwerty', 'anamiezarcon.donato@yahoo.com', 'nanayko', 'Qazwsxedc1!', '2021-04-26 16:32:34'),
(2, 'Pakpak', 'pakpak@gmail.com', 'pakganern', 'Zxcvbnm,1', '2021-04-28 11:42:04'),
(3, 'tony', 'adonato@yahoo.com', 'tonton', 'Asdfghjkl;1', '2021-04-28 20:27:42'),
(4, 'Pierce', 'peeweedonato@yahoo.com', 'piwpiw', 'Asdfghjkl;1', '2021-04-28 20:44:48'),
(5, 'William', 'peeweedonato@yahoo.com', 'liam', 'Asdfghjkl;1', '2021-04-28 20:50:22'),
(6, 'qwerty', 'peeweedonato@yahoo.com', 'pakganern', 'Zxcvbnm,1', '2021-04-28 21:02:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `test` (`user_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `test1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `logid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `code`
--
ALTER TABLE `code`
  ADD CONSTRAINT `test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `test1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
