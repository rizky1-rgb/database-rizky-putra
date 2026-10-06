-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2026 at 01:55 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katalog_hp`
--

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id_merk` tinyint UNSIGNED NOT NULL,
  `merk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`id_merk`, `merk`) VALUES
(171, 'ZTE Nubia'),
(172, 'Asus'),
(173, 'Samsung'),
(174, 'IQOO'),
(175, 'Xiaomi'),
(176, 'IPhone'),
(177, 'OnePlus'),
(178, 'Infinix'),
(179, 'Vivo'),
(180, 'Asus'),
(181, 'MSI'),
(182, 'HP'),
(183, 'Dell'),
(184, 'Axioo'),
(185, 'Acer'),
(186, 'Apple'),
(187, 'Lenovo'),
(188, 'Infinix');

-- --------------------------------------------------------

--
-- Table structure for table `seri`
--

CREATE TABLE `seri` (
  `id_seri` tinyint UNSIGNED NOT NULL,
  `id_tipe` tinyint UNSIGNED NOT NULL,
  `nama_seri` varchar(255) NOT NULL,
  `spek` text NOT NULL,
  `harga` int NOT NULL,
  `gambar1` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `status` set('availabel','not availabel','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` tinyint UNSIGNED NOT NULL,
  `id_merk` tinyint UNSIGNED NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `id_merk`, `tipe`) VALUES
(1, 171, 'Redmagic\r\n'),
(2, 171, 'Neo Series'),
(3, 171, 'V Series'),
(4, 171, 'A Series'),
(5, 172, 'Zenfone'),
(6, 172, 'ROG Phone'),
(7, 173, 'S Series'),
(8, 173, 'Z Series'),
(9, 173, 'A Series'),
(10, 173, 'M Series'),
(11, 174, 'Flagship Series'),
(12, 174, 'Z Series'),
(13, 174, 'Neo Series'),
(14, 175, 'Xiaomi Series\r\n'),
(15, 175, 'Redmi series'),
(16, 175, 'POCO Series'),
(17, 176, 'IPhone'),
(18, 177, 'Number Series'),
(19, 177, 'Nord Series'),
(20, 177, 'Ace Series'),
(21, 178, 'Hot Series'),
(22, 178, 'Note Series'),
(23, 178, 'GT Series'),
(24, 178, 'Smart Series'),
(25, 178, 'Zero Series'),
(26, 179, 'Y Series'),
(27, 179, 'V Series'),
(28, 179, 'X Series'),
(29, 179, 'T Series');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id_merk`),
  ADD UNIQUE KEY `id_merk` (`id_merk`);

--
-- Indexes for table `seri`
--
ALTER TABLE `seri`
  ADD PRIMARY KEY (`id_seri`);

--
-- Indexes for table `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id_merk` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `seri`
--
ALTER TABLE `seri`
  MODIFY `id_seri` tinyint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
