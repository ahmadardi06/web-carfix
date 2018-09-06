-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2018 at 03:09 PM
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
  `display` enum('n','y') NOT NULL DEFAULT 'n',
  `account_id` int(8) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `file`, `tag`, `article_type`, `display`, `account_id`, `created_at`) VALUES
(8, '5 Cara Merawat Mobil Tua', '<p>Anda memiliki mobil tua dan klasik tetapi belum tahu bagaimana cara merawat mobil tua?</p>\r\n<p>Nah, perlu untuk diketahui bahwa perawatan mobil tua tidaklah sama dengan merawat mobil baru. Ada banyak alasan seseorang lebih menyukai mobil tua, biasnaya karena klasik dan keunikan dari mobil tersbut.</p>\r\n<p>Mobil tua akan lebih membutuhkan tenaga karena cara merawat mobil tua membutuhkan penangnanan khusus.</p>\r\n<h2>5 Cara Merawat Mobil Tua</h2>\r\n<p>Bagi anda yang belum mengerti, jangan sembarangan merawat mobil. Berikut ini adalah cara merawat mobil tua yang baik.</p>\r\n<ol>\r\n<li>\r\n<h3>Rutin Memperhatian Kondisi Mesin Mobil</h3>\r\n</li>\r\n</ol>\r\n<p>Mobil tua biasanya memiliki permasalahan pada kaki-kaki mobil. Oleh karena itu maka sangat diperlukan dilakukan perawatan dan perhatian secara rutin pada beberapa bagian ban, rem, sill, gas, dan lain-lain.</p>\r\n<ol start=\"2\">\r\n<li>\r\n<h3>Lakukan Penggantian Oli Secara Berkala</h3>\r\n</li>\r\n</ol>\r\n<p>Cara merawat mobil tua selanjutnya adalah dengan melakukan penggantian oli mobil secara berkala. Karena oli berfungsi sebagai pelumas mesin, maka jangan sampai keliru dalam memilih jenis oli yang digunakan.</p>', 'article-1536227570457.jpg', 'rawat, mobil', 'tt', 'y', 1, '2018-09-06 09:52:50'),
(9, 'Ketahui Cara Perawatan Body Mobil Agar Tidak Mudah Rusak', '<p><strong>Ketahui Cara Perawatan Body Mobil Agar Tidak Mudah Rusak</strong>&nbsp;&ndash;&nbsp;Ada dua jenis perawatan pada mobil, yakni perawatan interior (mesin, desain dalam mobil) dan perawatan exterior (ban, body).</p>\r\n<p>Nah kali ini akan dibahas sedikit lebih detail mengenai cara perawatan body mobil dengan tujuan agar body mobil tidak cepat rusak.</p>\r\n<p>Tentunya semua pemilik mobil menginginkan mobilnya tetap terlihat konclong tanpa cacat sehingga mobil yang sebenarnya sudah berumur terlihat tetap seperti baru. Body mobil juga termasuk warna mobil.&nbsp;<strong>Baca:&nbsp;<a href=\"http://www.carfix.co.id/blog/tips-memilih-warna-mobil-yang-bagus/\">Tips Memilih Warna Mobil yang Bagus dan Tahan Lama</a>.</strong></p>', 'article-1536227634935.jpg', 'rawat, mobil', 'tt', 'y', 1, '2018-09-06 09:53:54'),
(10, 'Tips Sederana Mengecek Kondisi Mesin Mobil Bekas Untuk Pemula', '<p><strong>Tips Sederana Mengecek Kondisi Mesin Mobil Bekas Untuk Pemula</strong>&nbsp;&ndash;&nbsp;Membeli mobil bekas tidak akan pernah lepas dari yang namanya was-was atau kekhawatiran kondisi mobil masih layak atau tidak.</p>\r\n<p>Terutama untuk seorang pemula yang tidak tahu menahu mengenai mesin mobil. Karena ketidak tahuan inilah, akhirnya banyak yang tertipu dengan tampilan luar mobil tanpa memperhatikan dan mengecek secara mendetail kondisi mesin mobil bekas.</p>\r\n<p><strong>Baca Juga:&nbsp;<a href=\"http://www.carfix.co.id/blog/tips-memilih-mobil-bekas-dan-cara-membelinya/\">Tips Memilih Mobil Bekas dan Cara Membelinya Agar Tidak Mudah Tertipu</a>.</strong></p>\r\n<ol>\r\n<li>\r\n<h3>Membuka Kap Mesin dan Mengecek Kondisi Fisik Mesin</h3>\r\n</li>\r\n</ol>\r\n<p>Langkah pertama untuk mengecek kondisi mobil bekas adalah dengan membuka kap mesin mobil. Di dalam sana akan terlihat apakah mobil tersebut pernah turun mesin atau tidak.</p>\r\n<p>Kondisi ruang mesin yang pernah di cat mengindikasikan kalau mobil pernah turun mesin, jika sudah tahu maka anda tinggal menanyakan alasan kenapa harus turun mesin.</p>', 'article-1536238775467.jpg', 'mesin, mobil, perawatan', 'tt', 'y', 1, '2018-09-06 12:59:35'),
(11, 'Daftar alamat bengkel mobil di Semarang', '<p><strong>Daftar alamat bengkel mobil di Semarang Tel. 0815-7708-070</strong>&nbsp;&ndash;&nbsp;Sudah menjadi rahasia umum apabila sebuah mobil mengalami sebuah kerusakan tidak bisa lepas dari yang namanya bengkel mobil.</p>\r\n<p>Ya, memang bengkel mobil adalah tempat untuk melakukan perawatan atau memperbaiki komponen mobil yang mengalami kerusakan.</p>\r\n<p>CARfix adalah bengkel terkemuka di Semarang. Kami juga membuka layanan service 24 jam.</p>\r\n<p>Perkembangan bengkel perusahaan kami juga sudah tersebar di area Joglosemar (Jogja, Solo dan Semarang). Sehingga tak ada keraguan terhadap eksistensi usaha kami.</p>\r\n<p>Dengan didukung oleh teknisi yang bersertifikat dan diakui resmi, kami bangga memperkenalkan perusahaan kami. CARfix yang terdiri dari teknisi berpengalaman dan berpendidikan baik.</p>\r\n<p>Sebagai salah satu kota paling berkembang di Pulau Jawa, Kota Semarang mempunyai jumlah penduduk yang hampir mencapai 2 juta jiwa dan siang hari bisa mencapai 2,5 juta jiwa.</p>\r\n<p>Bahkan, Area Metropolitan Kedungsapur (Kendal, Demak, Ungaran Kabupaten Semarang, Kota Salatiga, dan Purwodadi Kabupaten Grobogan) dengan penduduk sekitar 6 juta jiwa, merupakan Wilayah Metropolis terpadat keempat, setelah Jabodetabek (Jakarta), Gerbangkertosusilo (Surabaya), dan Bandung Raya.</p>', 'article-1536238876718.jpg', 'alamat, tempat', 'en', 'y', 1, '2018-09-06 13:01:16'),
(12, 'Bengkel Mobil Semarang', '<p><strong>Bengkel Mobil Semarang Tel. 0815-7708-070</strong>&nbsp;&ndash;&nbsp;Carfix adalah bengkel terkemuka di Joglosemar (Jogjakarta, Solo, dan Semarang).</p>\r\n<p>Kami telah mendirikan perusahaan cabang-cabang bengkel kami di setiap kota-kota yang ada di Joglosemar.</p>\r\n<p>Dengan didukung oleh teknisi yang bersertifikat dan diakui resmi, kami bangga memperkenalkan perusahaan kami. Carfix yang terdiri dari teknisi berpengalaman dan berpendidikan baik.</p>\r\n<p>Sebagai salah satu kota paling berkembang di Pulau Jawa, Kota Semarang mempunyai jumlah penduduk yang hampir mencapai 2 juta jiwa dan siang hari bisa mencapai 2,5 juta jiwa.</p>\r\n<p>Bahkan, Area Metropolitan Kedungsapur (Kendal, Demak, Ungaran Kabupaten Semarang, Kota Salatiga, dan Purwodadi Kabupaten Grobogan) dengan penduduk sekitar 6 juta jiwa, merupakan Wilayah Metropolis terpadat keempat, setelah Jabodetabek (Jakarta), Gerbangkertosusilo (Surabaya), dan Bandung Raya.</p>\r\n<p>Dalam beberapa tahun terakhir, perkembangan Semarang ditandai pula dengan munculnya beragam merek mobil terkenal.</p>\r\n<p>Untuk itu, kami Carfix Indonesia melayani jasa perbaikan mobil Anda jika mengalami masalah. Kami juga melayani jasa panggilan.</p>', 'article-1536238950250.jpg', 'bengkel mobil', 'en', 'y', 1, '2018-09-06 13:02:30');

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
(11, 'Carfix Bantul', 'http://carfix-bantul.business.site', '2018-09-04 15:43:46'),
(18, 'Carfix Surabaya', 'http://carfix-sby.business.site', '2018-09-06 12:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `file` varchar(256) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `product_type` enum('sparepart','service','etc') NOT NULL DEFAULT 'etc',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `file`, `description`, `product_type`, `created_at`) VALUES
(2, 'Michelin', 'product-1536221345223.png', 'Produsen Otomotif Michelin', 'sparepart', '2018-09-06 08:09:05'),
(3, 'Shell', 'product-1536221365183.png', 'Produsen Otomotif Shell', 'sparepart', '2018-09-06 08:09:25'),
(4, 'Incoe', 'product-1536221380910.png', 'Produsen Otomotif Incoe', 'sparepart', '2018-09-06 08:09:40'),
(5, 'Oli', 'product-1536221477281.png', 'Jual, Ganti Oli.', 'service', '2018-09-06 08:11:17'),
(6, 'Battery', 'product-1536221518286.png', 'Battery', 'service', '2018-09-06 08:11:58'),
(7, 'Tyre', 'product-1536222393273.png', 'Tyre', 'service', '2018-09-06 08:26:33'),
(8, 'Shock Abs', 'product-1536222406248.png', 'Shock Abs', 'service', '2018-09-06 08:26:46'),
(9, 'Spooring', 'product-1536222488417.png', 'Spooring', 'service', '2018-09-06 08:28:08'),
(10, 'Brake', 'product-1536222501683.png', 'Brake', 'service', '2018-09-06 08:28:21'),
(11, 'Engine', 'product-1536222514810.png', 'Engine', 'service', '2018-09-06 08:28:34'),
(12, 'Gear', 'product-1536222525404.png', 'Gear', 'service', '2018-09-06 08:28:45'),
(13, 'AC', 'product-1536222536391.png', 'AC', 'service', '2018-09-06 08:28:56'),
(14, 'Electrical', 'product-1536222550028.png', 'Electrical', 'service', '2018-09-06 08:29:10'),
(15, 'UV Ozone', 'product-1536222561848.png', 'UV Ozone', 'service', '2018-09-06 08:29:21'),
(16, 'All Service', 'product-1536222577287.png', 'All Service', 'service', '2018-09-06 08:29:37');

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
(3, 'Paket Ramadhan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 'promo-1536227111256.png', 'y', '2018-09-06 09:45:11'),
(4, 'Paket Cepat', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 'promo-1536227160683.jpg', 'y', '2018-09-06 09:46:00'),
(5, 'Spooring Balancing Berhadiah Emas', 'CARfix tiada hentinya menghadirkan kejutan buat memanjakan konsumen di Semarang, Solo dan Yogya. Kali ini peluang terbuka lebar bagi konsumen untuk mendapatkan hadiah emas melalui Program terbaru.', 'promo-1536238529608.jpg', 'y', '2018-09-06 12:55:29');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL,
  `role` enum('superadmin','admin','client') NOT NULL DEFAULT 'client',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'CARfix Admin', 'admin@carfix.id', 'adminCARfix', '28112d2da54b1fbaa1a1ce9e796fd636', 'superadmin', '2018-09-06 04:18:00'),
(2, 'Pak Eko', 'jurnalis@carfix.co.id', 'masukpakeko', '5e32cf16aa428d230e7f21fcf32d4ee1', 'admin', '2018-09-06 04:49:45'),
(4, 'Ahmad Ardiansyah', 'ardiansyah3ber@gmail.com', 'ardiansyah3ber', 'be20ec6ed8731979e1fb58ea325a05c5', 'admin', '2018-09-06 13:05:05');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
