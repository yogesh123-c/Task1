-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 02:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zombie bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'yogesh', 'rahul', 200, '2022-01-17 18:58:27'),
(2, 'Saurabh', 'aniket', 200, '2022-01-17 19:00:31'),
(3, 'Aniket', 'Nikita', 5000, '2022-01-12 19:01:32'),
(4, 'yogesh', 'Nikita', 5000, '2022-01-13 19:06:15'),
(5, 'Arjun', 'saurabh', 500, '2022-01-13 19:28:24'),
(6, 'Arjun', 'Aniket', 500, '2022-01-11 19:30:31'),
(7, 'Arjun', 'Aniket', 200, '2022-01-11 19:31:22'),
(8, 'Siddhesh', 'Amar', 520, '2022-02-14 07:39:58'),
(9, 'Allia', 'vicky', 500, '2022-01-15 09:37:08'),
(10, 'sahil', 'Amar', 100, '2022-01-13 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Aniket', 'aniket@gmail.com', 46600),
(2654, 'gaurav', 'gaurav@gmail.com', 30620),
(3624, 'yogesh', 'yogei@gmail.com', 40000),
(4542, 'Arjun', 'arju@gmail.com', 48800),
(5345, 'Shailesh', 'shil@gmail.com', 35000),
(5465, 'arpita', 'arp@gmail.com', 49500),
(6554, 'Nikita', 'niks@gmail.com', 40000),
(7875, 'Siddhesh', 'sidd@gmail.com', 49480),
(8877, 'vicky', 'vicky@gmail.com', 40000),
(9245, 'rahul', 'rahul@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
