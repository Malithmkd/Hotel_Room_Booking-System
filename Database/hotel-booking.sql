-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 09:09 PM
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
-- Database: `hotel-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin123', 'admin123@gmail.com', '$2y$10$31hAIQjCyCLe1HI3vx3oOOoR7Lcl9b97agVQEErLcPJhHbkOeHfrC', '2024-07-20 06:35:05'),
(2, 'admin2', 'admin12@gmail.com', '$2y$10$/IF2eidl4mFaAviziFt0h.9st6JtAN7Lnamb/8/aKKdJF2NKu7D2G', '2024-07-20 07:13:55'),
(3, 'Admin boss', 'bsse0122011275@gmail.com', '$2y$10$rRuBAeEpDOUZvwOV8Ab4XOmjzoRxkIf1HesS6VNLAfmAzoNU9il.C', '2024-07-28 16:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `check_in` varchar(200) NOT NULL,
  `check_out` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(40) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `check_in`, `check_out`, `email`, `phone_number`, `full_name`, `hotel_name`, `room_name`, `user_id`, `created_at`) VALUES
(1, '7/28/2024', '7/30/2024', 'malith.kavidu.34@gmail.com', 21434, 'ASD', 'The Plaza Hotel', 'Standard Room', 15, '2024-07-20 06:08:43'),
(2, '7/28/2024', '8/1/2024', 'bsse0122011275@saegis.ac.lk', 776386688, 'malith Dodangoda', 'The Ritz', 'Family Room', 15, '2024-07-20 06:19:23'),
(3, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:20:18'),
(4, '7/29/2024', '7/30/2024', 'malith.kavidu.34@gmail.com', 21434, 'malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:20:34'),
(5, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:23:05'),
(6, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:23:48'),
(7, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:25:42'),
(8, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:26:18'),
(9, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:28:06'),
(10, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:28:49'),
(11, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:30:06'),
(12, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:31:15'),
(13, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:32:45'),
(14, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:34:52'),
(15, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:37:00'),
(16, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:37:47'),
(17, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:40:11'),
(18, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-26 18:42:34'),
(19, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-27 03:44:36'),
(20, '7/27/2024', '7/28/2024', 'malith.kavidu.314@gmail.com', 776386633, 'Malith Dodangoda', 'Sheraton', 'Suite Room', 15, '2024-07-28 18:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `location` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `description`, `status`, `location`, `created_at`) VALUES
(1, 'Sheraton', 'services-1.jpg', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', 1, 'Cairo', '2024-07-19 15:40:57'),
(2, 'The Plaza Hotel', 'image_4.jpg', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', 1, 'New york', '2024-07-19 15:40:57'),
(3, 'The Ritz', 'image_4.jpg', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', 1, 'Paris', '2024-07-19 15:40:57'),
(4, 'Shangri-La', '2023-03-24.jpg', 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.', 1, 'Colombo', '2024-07-20 06:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num_persons` int(10) NOT NULL,
  `size` int(10) NOT NULL,
  `view` varchar(200) NOT NULL,
  `num_beds` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `hotel_id` int(10) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `status` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `image`, `num_persons`, `size`, `view`, `num_beds`, `price`, `hotel_id`, `hotel_name`, `status`, `created_at`) VALUES
