-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 12:15 PM
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
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `body` text,
  `file` varchar(256) DEFAULT NULL,
  `tag` varchar(256) DEFAULT NULL,
  `article_type` enum('def','en','tt') NOT NULL DEFAULT 'def',
  `account_id` int(8) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `file`, `tag`, `article_type`, `account_id`, `created_at`) VALUES
(6, '5 Kesalahan Orang Tua Saat Menggunakan Car Seat Untuk Si Kecil', 'Safety Belt atau biasa disebut sabuk pengaman bukanlah semata barang pajangan. Banyak orang yang menganggap barang ini sepele karena mungkin jarang mobil dipakai ngebut atau dalam kecepatan tinggi. Padahal sabuk pengaman ini sangat rawan sekali kegunaannya.\r\n\r\nDemikian pula dengan kebutuhan anak kita. Si kecil tentunya tidak cukup pas bila menggunakan sabuk pengamana. Oleh karena itu, ada kalanya pengendara menggunakan car seat khusus untuk anak.\r\n\r\nNah, berikut ini beberapa kesalahan yang umumnya dilakukan orang tua saat menggunakan car seat atau jok tambahan untuk si kecil :\r\n\r\n1. Memilih Kursi Yang Ukurannya Tidak Sesuai Dengan Usia, Berat Badan, dan Tinggi Si Kecil\r\n\r\nSaat hendak membeli car seat untuk anak, beberapa orang tua kurang mempertimbangkan masalah ukuran kursi dan juga ukuran anaknya beberapa waktu kedepan. Mereka cenderung melihat merk dan juga tampilannya yang bagus. Padahal mempertimbangkan soal ukuran ini sangat penting loh Mom, karena si kecil itu akan tumbuh semakin besar, semakin berat, dan semakin tinggi. Jadi, bagaimana bisa jika Mom hanya melihatnya pada saat itu, okelah jika saat ini selama sebulan masih muat, tapi bagaimana jika beberapa bulan si kecil terus tumbuh, tentu car seat itu akan semakin tidak nyaman untuk digunakan. Dan perlu diingat, biasanya car seatmemiliki waktu kadaluarsa atau layak pakai sekitar enam tahun setelah waktu produksi, jadi pikirkanlah ukuran yang kurang lebih untuk enam tahun kedepan.\r\n\r\nSelain itu, hal lain yang perlu diingat adalah Mom tidak disarankan membelicar seat bekas ya, karena kita tentu tidak tahu apakah penggunaan sebelumnya memang layak atau tidak, bagaimana jika bekas kecelakaan, atau mungkin ada bagiannya yang cacat, tentu ini akan  sangat berbahaya bagi si kecil.\r\n\r\n2. Banyak Orang Tua Yang Tidak Menginstal Car Seat Dengan Benar\r\n\r\nBanyak orang tua menggunakan carseat untuk buah hati mereka, namun ternyata hanya sedikit yang telah memasangnya dengan benar. Beberapa kesalahan yang menonjol sering terjadi adalah Routing sabuk pengaman yang tidak terpasang dengan benar, tidak menempatkan sabuk pengaman dalam mode terkunci, tidak menggunakan kedua jangkar yang lebih rendah dari sistem pengaman di sabuk pengaman, tidak menghubungkan jangkar yang lebih rendah dan tethers sistem LATCH ke titik yang salah di dalam mobil terutama pada kait kargo, atau bahkan Mom pernah lupa untuk mengaitkannya sama sekali. Hal-hal ini justru akan menimbulkan bahaya yang lebih besar melebihi kita tak memakai car seat. Jadi, kalau mau nyaman ya harus aman.\r\n\r\n3. Tidak Menggunakan Jasa Profesional Untuk Memasang Car Seat\r\n\r\nMungkin semula Mom berpikir bahwa memasang dan menginstal car seat adalah suatu hal yang mudah dan sepele, yang tentu saja bisa dilakukan sendiri. Memang sih ada benarnya, tapi apakah yakin bahwa memasang sendiri sudah pasti beanr dan sesuai prosedur? Ingat, jangan menciptakan benda berbahaya untuk si kecil loh Mom.\r\n\r\nMenginstal car seat berbeda dengan memasang kursi goyang kecil di rumah yang akan membuat si kecil tertidur, jadi jangan menyamakannya. Car seat adalah sebuah alat yang dirancang untuk keselamatan si kecil, car seat dirancang agar bisa tetap aman untuk berkendara dengan kecepatan tertentu, dan menjauhkan dari hal berbahaya saat terjadi kecelakaan. Tapi apa jadinya jika kita melakukan kesalahan dalam memasangnya, tentu alat keamanan ini justru akan membahayakan. Jadi, apa salahnya kita menggunakan jasa profesional untuk menginstal car seat, agar keamanan lebih terjamin.\r\n\r\n4. Pemasangan Sabuk Pengaman Car Seat Yang Nyaman, Tetapi Tidak Aman\r\n\r\nSabuk pengaman yang benar harus dipasang dengan aman, jadi pastikanMom setidaknya hanya menyisakan jarak satu jari saja antara badan si kecil dan sabuk. Mungkin si kecil merasa ini tidak nyaman, karena terlalu kenacang atau membuat sulit bergerak, namun pada kenyataannya inilah hal yang aman, dan hal yang aman memang tidak selalu nyaman.\r\n\r\nKarena harness atau sabuk ini berfungsi untuk menahan badan si kecil terlindungi dan memperlambat benturan atau badan yang terpental saat kendaraan yang berada dalam kecepatan tinggi berhenti tiba-tiba. Selain itu,Mom juga tidak perlu menambah aksesori lain di sabuk pengaman, terlebih jika benda itu tak bersertifikat.\r\n\r\n5. Tidak Menggunakan Tether Bisa Membayakan Si Kecil \r\n\r\nMom, mungkin kita sering mengabaikan hal satu ini, Tether yang bahkan tak banyak diketahui fungsi benda satu ini. Itu loh Mom tali panjang yang ada di dekat pintu, atau alas mobil. Sebenarnya Tether ini berfungsi mengencangkancar seat agar tidak mudah terpental, kita bisa mengaitkannya dengan jangkar yang berada di belakang senderan kepala. Menggunakan tether ternyata menurunkan kecelakaan ekstrim pada si kecil, karena ini menyangkut seberapa jauh kepala anak bergerak maju empat sampai delapan inci dengan kursi mobil yang terpasang dengan baik, dan bisa dibayangkan jika tether ini tak digunakan, car seat akan mudah terpental.', 'article-1536138078594.jpg', 'safety', 'tt', 1, '2018-09-05 09:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `networks`
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
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `file` varchar(128) DEFAULT NULL,
  `display` enum('y','n') NOT NULL DEFAULT 'n',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `title`, `description`, `file`, `display`, `created_at`) VALUES
(2, 'CARFIX PROMO RAMADHAN', 'Service Mobil Anda di CARFIX Terdekat', 'promo-1536122996223.jpg', 'y', '2018-09-05 04:49:56');

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
(9, ' ', ' ', 'slider-1536137190950.jpg', 'y', '2018-09-05 08:46:31'),
(10, 'Best Solution', 'solusi terbaik untuk mobil anda', 'slider-1536137335318.jpg', 'y', '2018-09-05 08:48:55'),
(11, ' ', ' ', 'slider-1536137370300.jpg', 'y', '2018-09-05 08:49:30'),
(13, 'We Are Everywhere', 'temukan gerai CARfix di daerah anda', 'slider-1536137493957.JPG', 'y', '2018-09-05 08:51:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
