-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 06:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `id` int(11) NOT NULL,
  `scholid` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `cpnumber` varchar(20) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  `dateborrower` date DEFAULT NULL,
  `returndate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`id`, `scholid`, `firstname`, `lastname`, `cpnumber`, `item_id`, `itemname`, `dateborrower`, `returndate`) VALUES
(4, '23232', 'Vince', 'Bastistin', '212121', NULL, 'sdd', '2023-07-01', '2023-07-01'),
(5, '1232342', 'Christian', 'Bastistin', '232323', NULL, 'sdd', '2023-07-12', '2023-07-01'),
(6, '232', 'Christian', 'Candole', '21212', NULL, 'dfs', '2023-07-21', NULL),
(7, '12123', 'Vince', 'Candole', '21323234', NULL, 'mouse', '2023-07-01', '2023-07-01'),
(8, '232', 'Vince', 'Candole', 'wewe', NULL, 'mouse', '2023-07-11', '2023-07-01'),
(9, '12-1111-11', 'test', 'test', '0912345679', NULL, 'keyboard', '2023-07-02', '2023-07-02'),
(10, '12-1111-11', 'test', 'test', '0912345679', NULL, 'monitor', '2023-07-01', '2023-07-02'),
(11, '', '', '', '', NULL, 'dfs', '0000-00-00', '2023-07-02'),
(12, '11-1111-12', 'test', 'Candole', '0912345679', NULL, 'mouse', '2023-07-07', '2023-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `dtr`
--

CREATE TABLE `dtr` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `uniqID` varchar(50) DEFAULT NULL,
  `timeIn` datetime DEFAULT NULL,
  `timeOut` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dtr`
--