(1, 'Suite Room', 'room-1.jpg', 3, 45, 'Sea View', 2, 40, 1, 'Sheraton', 1, '2024-07-19 16:52:19'),
(2, 'Standard Room', 'room-2.jpg', 3, 47, 'Sea View', 3, 50, 2, 'The Plaza Hotel', 1, '2024-07-19 16:52:19'),
(3, 'Family Room', 'room-3.jpg', 4, 70, 'Sea View', 4, 65, 3, 'The Ritz', 1, '2024-07-19 16:52:19'),
(4, 'Deluxe Room', 'room-4.jpg', 6, 100, 'Sea View', 5, 80, 1, 'Sheraton', 1, '2024-07-19 16:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(1, 'malith.kavidu.34@gmail.com', 'malith.kavidu.34@gmail.com', '$2y$10$Fv/Tr066p6OBOBJap4EbVexnyECUZnsDIoHybP5vS8cU66U5AGO6m', '2024-07-18 17:40:23'),
(2, 'malith.kavidu.34@gmail.com', 'malith.kavidu.34@gmail.com', '$2y$10$oHLixDVUOskqZ1Zx0Nji2Ouz5I4DrW5gbUFLtKRHOn6XZ4v2dLwIG', '2024-07-18 17:40:40'),
(3, 'malith.kavidu.34@gmail.com', 'malith.kavidu.34@gmail.com', '$2y$10$HpbCMuAXC6ZILoq36BE1yuBdp/VScqGRj.RbJzM4M7AY7et2mzcq.', '2024-07-18 17:41:39'),
(4, 'malith', 'bsse0122011275@saegis.ac.lk', '$2y$10$7J//KpLViep8AFuFtWNG/OqiHGfPDcTS7WJrpHR3uDu/cuPAJ2ZxW', '2024-07-18 17:41:53'),
(5, 'bsse0122011275', 'malith.kavindu.111@gmail.com', '$2y$10$.9V5AO.Gb34xEk4ALBupHeLDwm8N7v.ilB4B2rEhA.Uvj4BcdDHLG', '2024-07-18 17:43:27'),
(6, 'bsse0122011275', 'malith.kavidu.34@gmail.com', '$2y$10$GXqNr/xre.r21azpfOflmOalTc.fCAB8yZ29OK0ec.NmdLZE0zJye', '2024-07-18 17:45:46'),
(7, 'malith', 'bsse0122011275@saegis.ac.lk', '$2y$10$aDVeTFhODZ26QCDReCXExedZ4zklmqh8L0Smh6M9VE/i6caqyL4Y.', '2024-07-18 17:53:26'),
(8, 'malith', 'bsse0122011275@saegis.ac.lk', '$2y$10$2jdPjqexv1eppd1q9zc.yONUPNwjOpkjeeDOWK1To1.YlSZ8L3OJW', '2024-07-18 17:54:33'),
(9, 'malith', 'BSSE0122011298@saegis.ac.lk', '$2y$10$ZDQWMM3gWQKakWcNyhD1D.TF.YRFSewnn/i7gCbV3J82cb9Z1dy1y', '2024-07-18 17:54:39'),
(10, 'malith', 'sqssd@gmail.com', '$2y$10$yQ4EOjnGuT5vv4RDHSrs1eVyFcT6EFjVF1zdrSKUKcckmtRRvECpe', '2024-07-18 17:55:02'),
(11, 'malith', 'sqssd@gmail.com', '$2y$10$1X65UnjTRg2PN5f6zm1WyOxc0IVdBjs8qrNr30gT3MxYiEryYQku2', '2024-07-18 17:56:07'),
(12, 'malith', 'bsse0122011276@saegis.ac.lk', '$2y$10$7.b3VFtaDCjph7H6TQckq.Ze4EOBkfwsl05STfx.4s5QgOMp4VdUe', '2024-07-18 18:09:58'),
(13, 'malith', 'bsse0122011276@saegis.ac.lk', '$2y$10$NApBD3uA6ICBitFLWCLw5eC5DFmNtRdtyt6BNbbf9dZMhflmG3dVi', '2024-07-18 18:11:55'),
(14, 'malith', 'malith.kavidu.34@gmail.com', '$2y$10$uBg7pDGEIl8zcvZeFLQPyeWvrqBp0RlMyxbEA1GvD/zlTBZ6X1ATW', '2024-07-19 04:42:27'),
(15, 'kavindu', 'malith.kavidu.314@gmail.com', '$2y$10$31hAIQjCyCLe1HI3vx3oOOoR7Lcl9b97agVQEErLcPJhHbkOeHfrC', '2024-07-19 05:07:42'),
(16, 'malith', 'malith.k.d@gmail.com', '$2y$10$/IF2eidl4mFaAviziFt0h.9st6JtAN7Lnamb/8/aKKdJF2NKu7D2G', '2024-07-20 06:13:15'),
(17, 'Malith', 'malith.kavindu.1111@gmail.com', '$2y$10$/U3CqMsayUo5wA/4qSkaaOsE0KYDBJpDKNPmwbNOmiDkcIDPrwWfK', '2024-07-26 12:49:44'),
(18, 'Malith', 'malith.kavindu.1111@gmail.com', '$2y$10$xAN5fVEVvrUQU0zLzFRiI.tXuT0vfzVV9293w2TEg1FtfFPGuHDHu', '2024-07-26 12:50:10'),
(19, 'Malith', 'malith.kavindu.1111@gmail.com', '$2y$10$5JVjZ.eDT2go6x00M/3zYufIgnNQ0NKFSt0JIjZY8FEa3SWPC2.mG', '2024-07-26 12:54:57'),
(20, 'Malith', 'malith.kavindu.1111@gmail.com', '$2y$10$0mSfjioItLcY7gpeXdOqOOI.9D4/Jhb33xFAMEoQwzT6.bRMiA6Py', '2024-07-28 18:51:09'),
(21, 'Malith', 'malith.kavindu.1111@gmail.com', '$2y$10$eDlh9Ynrsy3e9QmsSFVBtuoOAJT0bH0JyaoL6ShVcjEDF8QynAQIy', '2024-07-28 18:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(5) NOT NULL,
  `name` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `room_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `icon`, `description`, `room_id`, `created_at`) VALUES
(1, 'Tea Coffee', 'flaticon-diet', 'A small river named Duden flows by their place and supplies it with the necessary', 1, '2024-07-19 18:30:11'),
(2, 'Hot Showers', 'flaticon-workout', 'A small river named Duden flows by their place and supplies it with the necessary\r\n		              ', 2, '2024-07-19 18:30:11'),
(3, 'Laundry', 'flaticon-diet-1', 'A small river named Duden flows by their place and supplies it with the necessary\r\n		              ', 3, '2024-07-19 18:30:11'),
(4, 'Air Conditioning', 'flaticon-first', 'A small river named Duden flows by their place and supplies it with the necessary', 1, '2024-07-19 18:30:11'),
(5, 'Free Wifi', 'flaticon-first', 'A small river named Duden flows by their place and supplies it with the necessary\r\n', 2, '2024-07-19 18:30:11'),
(6, 'Kitchen', 'flaticon-first', 'A small river named Duden flows by their place and supplies it with the necessary', 3, '2024-07-19 18:30:11'),
(7, 'Ironing', 'flaticon-first', 'A small river named Duden flows by their place and supplies it with the necessary', 1, '2024-07-19 18:30:11'),
(8, 'Lovkers', 'flaticon-first', 'A small river named Duden flows by their place and supplies it with the necessary', 2, '2024-07-19 18:30:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
