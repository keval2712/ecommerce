-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 09:09 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'MyBookAdmin', 'mybookrk@gmail.com', '22052712');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(2, 8, 'Basic Computer', 90, 5, 'basiccomputercourse.webp'),
(3, 8, 'Python Hacking', 100, 1, 'python hacking.webp'),
(4, 8, 'Artifical Inteligence', 140, 1, 'artificial intelligence.webp');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(12) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 8, 'raj', 'ponkiyaraj7@gmail.com', 2147483647, 'Very useful websites');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` bigint(100) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 2, 'raj', 9023671902, 'ponkiyaraj7@gmail.com', 'cash on delivery', 'majevadi', 'maths 3', 400, '22 may 2005', 'completed'),
(3, 2, 'raj', 9023671902, 'ponkiyaraj7@gmail.com', 'cash on delivery', 'majevadi', 'maths 3', 400, '22 may 2005', 'completed'),
(6, 8, 'raj', 1, 'ponkiyaraj7@gmail.com', 'cash on delivery', 'flat no. 2, d, s, s - 362011', ', Data Structure (1) ', 44, '26-Mar-2023', 'pending'),
(8, 8, 'r', 4, 'mybookrk@gmail.com', 'cash on delivery', 'flat no. 3, dd, s3, asd - 321', ', maths (1) ', 900, '26-Mar-2023', 'pending'),
(10, 8, 'raj', 123, 'ponkiyaraj7@gmail.com', 'cash on delivery', 'flat no. 12, gopalmill, majevadi, India - 362011', ', Free Fall (1) ', 44, '23-Apr-2023', 'pending'),
(11, 8, 'raj', 987654, 'ponkiyaraj7@gmail.com', 'cash on delivery', 'flat no. 2, gopalmill, majevadi, India - 362011', ', Artifical Inteligence (4) ', 560, '05-May-2023', 'completed'),
(12, 11, 'raj', 9023671902, 'ponkiyaraj7@gmail.com', 'cash on delivery', 'flat no. 12, gopalmill, majevadi, India - 362011', ', Artifical Inteligence (1) ', 140, '28-Jun-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(4, 'Free Fall', 44, 'freefall.jpg'),
(5, 'Artifical Inteligence', 140, 'artificial intelligence.webp'),
(6, 'Basic Computer', 90, 'basiccomputercourse.webp'),
(7, 'Python Programming', 224, 'python.png'),
(8, 'Computer Network', 10987651, 'cns.jpg'),
(10, 'Computer Science', 320, 'computer scince.jpg'),
(11, 'C programming', 104, 'operating system.webp'),
(12, 'Python Hacking', 100, 'python hacking.webp'),
(13, 'Data Structure', 190, 'computerwork.jpg'),
(14, 'english', 230, 'photograph (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sellbook`
--

CREATE TABLE `sellbook` (
  `id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` bigint(100) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellbook`
--

INSERT INTO `sellbook` (`id`, `name`, `bookname`, `number`, `email`, `address`, `price`, `image`, `status`) VALUES
(10, 'jay', 'cns', 345678, 'raj@gmail.com', 'junagadh', 123, 'cns.jpg', 'accepted'),
(18, 'raj', 'maths', 98765432, 'ponkiyaraj7@gmail.com', 'gopal mill,junagadh', 223, 'dbms.jpg', 'accepted'),
(20, 'cr', 'gujrati', 1234123, 'jay@gmail.com', 'junagadh', 123, 'coa.webp', 'accepted'),
(22, 'raj', 're', 23456789, 'ponkiyaraj7@gmail.com', 'flat no. 2, gopalmill, majevadi, India - 362011', 123, 'computer network.webp', 'accepted'),
(23, 'raj', 'tt', 9023671902, 'ponkiyaraj7@gmail.com', 'flat no. 4, gopalmill, majevadi, India - 362011', 100, 'computer scince.jpg', 'accepted'),
(24, 'raj', 'maths', 90236789, 'ponkiyaraj7@gmail.com', 'flat no. 2, gopalmill, majevadi, India - 362011', 200, 'cns.jpg', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(8, 'ponkiya raj', 'ponkiyaraj7@gmail.com', '123'),
(9, 'sodha milan', 'milan123@gmail.com', '1234'),
(10, 'hdh', 'wjh@hwd.com', '123'),
(11, 'ponkiya harsh', 'harsh12@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellbook`
--
ALTER TABLE `sellbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `sellbook`
--
ALTER TABLE `sellbook`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