INSERT INTO `dtr` (`id`, `firstname`, `lastname`, `uniqID`, `timeIn`, `timeOut`) VALUES
(1, 'Vince', 'Candole', '12345', '2023-06-21 17:36:05', '2023-06-21 17:36:20'),
(2, 'Christian', 'Bastistin', '23456', '2023-06-21 17:39:17', '2023-06-21 17:39:42'),
(8, 'Christian', 'Bastistin', '23456', '2023-06-21 18:03:28', '2023-06-21 18:03:40'),
(9, 'Christian', 'Bastistin', '23456', '2023-06-21 18:04:11', '2023-06-21 18:05:02'),
(10, 'Christian', 'Bastistin', '23456', '2023-06-21 18:06:40', '2023-06-21 18:06:44'),
(11, 'Christian', 'Bastistin', '23456', '2023-06-21 18:31:34', '2023-06-21 18:31:38'),
(12, 'Christian', 'Bastistin', '23456', '2023-06-21 18:44:42', '2023-06-21 18:45:04'),
(13, 'Christian', 'Bastistin', '23456', '2023-06-21 18:48:40', '2023-06-21 18:58:58'),
(14, 'Christian', 'Bastistin', '23456', '2023-06-21 18:58:57', '2023-06-21 18:58:58'),
(15, 'Christian', 'Bastistin', '23456', '2023-06-21 18:59:00', '2023-06-21 18:59:00'),
(16, 'Christian', 'Bastistin', '23456', '2023-06-21 19:10:03', '2023-06-21 19:10:04'),
(18, 'Nonoy', 'Carl', '34567', '2023-06-26 23:37:37', '2023-06-26 23:38:05'),
(19, 'Nonoy', 'Carl', '34567', '2023-07-02 17:23:53', '2023-07-02 17:24:05'),
(20, 'Christian', 'Bastistin', '23456', '2023-07-07 15:20:24', '2023-07-07 15:24:25'),
(21, 'Christian', 'Bastistin', '23456', '2023-07-07 15:20:45', '2023-07-07 15:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `avatar` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `itemname`, `model`, `brand`, `category`, `quantity`, `description`, `avatar`) VALUES
(1, 'dfs', 'sdas', 'asdasd', 'sdsa', 12, 'sdsd', NULL),
(2, 'sdd', 'sds', 'sdas', 'sda', 12, 'sdsd', NULL),
(3, 'UPS', 'volt', 'volt', 'ups', 12, '1000volts', NULL),
(4, 'keyboard', '4tech', '4tech', 'keyboard', 12, 'dsdsd', NULL),
(5, 'mouse', '4tech', '4tech', 'mouse', 12, '4tech', NULL),
(6, 'monitor', 'asus', 'asus', 'led', 10, '144hz', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(2, 'Sample Project 102', 'Sample Only', 0, '2020-12-02', '2020-12-31', 2, '3', '2020-12-03 13:51:54'),
(5, 'task', 'task', 0, '2023-06-18', '2023-06-19', 8, '7', '2023-06-18 20:51:31'),
(6, 'THESIS PROJECT', '						DO A FRONT END&amp;nbsp;					', 0, '2023-06-26', '2023-06-27', 8, '7', '2023-06-26 14:43:16'),
(7, 'Front End 2', 'finsh', 0, '2023-06-26', '2023-06-26', 8, '7', '2023-06-26 23:32:02'),
(8, 'PROJECT 1', '												MAKE THIS PROJECT										', 0, '2023-07-02', '2023-07-07', 8, '7,11', '2023-07-02 17:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Sample Task 1', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Fusce ullamcorper mattis semper. Nunc vel risus ipsum. Sed maximus dapibus nisl non laoreet. Pellentesque quis mauris odio. Donec fermentum facilisis odio, sit amet aliquet purus scelerisque eget.&amp;nbsp;&lt;/span&gt;													', 3, '2020-12-03 11:08:58'),
(2, 1, 'Sample Task 2', 'Sample Task 2							', 1, '2020-12-03 13:50:15'),
(3, 2, 'Task Test', '				Sample			', 3, '2020-12-03 13:52:25'),
(4, 2, 'test 23', 'Sample test 23', 1, '2020-12-03 13:52:40'),
(5, 4, 'asap to finsih', '				status', 3, '2023-06-18 20:47:34'),
(6, 4, 'asap to finsih', '														', 3, '2023-06-18 20:48:40'),
(7, 5, 'finish today', '				asap			', 3, '2023-06-18 20:52:12'),
(8, 6, 'FRONT END', '																					', 3, '2023-06-26 14:44:45'),
(9, 6, 'BACK END', '', 1, '2023-06-26 14:44:54'),
(10, 6, 'FINAL OUTPUT', '							', 1, '2023-06-26 14:45:03'),
(11, 7, 'front end', '												qasdad									', 3, '2023-06-26 23:32:57'),
(12, 7, 'back end', '							', 1, '2023-06-26 23:33:02'),
(13, 7, '1111', '							', 1, '2023-06-26 23:35:37'),
(14, 7, '1111', '							', 1, '2023-06-26 23:35:41'),
(15, 8, 'Task 1', 'christian is already finished this task', 3, '2023-07-02 17:22:59'),
(16, 8, 'Task 2', 'vince is doing this task', 2, '2023-07-02 17:23:10'),
(17, 8, 'task 3', '							', 1, '2023-07-02 17:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `uniqID` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`, `uniqID`) VALUES
(6, 'Vince', 'Candole', 'vincecandole@gmail.com', '0192023a7bbd73250516f069df18b500', 1, '1687091940_pp1.jpg', '2023-06-18 20:39:21', 12345),
(7, 'Christian', 'Bastistin', 'christianbastistin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3, '1687092120_dp.jpg', '2023-06-18 20:42:44', 23456),
(8, 'Nonoy', 'Carl', 'nonoycarl@gmail.com', '202cb962ac59075b964b07152d234b70', 2, '1687794360_210104133055-beginner-gaming-pc.jpg', '2023-06-18 20:51:09', 34567),
(10, 'sdsa', 'dsds', 'jong1@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 'no-image-available.png', '2023-06-21 16:29:45', 2610),
(11, 'Vince', 'Carl', 'jong2@gmail.com', '202cb962ac59075b964b07152d234b70', 3, 'no-image-available.png', '2023-06-21 16:31:30', 46947),
(13, 'manager', 'test', 'tm@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 2, 'no-image-available.png', '2023-07-02 17:26:42', 15237),
(14, 'test', 'manager', 'tm1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 1, 'no-image-available.png', '2023-07-02 17:36:19', 85744),
(15, 'test', 'member', 'tmem@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 3, 'no-image-available.png', '2023-07-02 17:36:44', 74246);

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(5, 4, 0, 'finish', 'finish', '2023-06-19', '20:44:00', '21:44:00', 7, 1, '2023-06-18 20:44:59'),
(6, 4, 0, 'finish', 'finish', '2023-06-18', '20:46:00', '20:47:00', 7, 0.0166667, '2023-06-18 20:46:14'),
(7, 5, 7, 'done', 'finish', '2023-06-18', '20:53:00', '20:53:00', 7, 0, '2023-06-18 20:53:32'),
(8, 6, 8, 'DONE DOING FRONT END', 'STARTING', '2023-06-26', '14:45:00', '14:46:00', 7, 0.0166667, '2023-06-26 14:46:08'),
(9, 7, 11, 'finish', 'STARTING', '2023-06-26', '23:33:00', '23:34:00', 7, 0.0166667, '2023-06-26 23:34:06'),
(10, 7, 11, 'asdsadasfgasdfsa', 'finish', '2023-06-27', '23:46:00', '12:46:00', 8, -11, '2023-06-26 23:46:37'),
(11, 7, 11, 'KULANG&amp;nbsp;', 'MISSING', '2023-06-07', '23:47:00', '23:48:00', 6, 0.0166667, '2023-06-26 23:47:47'),
(12, 8, 15, 'task1', 'task 1', '2023-07-02', '17:28:00', '19:28:00', 7, 2, '2023-07-02 17:28:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `dtr`
--
ALTER TABLE `dtr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_productivity`
--
ALTER TABLE `user_productivity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrower`
--
ALTER TABLE `borrower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dtr`
--
ALTER TABLE `dtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_productivity`
--
ALTER TABLE `user_productivity`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrower`
--
ALTER TABLE `borrower`
  ADD CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
