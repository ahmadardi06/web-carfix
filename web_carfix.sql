-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Sep 2018 pada 17.57
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

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
-- Struktur dari tabel `networks`
--

CREATE TABLE `networks` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `networks`
--

INSERT INTO `networks` (`id`, `title`, `link`, `created_at`) VALUES
(6, 'Carfix Tugu', 'http://carfix-tugu.business.site', '2018-09-04 15:42:07'),
(7, 'Carfix Majapahit', 'http://carfix-majapahit.business.site', '2018-09-04 15:42:54'),
(8, 'Carfix WR Supratman', 'http://carfix-wr-supratman.business.site', '2018-09-04 15:43:07'),
(9, 'Carfix Mrican', 'http://carfix-mrican.business.site', '2018-09-04 15:43:20'),
(10, 'Carfix Yos Sudarso', 'http://carfix-solo.business.site', '2018-09-04 15:43:33'),
(11, 'Carfix Bantul', 'http://carfix-bantul.business.site', '2018-09-04 15:43:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `file` varchar(128) DEFAULT NULL,
  `display` enum('y','n') NOT NULL DEFAULT 'n',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
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
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id_slider`, `title`, `description`, `file`, `display`, `create_at`) VALUES
(1, 'CRAFTED WITH BOOTSTRAP 4', 'Material Design Meets With The Power of Bootstrap ', 'slider-bg1.jpg', 'y', '2018-09-04 07:35:31'),
(2, 'REFRESHING MATERIAL DESIGN', 'Extensively Customizable Tons of UI Elements', 'slider-bg2.jpg', 'y', '2018-09-04 07:53:03'),
(3, 'MULTI-PURPOSE TEMPLATE', 'Ready to Use for Business, Agency, Startup, Portfo', 'slider-bg3.jpg', 'n', '2018-09-04 07:53:03'),
(6, 'CARFIX PROMO RAMADHAN', 'Service Mobil Anda di CARFIX Terdekat', 'slider-bg10.jpg', 'y', '2018-09-04 13:01:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
