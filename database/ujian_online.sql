-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2021 pada 05.02
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2021_01_11_044330_create_table_soals', 1),
(54, '2021_01_11_045554_create_table_pengaturans', 1),
(55, '2021_01_11_045848_create_table_nilais', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_nilais`
--

CREATE TABLE `table_nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `benar` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salah` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kosong` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_nilais`
--

INSERT INTO `table_nilais` (`id`, `id_user`, `benar`, `salah`, `kosong`, `score`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 5, '20', '13', '19', '10', 'LULUS', '2021-01-11 00:16:22', '2021-01-11 00:16:22'),
(2, 4, '15', '20', '10', '11', 'TIDAK LULUS', '2021-01-11 00:16:22', '2021-01-11 00:16:22'),
(3, 4, '18', '15', '19', '16', 'LULUS', '2021-01-11 00:16:22', '2021-01-11 00:16:22'),
(4, 2, '10', '15', '12', '14', 'TIDAK LULUS', '2021-01-11 00:16:22', '2021-01-11 00:16:22'),
(5, 6, '15', '13', '20', '19', 'LULUS', '2021-01-11 00:16:22', '2021-01-11 00:16:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pengaturans`
--

CREATE TABLE `table_pengaturans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ujian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peraturan_ujian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_pengaturans`
--

INSERT INTO `table_pengaturans` (`id`, `nama_ujian`, `waktu`, `nilai_min`, `peraturan_ujian`, `created_at`, `updated_at`) VALUES
(1, 'Bahasa Inggris', '60', '20', 'Tidak boleh mencoret', '2021-01-11 00:16:21', '2021-01-22 01:09:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_soals`
--

CREATE TABLE `table_soals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_a` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_b` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_c` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban_d` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `knc_jawaban` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_soals`
--

INSERT INTO `table_soals` (`id`, `soal`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `knc_jawaban`, `created_at`, `updated_at`) VALUES
(1, 'Sedrick Marquardt', 'Dr. Wendell Altenwerth', 'Zander Davis', 'Mr. Eldred Jaskolski', 'Prof. Catharine Bayer', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(2, 'Miss Felicia Stokes', 'Hertha Witting DDS', 'Dr. Bobby Monahan', 'Lexie Treutel', 'Lafayette Dickens', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(3, 'Matt Kohler', 'Mae Ferry I', 'Jennings Waters', 'Mr. Nicklaus Brown MD', 'Elisa Lehner', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(4, 'Laurianne Herzog', 'Fredy Nikolaus III', 'Ernest Koch', 'Alanis Wolff', 'Berenice Ryan', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(5, 'Christine Wisozk', 'Kaci Streich', 'Miss Florence Schuppe', 'Rex Pagac', 'Era Daniel', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(6, 'Heidi Considine III', 'Laron Gusikowski PhD', 'Alia Altenwerth', 'Dr. Lindsey Hickle', 'Jordy Emard', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(7, 'Roberta Senger', 'Annabell McClure', 'Eloisa West', 'Kylie Dooley', 'Austen Schmidt', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(8, 'Reilly Dach', 'Alexandrea Rosenbaum', 'Dedric Kemmer DVM', 'Shanie Schoen II', 'Felicita Schroeder', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(9, 'Janick Boyle', 'Elena Price DVM', 'Assunta Bode MD', 'Martin Franecki V', 'Prof. Kyra Kertzmann', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(10, 'Dr. Javier Kiehn', 'Vince Graham', 'Markus Quitzon', 'Ophelia Murphy Sr.', 'Cindy West', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(11, 'Granville Willms II', 'Xzavier Carter', 'Kassandra Bailey', 'Francisco Jakubowski MD', 'Xzavier Windler', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(12, 'Justine Hudson', 'Tremayne Kovacek', 'Jennifer Schuppe', 'Scottie Jakubowski DDS', 'Summer Okuneva', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(13, 'Caesar Lindgren MD', 'Haven Russel', 'Bridget Predovic I', 'Dr. Cleveland Howe IV', 'Domenica Yundt', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(14, 'Cayla Schinner II', 'Samara Altenwerth I', 'Lennie Bradtke', 'Haylie Huels', 'Lon Schoen', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(15, 'Maudie Moore', 'Brody Schuster', 'Mr. Eladio Abbott Jr.', 'Kayleigh Schmidt', 'Dr. Maci Bernhard I', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(16, 'Leila Kutch', 'Elva Armstrong', 'Michale Mayert', 'Dr. Brannon Pacocha', 'Brent Cruickshank III', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(17, 'Trevor Bernier', 'Mr. Darion Cremin', 'Camille Reichel', 'Prof. Mohammed West', 'Dr. Isabella Kuphal V', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(18, 'Makenzie Jakubowski', 'Jeanie Abernathy', 'Prof. Maude Walter', 'Taya Swift', 'Ronaldo Breitenberg DVM', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(19, 'Gregory Smith V', 'Frederick Quigley', 'Geovany Veum', 'Freida Terry III', 'Werner Bode', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(20, 'Miss Brandyn Kuhlman', 'Larissa Rodriguez', 'Mr. Geo Bechtelar', 'Ms. Savanah Doyle', 'Ericka Stroman', 'b', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(22, 'data baru', 'jerapah_edit', 'kambing_edit', 'sapi_edit', 'kuda_edit', 'c', '2021-01-22 03:29:41', '2021-01-22 04:09:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `jenis_kelamin` enum('Laki-Laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT 'Laki-Laki',
  `status` enum('AKTIF','TIDAK-AKTIF') COLLATE utf8mb4_unicode_ci DEFAULT 'AKTIF',
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp_ortu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `is_Admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `android_id`, `kelas`, `nik`, `jenis_kelamin`, `status`, `alamat`, `no_hp_ortu`, `is_Admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Aida O\'Hara', 'qjakubowski@example.net', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a1', '2', '4', 'Laki-Laki', 'AKTIF', '25611 Curtis Field Apt. 986\nO\'Connerton, TN 15738-8325', '089638889862', 0, 'ruE4YVUhtT', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(2, 'Prof. Leatha Murray', 'ruby.heidenreich@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a2', '2', '6', 'Laki-Laki', 'AKTIF', '2437 Trinity Shore\nLake Leon, CO 05901', '089638889862', 0, '5VXaMgZMne', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(3, 'Gus Wilderman V', 'stamm.erich@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a3', '2', '4', 'Laki-Laki', 'AKTIF', '4113 Kiehn Trace\nNew Allanhaven, OH 72279', '089638889862', 0, 'yNrxhEpamh', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(4, 'Christian Konopelski', 'pbeer@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a4', '3', '4', 'Laki-Laki', 'AKTIF', '85309 Ignacio Crossing\nPort Rosalindberg, NE 01576', '089638889862', 0, '86BOxCENkw', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(5, 'Dr. Jack O\'Connell MD', 'ajohnston@example.net', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a5', '3', '9', 'Laki-Laki', 'AKTIF', '68639 Lafayette Alley Apt. 331\nWest Eliezer, MS 47460-9012', '089638889862', 0, 'DFzUudETz6', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(6, 'Braden Grady I', 'meda.zemlak@example.com', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a6', '2', '1', 'Laki-Laki', 'AKTIF', '833 Niko Station Apt. 392\nSchimmelburgh, OH 64731-2534', '089638889862', 0, 'eB1xSpPTlX', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(7, 'Bernardo Padberg PhD', 'sglover@example.net', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a7', '3', '8', 'Laki-Laki', 'AKTIF', '89604 Luz Inlet\nSouth Pinkieland, RI 69620', '089638889862', 0, 'X0jK1frbWL', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(8, 'Michael Miller', 'gwen82@example.net', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a8', '1', '7', 'Laki-Laki', 'AKTIF', '37611 Laisha Hill\nDejuanchester, MS 83187', '089638889862', 0, '9oAi5wE3FB', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(9, 'Hermann Cassin', 'ward.jamaal@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a9', '3', '9', 'Laki-Laki', 'AKTIF', '522 Christiansen Plains\nSouth Allen, MA 79093', '089638889862', 0, 'KUu5tyBjBL', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(10, 'Jovan Larkin', 'neal23@example.com', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a10', '1', '5', 'Laki-Laki', 'AKTIF', '1392 Collier Ramp Apt. 654\nEast Bryon, UT 68385-9862', '089638889862', 0, 'Elwd3whXOm', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(11, 'Destini Mayert', 'leffler.leonie@example.com', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a11', '1', '2', 'Laki-Laki', 'AKTIF', '5559 Kayden Crescent\nNorth Nikitaborough, NM 19688', '089638889862', 0, 'x1KzNzkR4l', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(12, 'Abbigail Wiegand DVM', 'okon.josefa@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a12', '3', '8', 'Laki-Laki', 'AKTIF', '831 Pollich Junction Apt. 708\nRusselhaven, WA 11533-8550', '089638889862', 0, 'xSjUrln7Bb', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(13, 'Georgiana Buckridge', 'glover.van@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a13', '3', '3', 'Laki-Laki', 'AKTIF', '41426 Edgar Square\nEast Alisha, CA 49195-3456', '089638889862', 0, 'ATTG66fiER', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(14, 'Forrest Kassulke', 'vergie.rohan@example.com', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a14', '3', '6', 'Laki-Laki', 'AKTIF', '95498 Powlowski Isle Apt. 328\nEast Virginieport, NE 11977', '089638889862', 0, 'ilZdEn1LzL', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(15, 'Santiago Wintheiser III', 'guadalupe.wisoky@example.net', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a15', '1', '9', 'Laki-Laki', 'AKTIF', '88215 Lauryn Glens Apt. 668\nZulaufport, NY 16548-6681', '089638889862', 0, '9RQYQnViS9', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(16, 'Luisa Macejkovic', 'strosin.marquise@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a16', '1', '5', 'Laki-Laki', 'AKTIF', '92068 Austyn Unions\nEast Bridget, SD 21529-5061', '089638889862', 0, 'PmcWkVetzF', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(17, 'Miss Kitty Bartell MD', 'terry.nannie@example.com', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a17', '3', '1', 'Laki-Laki', 'AKTIF', '4004 Mariam Greens Apt. 190\nKulastown, WY 90212-8274', '089638889862', 0, '259Vc3kVPW', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(18, 'Miss Sarah Barrows', 'zborer@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a18', '3', '3', 'Laki-Laki', 'AKTIF', '250 Lacey Burg Suite 337\nNorth Blaze, DE 72405-4629', '089638889862', 0, '3btus5Z6ft', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(19, 'Missouri Kerluke V', 'abagail11@example.org', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a19', '3', '8', 'Laki-Laki', 'AKTIF', '32307 Green Flats\nBettyestad, FL 62437', '089638889862', 0, 'zEu2q9PrLM', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(20, 'Florine Haag', 'lang.bettie@example.net', '2021-01-11 00:16:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a20', '3', '8', 'Laki-Laki', 'AKTIF', '43004 Pfeffer View\nSouth Santa, PA 56157-8428', '089638889862', 0, 'qp6d9EEw4q', '2021-01-11 00:16:21', '2021-01-11 00:16:21'),
(21, 'seno', 'senoagung27@gmail.com', NULL, '$2y$10$c/tQOjfoWytBM2dBgczmEOjBQz09gvLTMmiNo3yPPD4uKThgek12m', 'a21', '3', '29383921', 'Laki-Laki', 'AKTIF', 'Surabaya', '0812347362738', 0, '0p3FOJFRTB6BqSVodAq1lPLBtTHVGJrWsYHbwl7AqQlTjBbnvfuXR1lJ5ZUV', '2021-01-11 21:00:38', '2021-01-11 21:00:38'),
(22, 'Seno Agung Pradityo', 'senoagung1989@gmail.com', NULL, '$2y$10$MOqY5gmr.eY0v/K69VgZqOJNI/Hm/K.yBg66U4r/cljw1rK1C.q8q', 'text', 'text', 'text', 'Laki-Laki', 'AKTIF', NULL, 'text', 0, '4XbYrZPSJFMe7dXthKyI2jXsC26V96IBLR9WOWdm8opaGo4aAlxQ6XyRKxpz', '2021-01-21 02:29:31', '2021-01-21 02:29:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `table_nilais`
--
ALTER TABLE `table_nilais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_nilais_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `table_pengaturans`
--
ALTER TABLE `table_pengaturans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_soals`
--
ALTER TABLE `table_soals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `table_nilais`
--
ALTER TABLE `table_nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `table_pengaturans`
--
ALTER TABLE `table_pengaturans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `table_soals`
--
ALTER TABLE `table_soals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_nilais`
--
ALTER TABLE `table_nilais`
  ADD CONSTRAINT `table_nilais_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
