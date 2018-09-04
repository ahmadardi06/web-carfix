-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 11:30 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_carfix`
--

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id_slider` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `display` enum('y','n') NOT NULL DEFAULT 'n',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id_slider`, `title`, `description`, `file`, `display`, `create_at`) VALUES
(1, 'CRAFTED WITH BOOTSTRAP 4', 'Material Design Meets With The Power of Bootstrap ', 'slider-bg1.jpg', 'n', '2018-09-04 07:35:31'),
(2, 'REFRESHING MATERIAL DESIGN', 'Extensively Customizable Tons of UI Elements', 'slider-bg2.jpg', 'n', '2018-09-04 07:53:03'),
(3, 'MULTI-PURPOSE TEMPLATE', 'Ready to Use for Business, Agency, Startup, Portfo', 'slider-bg3.jpg', 'n', '2018-09-04 07:53:03'),
(5, 'Title Updated', 'Description Updated', 'slider-bg4-updated.jpg', 'n', '2018-09-04 09:00:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
