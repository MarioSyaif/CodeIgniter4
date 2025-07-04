-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2025 pada 05.46
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id`, `tanggal`, `nominal`, `created_at`, `updated_at`) VALUES
(2, '2025-06-26', 25000, '2025-06-25 06:01:35', '2025-07-03 03:35:26'),
(3, '2025-06-27', 300000, '2025-06-25 06:01:35', NULL),
(4, '2025-06-28', 100000, '2025-06-25 06:01:35', NULL),
(5, '2025-06-29', 300000, '2025-06-25 06:01:35', NULL),
(6, '2025-06-30', 100000, '2025-06-25 06:01:35', NULL),
(7, '2025-07-01', 200000, '2025-06-25 06:01:35', NULL),
(8, '2025-07-02', 200000, '2025-06-25 06:01:35', NULL),
(11, '2025-07-05', 34000, '2025-07-03 03:39:52', NULL),
(12, '2025-07-03', 100000, '2025-07-03 06:35:06', '2025-07-03 08:02:53'),
(16, '2025-07-04', 100000, '2025-07-04 02:56:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-06-09-151626', 'App\\Database\\Migrations\\User', 'default', 'App', 1749482512, 1),
(2, '2025-06-09-151628', 'App\\Database\\Migrations\\Product', 'default', 'App', 1749482512, 1),
(3, '2025-06-09-151629', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1749482512, 1),
(4, '2025-06-09-151635', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1749482512, 1),
(5, '2025-07-02-064519', 'App\\Database\\Migrations\\Diskon', 'default', 'App', 1751439292, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2025-06-09 15:27:27', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-06-09 15:27:27', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-06-09 15:27:27', NULL),
(4, 'DELL Laptop Ideal', 7599000, 7, 'dell_laptop_ideal.jpg', '2025-06-09 15:27:27', NULL),
(5, 'MacBook Air 2021', 21000000, 10, 'macbook_air.jpg', '2025-06-09 15:27:27', NULL),
(6, 'Acer Nitro 5', 17000000, 8, '1749482944_d4aa11088eb4653e0fcc.jpeg', '2025-06-09 15:29:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `total_harga`, `alamat`, `ongkir`, `status`, `created_at`, `updated_at`) VALUES
(1, 'csitumorang', 34807000, 'rumahku', 9000, 0, '2025-06-28 05:11:46', '2025-06-28 05:11:46'),
(2, 'csitumorang', 17298000, 'Perum pandan sari', 700000, 0, '2025-07-03 05:28:30', '2025-07-03 05:28:30'),
(3, 'csitumorang', 10658000, 'Jl. Udinus Polke no 1', 9000, 0, '2025-07-03 06:36:59', '2025-07-03 06:36:59'),
(4, 'usermario', 27110000, 'semarang', 11000, 0, '2025-07-04 02:36:44', '2025-07-04 02:36:44'),
(5, 'usermario', 17623000, 'semarang', 25000, 0, '2025-07-04 02:46:04', '2025-07-04 02:46:04'),
(6, 'usermario', 13198000, 'semarang', 200000, 0, '2025-07-04 02:59:25', '2025-07-04 02:59:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `transaction_id`, `product_id`, `jumlah`, `diskon`, `subtotal_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 1, 0, 17000000, '2025-06-28 05:11:46', '2025-06-28 05:11:46'),
(2, 1, 1, 1, 0, 10899000, '2025-06-28 05:11:46', '2025-06-28 05:11:46'),
(3, 1, 2, 1, 0, 6899000, '2025-06-28 05:11:46', '2025-06-28 05:11:46'),
(4, 2, 2, 1, 0, 6299000, '2025-07-03 05:28:30', '2025-07-03 05:28:30'),
(5, 2, 1, 1, 0, 10299000, '2025-07-03 05:28:30', '2025-07-03 05:28:30'),
(6, 3, 1, 1, 0, 10649000, '2025-07-03 06:36:59', '2025-07-03 06:36:59'),
(7, 4, 5, 1, 0, 20900000, '2025-07-04 02:36:44', '2025-07-04 02:36:44'),
(8, 4, 3, 1, 0, 6199000, '2025-07-04 02:36:44', '2025-07-04 02:36:44'),
(9, 5, 1, 1, 0, 10799000, '2025-07-04 02:46:04', '2025-07-04 02:46:04'),
(10, 5, 2, 1, 0, 6799000, '2025-07-04 02:46:04', '2025-07-04 02:46:04'),
(11, 6, 2, 1, 0, 6799000, '2025-07-04 02:59:25', '2025-07-04 02:59:25'),
(12, 6, 3, 1, 0, 6199000, '2025-07-04 02:59:25', '2025-07-04 02:59:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'adminmario', 'maryadi.carla@maulana.net', '$2y$12$M6LRcKcTx78kI5kP1vCkueFCJYa2mMUfRMKObQ.W.3GYyyyt5xXRS', 'admin', '2025-06-09 15:27:33', NULL),
(2, 'paramita.wahyuni', 'julia91@prasetya.in', '$2y$12$s5jawc89TkG6r480rgvza.vyhA0x79K90VsopBfvmEVen5yfMxA7K', 'admin', '2025-06-09 15:27:34', NULL),
(3, 'paiman.namaga', 'zmandasari@permata.or.id', '$2y$12$MPPqta3kqr6nmpxiH1biUuuTt7bO5OjH0NM70ybE/lzG.lEYg9qWq', 'guest', '2025-06-09 15:27:34', NULL),
(4, 'fgunarto', 'ngunawan@yahoo.com', '$2y$12$qgRMj93xAovTHYWAf5gwb.gklZBJJkNeAZLSXRYmywCRTuUY4kHYy', 'admin', '2025-06-09 15:27:35', NULL),
(5, 'usermario', 'hardiansyah.mustika@lazuardi.ac.id', '$2y$12$USZf2db.WUeC5QtWlnJraePsSVgld.tt410avcV.Spwv9U7f8p9PK', 'guest', '2025-06-09 15:27:36', NULL),
(6, 'unasyidah', 'ehidayat@lazuardi.go.id', '$2y$12$xrHxUeUj0cYdlYhQJqLzEe.o81ZUOXRokzen6EoNF7ATAOW5etcs6', 'admin', '2025-06-09 15:27:36', NULL),
(7, 'calista.maheswara', 'ami.puspasari@najmudin.desa.id', '$2y$12$CQ.BQbu5u.ngVxtBPnFxdOSJkBA4XWFhwOTEOghGT1yA2y3sT9NRu', 'admin', '2025-06-09 15:27:37', NULL),
(8, 'anastasia.oktaviani', 'budiman.bahuwarna@gmail.co.id', '$2y$12$zxE6Z9mcEoQY8p4/sgfFyudzBmSBFKx9ZsWLtVn1FPkoIwBtF4OGe', 'admin', '2025-06-09 15:27:38', NULL),
(9, 'silvia.lestari', 'sudiati.tina@siregar.go.id', '$2y$12$vpz6cOXk74Ik97gvpfoUoetttRsEyN6uPDtS9KNA9/OmjDzdaQ.Lu', 'guest', '2025-06-09 15:27:38', NULL),
(10, 'natsir.raina', 'wahyuni.raden@nurdiyanti.net', '$2y$12$pGZX/iwMUCQCsRpyzGNBSeqa0Y73o1UHRhydyS3LRFVYSMvNPazWS', 'admin', '2025-06-09 15:27:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
