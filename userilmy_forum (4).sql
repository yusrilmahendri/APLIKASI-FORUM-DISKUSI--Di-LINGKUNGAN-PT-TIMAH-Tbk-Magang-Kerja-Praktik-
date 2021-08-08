-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Jul 2021 pada 23.40
-- Versi server: 10.2.39-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userilmy_forum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusi`
--

CREATE TABLE `diskusi` (
  `id` int(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `diskusi`
--

INSERT INTO `diskusi` (`id`, `judul`, `konten`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'SDM PT TIMAH Tbk', 'menurut kalian bagaiaman sdm sekitar lingkungan PT TIMAH Tbk ini ?', 9, '2021-04-01 10:17:36', '2021-04-01 10:17:36'),
(6, 'manajemen projek', 'gimana proses manajemen projek disaat para karyawan PT TIMAH Tbk dalam membuat suatu aplikasi ?', 10, '2021-04-01 10:26:25', '2021-04-01 10:26:25'),
(17, 'Demo pada ttanggal 6 april 2021', 'Tepat pada tgl 6 april 2021 terdapat demo dibgerbangbpt timah tbk mohon informasi selanjutnya', 26, '2021-04-07 01:36:09', '2021-04-07 01:36:09'),
(22, 'Harga sawit melonjak tinggi', 'Hutan banyak di buka untuk di buat karena dibuatnkebun sawit', 27, '2021-04-07 08:34:35', '2021-04-07 08:34:35'),
(23, 'Jadwal WFH', 'Di infokan dikarenakan covid ini, proses ngantor 1 minggu WFH dan 1 minggu kerja.', 30, '2021-04-21 14:47:40', '2021-04-21 14:47:40'),
(26, 'covid 19', 'kapan latihan diadakan kembali ?', 48, '2021-07-07 11:53:59', '2021-07-07 11:53:59'),
(27, 'Tambah sesuatu', 'Konten', 49, '2021-07-08 06:30:24', '2021-07-08 06:30:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(50) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('male','pemale','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `user_id`, `nama`, `password`, `email`, `jenis_kelamin`, `avatar`, `created_at`, `updated_at`) VALUES
(144, 4, 'Elvira wanda akasse', 'pangkalpinang', 'elviraxiaomi2018@gmail.com', 'pemale', 'IMG-20210401-WA0054.jpeg', '2021-04-01 03:39:18', '2021-04-01 03:59:48'),
(145, 5, 'Ariff', 'ariff', 'ariffajarfeb@gmail.com', 'male', NULL, '2021-04-01 03:40:37', '2021-04-01 03:40:37'),
(146, 6, 'Agus Setiawan', 'agus123', 'agus17@gmail.com', 'male', NULL, '2021-04-01 04:25:13', '2021-04-01 04:25:13'),
(148, 8, 'Rahman', '12345678', 'rahman@gmail.com', 'male', '20210328_154227.jpg', '2021-04-01 09:38:37', '2021-04-01 09:41:35'),
(149, 9, 'rohim', '12345678', 'rohim@gmail.com', 'male', 'WIN_20200401_23_05_12_Pro.jpg', '2021-04-01 10:13:26', '2021-04-01 10:15:23'),
(150, 10, 'muhammad irfai', '12345678', 'irfai.fai@gmail.com', 'male', NULL, '2021-04-01 10:24:42', '2021-04-01 10:25:10'),
(151, 11, 'ahmad', '12345678', 'ahmad.ahmad@gmail.com', 'male', 'yusril.PNG', '2021-04-01 10:33:15', '2021-04-01 10:35:51'),
(152, 12, 'sebriyanto', '12345678', 'sebri@gmail.com', 'male', 'yusril.JPG', '2021-04-01 10:56:33', '2021-04-01 11:02:35'),
(153, 13, 'unyuu', 'unyuuu1213', 'unyuu1213@gmail.com', 'pemale', NULL, '2021-04-01 11:20:31', '2021-04-01 11:20:31'),
(154, 14, 'Mahendri', '12345678', 'mahendri@gmail.com', 'male', 'IMG_20210316_122301_326.jpg', '2021-04-01 11:20:40', '2021-04-01 11:25:02'),
(155, 15, 'Annisa', '12345678', 'anisa@gmail.com', 'male', NULL, '2021-04-01 11:32:36', '2021-04-01 11:32:36'),
(156, 16, 'Nisa', '12345678', 'nisa@gmail.com', 'pemale', '20210328_154245.jpg', '2021-04-01 11:33:27', '2021-04-01 11:46:14'),
(157, 17, 'Popol', '123', 'popol@gmail.com', 'male', '16173394093977070899.jpg', '2021-04-01 21:54:46', '2021-04-01 21:57:35'),
(158, 18, 'Fadel', '1061911', '1061911@gmail.com', 'male', NULL, '2021-04-01 22:26:56', '2021-04-01 22:26:56'),
(159, 19, 'ahmad fajar', '12345678', 'ahmad23@gmail.com', 'male', NULL, '2021-04-02 00:52:50', '2021-04-02 00:52:50'),
(160, 20, 'Aji', '123', 'ajitri@gmail.com', 'male', NULL, '2021-04-03 02:22:52', '2021-04-07 23:44:32'),
(161, 21, 'Tia', '123', 'tia23@gmail.com', 'pemale', '20210328_164801.jpg', '2021-04-03 02:24:08', '2021-04-12 16:35:42'),
(162, 22, 'reza', '123', 'reza@gmail.com', 'male', 'IMG_20201106_210612.jpg', '2021-04-03 05:17:01', '2021-04-03 05:20:59'),
(163, 23, 'Abdul', '123', 'abdullah@gmail.com', 'male', '/tmp/php01mRbJ', '2021-04-03 07:08:11', '2021-04-03 07:10:18'),
(164, 24, 'salsa sabilah', '123', 'salsa@gmail.com', 'pemale', 'DSC00919.JPG', '2021-04-04 06:12:51', '2021-04-04 06:21:09'),
(165, 25, 'nia', '123', 'nia231@gmail.com', 'pemale', '20190908_081523.jpg', '2021-04-05 23:08:29', '2021-04-05 23:11:20'),
(166, 26, 'Della', '123', 'della23@gmail.com', 'pemale', NULL, '2021-04-07 01:27:53', '2021-04-07 08:12:53'),
(167, 27, 'Yinyin', '1234', 'rizall12@gmail.com', 'pemale', NULL, '2021-04-07 08:24:43', '2021-04-07 08:24:43'),
(168, 28, 'Sena valdin', 'persipas11', 'senavaldin20@gmail.com', 'male', 'VID-20210414-WA0015.mp4', '2021-04-15 09:04:24', '2021-04-15 09:09:24'),
(169, 29, 'wijaya saputra', '123456', 'jaya@gmail.com', 'male', NULL, '2021-04-21 14:44:17', '2021-04-21 14:44:17'),
(170, 30, 'aldi pranata saputra', '12345678', 'aldi@gmail.com', 'male', '20190908_063807.jpg', '2021-04-21 14:46:00', '2021-07-07 11:57:01'),
(172, 32, 'aldi pranata', '123', 'aldi23@gmail.com', 'male', 'yusril.PNG', '2021-04-25 22:01:45', '2021-04-25 22:05:17'),
(174, 34, 'dwi normawati', '1234', 'dwi.normawati@tif.uad.ac.id', 'pemale', NULL, '2021-04-25 22:16:22', '2021-04-25 22:16:22'),
(175, 35, 'kholid', '123', 'kholid@gmail.com', 'male', NULL, '2021-04-25 22:37:39', '2021-04-25 22:37:39'),
(176, 36, 'abc', 'abc', 'sgfdgf@gmail.com', 'pemale', NULL, '2021-04-25 22:39:59', '2021-04-25 22:39:59'),
(177, 37, 'adlinyo', '123', 'aldinyo@gmail.com', 'male', NULL, '2021-05-02 10:09:34', '2021-05-02 10:09:34'),
(178, 38, 'aldi', '123', 'fadels@gmail.com', 'male', NULL, '2021-05-02 10:10:19', '2021-05-02 10:10:19'),
(179, 40, 'bagos', '12345678', 'bagos@gmail.com', 'male', NULL, '2021-05-08 03:14:22', '2021-05-08 03:14:22'),
(180, 41, 'audrey', '123', 'audrey@gmail.com', 'pemale', NULL, '2021-05-09 06:16:15', '2021-05-09 06:16:15'),
(182, 43, 'aldi saputra', '12345678', 'saputra@gmail.com', 'male', 'yusril.PNG', '2021-06-13 21:36:39', '2021-06-13 21:38:42'),
(183, 44, 'nurul', '12345', 'nurul@gmail.com', 'male', NULL, '2021-06-18 10:18:15', '2021-06-18 10:20:06'),
(184, 45, 'yusril', '123', 'yusrilmahendri839@gmail.com', 'male', NULL, '2021-06-28 00:13:25', '2021-06-28 00:13:25'),
(185, 46, 'arif', '123', 'arif@gmail.com', 'male', NULL, '2021-06-28 00:14:33', '2021-06-28 00:14:33'),
(186, 47, 'Shelwan Riaudy U', 'Kompol123', 'shelwan1800018395@webmail.uad.ac.id', 'male', NULL, '2021-07-06 23:58:26', '2021-07-06 23:58:26'),
(187, 48, 'milen', '123', 'milen@gmail.com', 'male', '20190908_053932.jpg', '2021-07-07 11:52:48', '2021-07-07 11:55:04'),
(188, 49, 'Shelwan', '123123', 'selwanriaudyu48@gmail.com', 'male', NULL, '2021-07-08 06:29:47', '2021-07-08 06:29:47'),
(189, 50, 'ade', '123456', 'adekurnia29102000@gmail.com', 'male', NULL, '2021-07-08 07:11:06', '2021-07-08 07:11:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(50) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(50) NOT NULL,
  `diskusi_id` int(50) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `konten`, `user_id`, `diskusi_id`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Ok', 5, 1, 0, '2021-04-01 03:41:24', '2021-04-01 03:41:24'),
(2, 'Ada yg bilang datar tetapi menurut saya pribadi bulat mas', 1, 3, 0, '2021-04-01 05:41:00', '2021-04-01 05:41:00'),
(3, 'Maksudnya mas ? Mau daftar kerja di bidang apa atau gimana ?', 8, 2, 0, '2021-04-01 09:44:18', '2021-04-01 09:44:18'),
(4, 'mungkin maksudnya lagi ingin daftar kerja dan jika kalian ada informasi hal tersebut maka kasih tahu', 9, 2, 3, '2021-04-01 10:14:52', '2021-04-01 10:14:52'),
(5, 'untuk saat ini dapat dikatakan aman', 9, 4, 0, '2021-04-01 10:16:25', '2021-04-01 10:16:25'),
(6, 'bisa jadi temanya lagi cari lowongan pekerjaan mas', 10, 2, 3, '2021-04-01 10:27:53', '2021-04-01 10:27:53'),
(7, 'tolong lebih jelas dalam menanyakan sesuatu', 10, 2, 0, '2021-04-01 10:28:18', '2021-04-01 10:28:18'),
(8, 'tertuntuk saat ini pihak sdm masih membutuhkan sdm yang telah sesuai apa yang dibutuhkan', 10, 5, 0, '2021-04-01 10:29:31', '2021-04-01 10:29:31'),
(9, 'bisa jadi peluang sdm yang dibutuhkan saat ini pada divisi akuntasi', 11, 5, 8, '2021-04-01 10:34:14', '2021-04-01 10:34:14'),
(10, 'tergantung kebutuhan dan goal nya mas dan ini saya selaku dari perwakilan divisi it', 11, 6, 0, '2021-04-01 10:52:16', '2021-04-01 10:52:16'),
(11, 'nah setuju', 11, 2, 7, '2021-04-01 10:52:38', '2021-04-01 10:52:38'),
(12, 'mungkin maksudnya lagi ingin daftar kerja dan jika kalian ada informasi hal tersebut maka kasih tahu', 11, 2, 3, '2021-04-01 10:53:20', '2021-04-01 10:53:20'),
(13, 'UP', 1, 7, 0, '2021-04-01 10:55:07', '2021-04-01 10:55:07'),
(14, 'Coba tanyakan lansung sama pihak sdm mas', 1, 8, 0, '2021-04-01 10:59:54', '2021-04-01 10:59:54'),
(15, 'Mau gk mau kita sebagai regenerasinya harus bisa ikut serta bersaing di era skrng dan menyesuaikan diri seiring perkembanhan zaman', 16, 11, 0, '2021-04-01 11:34:32', '2021-04-01 11:34:32'),
(16, 'Mungkin sebrlum puasa mas', 1, 13, 0, '2021-04-01 22:15:01', '2021-04-01 22:15:01'),
(17, 'setuju nisa, cuma aku mau tambahin sedikit kalo susu beruang yang asli ada badaknya', 18, 11, 15, '2021-04-01 22:28:03', '2021-04-01 22:28:03'),
(18, 'siip', 18, 6, 10, '2021-04-01 22:29:04', '2021-04-01 22:29:04'),
(19, 'hello', 18, 10, 0, '2021-04-01 22:29:51', '2021-04-01 22:29:51'),
(20, 'Iya mas, info lanjut tanyakan sama pihak sdm', 16, 10, 19, '2021-04-01 22:30:22', '2021-04-01 22:30:22'),
(21, 'Coba lihatbdi website informasi nya mas', 21, 10, 0, '2021-04-03 02:25:24', '2021-04-03 02:25:24'),
(22, 'Merupakanbdari bumn yg pada saat ini bdkrrja denga mindid', 21, 12, 0, '2021-04-03 02:43:30', '2021-04-03 02:43:30'),
(23, 'Up', 21, 5, 8, '2021-04-03 02:53:50', '2021-04-03 02:53:50'),
(24, 'Siap pak', 22, 14, 0, '2021-04-03 05:22:38', '2021-04-03 05:22:38'),
(25, 'Info uodatenya boasaya ada di sosmed nya, kalau gk salah di instagram nya ada', 21, 15, 0, '2021-04-03 07:06:47', '2021-04-03 07:06:47'),
(26, 'up', 24, 15, 25, '2021-04-04 06:14:58', '2021-04-04 06:14:58'),
(27, 'tergantung pada mindset nya masing2', 24, 11, 0, '2021-04-04 06:16:28', '2021-04-04 06:16:28'),
(28, 'mungkin saja sewaktu kuliah mahasiswanya tidak serius hanya maksudnya tidak memperdalam skil', 1, 16, 0, '2021-04-04 18:14:26', '2021-04-04 18:14:26'),
(29, 'Info di web ptmiah.co.id', 26, 15, 0, '2021-04-07 01:37:47', '2021-04-07 01:37:47'),
(30, 'jika tidak ada disitu  mohon sabar menunggu informasi updatenya, mungkin saja belum ter-update', 26, 15, 25, '2021-04-07 09:03:09', '2021-04-07 09:03:09'),
(31, 'Ya tetapi tidak merata dikarenakan ada beberapa daerah yang tidak bisa cocok tanam sawit', 21, 22, 0, '2021-04-07 11:13:11', '2021-04-07 11:13:11'),
(32, 'Itu demo dikarenakan harga timah nurun', 21, 17, 0, '2021-04-07 11:15:53', '2021-04-07 11:15:53'),
(33, 'Harga sawit berapa sekarang?', 28, 22, 31, '2021-04-15 09:07:34', '2021-04-15 09:07:34'),
(34, 'Kurang lebih begitu', 21, 22, 31, '2021-04-21 07:29:11', '2021-04-21 07:29:11'),
(35, 'Kyknya lebih baik dikarenakan bisa membantu para masyarakat dalam mencari uang untuk kebutuhan fungsional maupun non fungsional', 30, 22, 0, '2021-04-21 14:49:52', '2021-04-21 14:49:52'),
(36, 'info lebih detail nya ada di web info pt timah tbk', 32, 24, 0, '2021-04-25 22:03:58', '2021-04-25 22:03:58'),
(37, 'mungkin info detail di web informasi pt timah tbk', 32, 17, 32, '2021-04-25 22:33:26', '2021-04-25 22:33:26'),
(38, 'up', 32, 17, 0, '2021-04-25 22:34:07', '2021-04-25 22:34:07'),
(39, 'up', 32, 17, 38, '2021-04-25 22:34:27', '2021-04-25 22:34:27'),
(40, 'up', 32, 17, 32, '2021-04-25 22:35:31', '2021-04-25 22:35:31'),
(41, 'tes', 34, 23, 0, '2021-04-25 22:36:30', '2021-04-25 22:36:30'),
(42, 'cek', 34, 17, 38, '2021-04-25 22:37:20', '2021-04-25 22:37:20'),
(43, 'tes', 34, 17, 32, '2021-04-25 22:37:30', '2021-04-25 22:37:30'),
(44, 'baik terimaksih', 40, 23, 0, '2021-05-08 03:15:24', '2021-05-08 03:15:24'),
(45, 'baik terimakasih', 43, 23, 0, '2021-06-13 21:57:25', '2021-06-13 21:57:25'),
(46, 'up', 43, 25, 0, '2021-06-13 22:10:03', '2021-06-13 22:10:03'),
(47, 'up', 43, 22, 35, '2021-06-13 22:10:39', '2021-06-13 22:10:39'),
(48, 'Mantab', 47, 25, 46, '2021-07-06 23:58:46', '2021-07-06 23:58:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `pesan`, `updated_at`, `created_at`) VALUES
(1, 'Yusril Mahendri', 'yusrilmahendri839@gmail.com', 'Aplikasi keren habis dan sangat membantu', '2021-04-01 09:37:26', '2021-04-01 09:37:26'),
(2, 'dwi normawati', 'dwi.normawati@tif.uad.ac.id', 'testestes', '2021-04-25 22:39:04', '2021-04-25 22:39:04'),
(3, 'Kennethliz', 'no-replymal@gmail.com', 'Hello!  useril.my.id \r\n \r\nDid you know that it is possible to send message fully legal? \r\nWe providing a new unique way of sending business proposal through contact forms. Such forms are located on many sites. \r\nWhen such business offers are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nalso, messages sent through contact Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\n \r\nWe only use chat.', '2021-05-05 19:48:59', '2021-05-05 19:48:59'),
(4, 'aldi', 'aldi@gmail.com', 'saya lupa password', '2021-05-08 03:13:37', '2021-05-08 03:13:37'),
(5, 'Mike Page', 'see-email-in-message@monkeydigital.co', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your useril.my.id website? \r\nHaving a high DA score, always helps \r\n \r\nGet your useril.my.id to have a DA between 50 to 60 points in Moz with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-DR50-UR70/ \r\n \r\n \r\nthank you \r\nMike Page\r\n \r\nsupport@monkeydigital.co', '2021-05-12 12:57:00', '2021-05-12 12:57:00'),
(6, 'Mazlan Selvi', 'no-replyPrisee@gmail.com', 'Dear Friend, \r\n \r\nMy names are Mr. Mezlan Selvi, a lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$13.5 Million left behind by my late client before his tragic death but no response from you. \r\n \r\nHowever, I am contacting you once again with strong believe that you will work /partner with me to execute this business transaction in good faith. Please if you are interested in proceeding with me, kindly respond to me via my private email mselvi@ponnusamylawassociates-my.com for more detailed information. \r\n \r\nAs a matter of fact, this transaction is 100% risk free and I look forward to your acknowledgement. \r\n \r\nRegards, \r\nMr. Mazlan Selvi \r\nEmail: mselvi@ponnusamylawassociates-my.com', '2021-05-13 02:57:44', '2021-05-13 02:57:44'),
(7, '<h1>rian dwi cahyadi<h1/>', 'ajwdkwabd@gmail.com', 'lkdnajwdkajwd', '2021-05-15 07:43:26', '2021-05-15 07:43:26'),
(8, 'Mike Kendal', 'no-reply@google.com', 'Hi \r\n \r\nI have just took a look on your SEO for  useril.my.id for its SEO metrics and saw that your website could use a push. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Kendal\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-05-15 11:17:34', '2021-05-15 11:17:34'),
(9, 'Mike Wallace', 'no-replyLop@gmail.com', 'Howdy \r\n \r\nI have just took an in depth look on your  useril.my.id for the Local ranking keywords and seen that your website could use a boost. \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart increasing your local visibility with us, today! \r\n \r\nregards \r\nMike Wallace\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net', '2021-05-16 14:17:20', '2021-05-16 14:17:20'),
(10, 'Kalra Anil', 'kalra.anil@wealthfunders.org', 'Hello, \r\n \r\nI am working directly with a private family portfolio that can provide funding for credible clients with feasible projects. Currently, we have investment funds for viable projects. \r\n \r\nThey are interested in the following: Hospitals, Green energy. Power projects, Agriculture and Real Estate. \r\nThey can also partner with your company on other projects of value. The interest rate and tenure are fantastic. Your response is most anticipated if this is of interest to you. \r\n \r\nKind regards \r\nKalra Anil \r\n \r\nFinancial Consultant', '2021-05-17 16:58:29', '2021-05-17 16:58:29'),
(11, 'Sambo Dasuki', 'mmzxxz288@gmail.com', 'Dear Partner; \r\n \r\nI came across your email contact on Database; Where i was searching for a competent Partner who can handle a lucrative business for me as trustee and manager. I anticipate to read from you soon so I can provide you with more details. \r\n \r\nYours Sincerely, \r\nAlh. Sambo Dasuki \r\nmmzxxz288@gmail.com', '2021-05-19 08:58:26', '2021-05-19 08:58:26'),
(12, 'Yahoo', 'press@yahoo.com', 'Most profitable cryptocurrency miners has been released : \r\nDBT Miner: $7,500 (Bitcoin), $13,000 (Litecoin), $13,000 (Ethereum), and $15,000 (Monero) \r\n \r\nGBT Miner: $22,500 (Bitcoin), $39,000 (Litecoin), $37,000 (Ethereum), and $45,000 (Monero) \r\nRead more here : \r\nhttps://www.yahoo.com/now/bitwats-release-most-profitable-asic-195600764.html', '2021-05-20 15:52:22', '2021-05-20 15:52:22'),
(13, 'Mike Bootman', 'no-replyLop@gmail.com', 'Hello \r\n \r\nI have just took an in depth look on your  useril.my.id for its Local SEO Trend and seen that your website could use a boost. \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nStart improving your local visibility with us, today! \r\n \r\nregards \r\nMike Bootman\r\n \r\nSpeed SEO Digital Agency \r\nsupport@speed-seo.net', '2021-05-23 22:57:55', '2021-05-23 22:57:55'),
(14, 'Rajiv Michael', 'rajiindian3@gmail.com', 'Hello Dear, \r\n \r\nI am working directly with a private family portfolio that can provide funding for credible clients with feasible projects. Currently, we have investment funds for viable projects. \r\n \r\nThey are interested in the following: Institution, Library, Hospitals, Green energy, \r\nPower projects, Agriculture and Real Estate. They can also partner with your company on other projects of value. The interest rate and tenure are fantastic. \r\n \r\nYour response is most anticipated if this is of interest to you. Reach me on email: financial@eurocleargroups.email or rajiindian3@gmail.com \r\n \r\n \r\nKind regards, \r\n \r\nRajiv Michael \r\nFinancial Consultant \r\nWhatsApp: +15183802182 \r\nTelegram@ +12092482370 \r\nEuroclear Groups \r\nfinancial@eurocleargroups.email \r\nUrl: http://euroclear.com', '2021-05-25 16:45:22', '2021-05-25 16:45:22'),
(15, 'Mohammed AL-Kuwari', 'investkuwari@email-checker.us', 'Greetings. \r\n \r\nI am looking to work with you to engage in profit oriented ventures in your country. \r\nI have the directive of Sheikh Mubarak AL-Thani to source for a partner abroad who can accommodate 350M USD and 150M USD for Investment. The sum is derived from a Supply Contract by a foreign company with Qatar Petroleum Company in Doha - Qatar. \r\n \r\nWe shall reassign the necessary documents to reflect your name and also ensure payment is done by Qatar Petroleum Company. \r\n \r\nI guarantee we shall implement this transaction under a legitimate arrangement without breaking the law. \r\n \r\nMore details will follow upon your reply to mohammedalkuwariinvestment01@gmail.com \r\n \r\nRegards, \r\n \r\nDr.Mohammed AL-Kuwari \r\nReply To: mohammedalkuwariinvestment01@gmail.com \r\nWhatsapp: +971554845309', '2021-05-25 18:10:42', '2021-05-25 18:10:42'),
(16, 'Mike Cooper', 'no-reply@google.com', 'Howdy \r\n \r\nI have just checked  useril.my.id for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our services below, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart enhancing your sales and leads with us, today! \r\n \r\nregards \r\nMike Cooper\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2021-05-27 17:17:06', '2021-05-27 17:17:06'),
(17, 'Hilkoret Investments', 'admin@hilkorets.buzz', 'Hi, I hope this message meets you well? \r\n \r\nI want to introduce you to Hilkoret.com, a Norwegian Bitcoin investment platform where investors can deposit money and earn 3%, 3.5%, or 4% profit daily for 5days. \r\n \r\nMake a minimum deposit of $100 and start earning your Profits on your deposit per day repeat circle and withdraw your profit after 5Days \r\n \r\nNOTE: Both deposits and withdrawals are done through a Bitcoin wallet. \r\n \r\nIf you are interested in this profitable investment venture, please contact us via WhatsApp +4915212077048 for full details or visit https://hilkoret.com \r\n \r\n \r\nHilkoret Investments \r\nWhatsApp +4915212077048 \r\nadmin@hilkoret.com', '2021-05-28 10:55:51', '2021-05-28 10:55:51'),
(18, 'Yusril Mahendri', 'yusrilmahendri839@gmail.com', 'hallo aplikasinnya sangat keren', '2021-06-13 21:35:04', '2021-06-13 21:35:04'),
(19, 'andri', 'andri125@gmail.com', 'aplikasi keren sekalai', '2021-06-13 21:55:27', '2021-06-13 21:55:27'),
(20, 'James Lambert', 'alee39184@gmail.com', 'Good day \r\n \r\nI`m seeking a reputable company/individual to partner with in a manner that would benefit both parties. The project is worth $24 Million so if interested, kindly contact me through this email jameslambert@lambert-james.com for clarification. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nJames Lambert', '2021-06-15 17:18:56', '2021-06-15 17:18:56'),
(21, 'Ella Wetzel', 'wetzel.ella@yahoo.com', 'Let me just say your site is amazing! It is well put together and easy to navigate which is a plus. With such a nice layout you must attract a lot of visitors. I just wanted to give you a heads up because your site inspired me to build my own. I hope everything is going great and much success in your future. Thank and have the best of day!', '2021-06-21 09:15:38', '2021-06-21 09:15:38'),
(22, 'John Saymon', 'marijaunaonlinestore@gmail.com', 'We sell Research Chemicals, Cocaine, Coca Seeds, Coca Leaves, Coca Powder, Marijuana, Weed, Cannabis, Opioids, Ecstasy Pills, Pain Relief, HGH/HCG, Nembutal Pentobarbital, Blotters, Hashish, Heroin, we can be a solution to both Hard and Soft drugs, legal and illegal drugs. \r\nhttp://www.bundesdrugsonline.com/ \r\n \r\n \r\nWe are wholesallers, suppliers, distributors, Traders of Frozen Chicken, Frozen Meat, Frozen Pork, Wine, Energy Drinks, Tea and Coffee, Soft Drinks, Mineral Water, Plastic Scrap, Sugar, Frozen Duck, Frozen Turkey, Frozen Beef, Baby Formula, Dairy Products, Chicken Eggs, Beers,Most expensive Whiskey\'s in the world, Vodka, Champagne, Face Mask, Hand Sanitizer, Gloves, A4 Copy Paper, Waste Paper, Wood, Livestock, Salted Animal Skin, Chocolate, Edible Oil \r\nhttps://haustechnik-anlagenbau.com \r\n \r\nJoin the most secret society in the world. Are you a business man or woman, Politicia, Muscian, student etc. Do you want to be Rich, Famous, Powerful and more. Join the Iluminati brotherhood cult today. \r\nhttps://originalexpressdocuments.com/iluminatic/', '2021-06-22 12:33:36', '2021-06-22 12:33:36'),
(23, 'M. Al-Kuwari', 'drmohammed@email-checker.us', 'Gulf Business Services Limited - We are a UK Based Investment and Loan Company offering Corporate and Personal Loan at 2% Interest Rate for a duration of 10 Years. \r\n \r\nWe have a Business Loan Offer for your project. We also pay 1% commission to brokers, who introduce project owners for finance or other opportunities. \r\n \r\nPlease get back to me if you are interested in more details - Reply To: drmohammedalkuwari003@gmail.com \r\n \r\n \r\nYours faithfully, \r\n \r\nMr M. Al-Kuwari \r\nGulf Business Service Limited \r\nWhatsApp:  +971554845309 \r\ndrmohammedalkuwari003@gmail.com', '2021-06-28 07:55:00', '2021-06-28 07:55:00'),
(24, 'Luis L', 'kazuko.demole@yahoo.com', 'Hey this is Luis. I lost your number but remembered your site. Need you to contact me ASAP regarding that one deal +16106539916', '2021-06-28 08:11:07', '2021-06-28 08:11:07'),
(25, 'Ashlay Hazalton', 'ashlayhazalton36145@gmail.com', 'Hi, this is Chris. \r\nWho win all online casinos by using FREE BONUS. \r\n \r\nWitch mean, I don’t really spend money in online casinos. \r\n \r\nBut I win every time, and actually, everybody can win by following my directions. \r\n \r\neven you can win! \r\n \r\nSo, if you’re the person, who can listen to someone really smart, you should just try!! \r\n \r\nThe best online casino, that I really recommend is, Vera&John. \r\nEstablished in 2010 and became best online casino in the world. \r\n \r\nThey give you free bonus when you charge more than $50. \r\nIf you charge $50, your bonus is going to be $50. \r\n \r\nIf you charge $500, you get $500 Free bonus. \r\nYou can bet up to $1000. \r\n \r\nJust try roulette, poker, black jack…any games with dealers. \r\nBecause dealers always have to make some to win and, only thing you need to do is to be chosen. \r\n \r\nDon’t ever spend your bonus at slot machines. \r\nYOU’RE GONNA LOSE YOUR MONEY!! \r\n \r\nNext time, I will let you know how to win in online casino against dealers!! \r\n \r\nDon’t forget to open your VERA&JOHN account, otherwise you’re gonna miss even more chances!! \r\n \r\n \r\n \r\nOpen Vera&John account (free) \r\nhttps://bit.ly/3wZkpco', '2021-06-28 11:45:36', '2021-06-28 11:45:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `diskusi_id` int(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `diskusi_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2021-04-01 03:40:56', '2021-04-01 03:40:56'),
(4, 6, 3, '2021-04-01 04:26:24', '2021-04-01 04:26:24'),
(6, 8, 2, '2021-04-01 09:43:21', '2021-04-01 09:43:21'),
(8, 1, 4, '2021-04-01 10:06:21', '2021-04-01 10:06:21'),
(9, 11, 6, '2021-04-01 10:52:21', '2021-04-01 10:52:21'),
(10, 1, 8, '2021-04-01 10:59:34', '2021-04-01 10:59:34'),
(11, 12, 10, '2021-04-01 11:01:26', '2021-04-01 11:01:26'),
(12, 14, 11, '2021-04-01 11:25:22', '2021-04-01 11:25:22'),
(14, 1, 11, '2021-04-01 11:31:17', '2021-04-01 11:31:17'),
(15, 16, 11, '2021-04-01 11:34:36', '2021-04-01 11:34:36'),
(16, 16, 12, '2021-04-01 11:43:35', '2021-04-01 11:43:35'),
(17, 1, 13, '2021-04-01 22:14:47', '2021-04-01 22:14:47'),
(19, 21, 14, '2021-04-03 02:41:02', '2021-04-03 02:41:02'),
(21, 21, 12, '2021-04-03 02:45:25', '2021-04-03 02:45:25'),
(22, 22, 14, '2021-04-03 05:22:15', '2021-04-03 05:22:15'),
(23, 21, 15, '2021-04-03 07:06:05', '2021-04-03 07:06:05'),
(24, 24, 16, '2021-04-04 06:14:31', '2021-04-04 06:14:31'),
(25, 26, 17, '2021-04-07 01:37:15', '2021-04-07 01:37:15'),
(27, 21, 10, '2021-04-07 11:18:35', '2021-04-07 11:18:35'),
(28, 1, 22, '2021-04-07 23:43:28', '2021-04-07 23:43:28'),
(29, 28, 22, '2021-04-15 09:07:05', '2021-04-15 09:07:05'),
(30, 21, 22, '2021-04-21 07:28:52', '2021-04-21 07:28:52'),
(31, 30, 23, '2021-04-21 14:48:05', '2021-04-21 14:48:05'),
(32, 30, 22, '2021-04-21 14:48:17', '2021-04-21 14:48:17'),
(33, 32, 24, '2021-04-25 22:03:28', '2021-04-25 22:03:28'),
(34, 40, 23, '2021-05-08 03:15:10', '2021-05-08 03:15:10'),
(35, 1, 23, '2021-05-25 19:22:55', '2021-05-25 19:22:55'),
(36, 43, 23, '2021-06-13 21:58:01', '2021-06-13 21:58:01'),
(37, 43, 25, '2021-06-13 22:09:57', '2021-06-13 22:09:57'),
(38, 1, 25, '2021-07-06 18:27:37', '2021-07-06 18:27:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'adminforum', 'adminForum@gmail.com', NULL, '$2y$10$COVZSJOys4cImsUvqJxrBOT45E..t5k.WIyLzitP0PpVRIqHcLCVK', 'p6hO2B4gtlOCBRnrPR5Y9U4AD6FpO9EPlnzAgN73JDOeEpazUlLuAcprV4xp', '2021-03-31 04:17:13', '2021-03-31 04:17:13'),
(2, 'karyawan', 'Yusril Mahendri', 'yusrilmahendri839@gmail.com', NULL, '$2y$10$cSmBotji3Och1fE11NVg7uQ7cJogLH6sSXelztVYIN2K32hDgz2OO', 'Dtc5qop7USdCtqRPhTLmh7UBryxQJKkKGubNUdA7HUWisaLumkn4NX6tbMrz', '2021-03-31 04:47:09', '2021-03-31 04:47:09'),
(3, 'karyawan', 'Yu Mahendri', 'yusrilmahendri839@gmail.com', NULL, '$2y$10$9sNg8ndWoPqDyzkzv/QPA.VcWF27j4Mr5mO.MtUt44taC8OzylIcK', '735B0UFfSfD3sjq4lIRPFppmglFHiNzjWTLwCQiItVy6dpmbI6HXC48xC4hS', '2021-04-01 03:36:52', '2021-04-01 03:36:52'),
(4, 'karyawan', 'Elvira wanda akasse', 'elviraxiaomi2018@gmail.com', NULL, '$2y$10$.i5cljV0YKZ12Y5/Y8XWk.clYC3BI.I08D.26F9PNA2BBut59fPIC', 'cRDnD3B6d3Louqir3D351k0sES1Gg8OtnN7LVJ82vbK9Zk4hbjCBJiaLFWJh', '2021-04-01 03:39:18', '2021-04-01 03:39:18'),
(5, 'karyawan', 'Ariff', 'ariffajarfeb@gmail.com', NULL, '$2y$10$dwMZMq.yy9sRewYdBjl8/umQvBzh85jaztCuhJu80DRJmEUIgr9PO', '9texW8YDqwtJNX8X9sUanUDi9AmBa5FjuUAYPk6i4dUNQ7J3NEQ6hKsU3zSe', '2021-04-01 03:40:37', '2021-04-01 03:40:37'),
(6, 'karyawan', 'Agus Setiawan', 'agus17@gmail.com', NULL, '$2y$10$ltfsbqGXnw071werLGPn9.KQKKCLhv5WEFBd9cwOegKcEgf27kR1m', 'rnHO8ZQw5E1A7TcOID6L5GNZGd6gjyfGTDugyO82XKdn2uXdssoWD2EUXyo2', '2021-04-01 04:25:13', '2021-04-01 04:25:13'),
(7, 'karyawan', 'Test', 'test@gmail.com', NULL, '$2y$10$cU90VJr7HA2tzuRrWQQYQu0m6dHKADYHO8FPkp91jkA5cdmVVAJOG', 'GdyR1mb1x2922eb14tP3IYoubCx8Xceley8DbRryLHcgbxuG4HnzyRgt0Sg0', '2021-04-01 04:26:22', '2021-04-01 04:26:22'),
(8, 'karyawan', 'Rahman@gmail.com', 'rahman@gmail.com', NULL, '$2y$10$c7tnkFPkuO9BcunngCdAhOzZsK16S6BVof9v7sK4A63kU6XpzBP2q', 'klaOV76wfGdWN2uXXxzwmW2R6FxcyyHyTxRlQtx9LtcqowIb5gX7dkBfRWOV', '2021-04-01 09:38:37', '2021-04-01 09:38:37'),
(9, 'karyawan', 'rohim', 'rohim@gmail.com', NULL, '$2y$10$RSuFyigIm1XM.1zY0yNaleF./tNAwiI3dwKZH1FQkzC0iDeHwIYQi', 'Qc0eh4871txAtpCXcSF3EqjUMH45287Ezo9l7wqIVqYL5uSjWryYAvhYCfaO', '2021-04-01 10:13:26', '2021-04-01 10:13:26'),
(10, 'karyawan', 'irfai', 'irfai.fai@gmail.com', NULL, '$2y$10$6vLfhU3iMsol29Qj8iF4IuuDIvLZz3Uma2FdF4yHPRZnJpxN3/cx2', 'rtdqoLPJLAjFKzSOQZCfprA7ZUDanB87083xrXLbRwbsJG45uLfDgRMg49gc', '2021-04-01 10:24:42', '2021-04-01 10:24:42'),
(11, 'karyawan', 'ahmad', 'ahmad.ahmad@gmail.com', NULL, '$2y$10$WFBY/vBEDWFpxcXrogXKROFSjYda/GovsE/dOc828vvrQ9RvgFemC', 'Bjv2lak5unEDnL51yyTnLQ1KY4q6x8M5qSxiK43yUPgiAKESGeyPOr0Mkw8Q', '2021-04-01 10:33:13', '2021-04-01 10:33:13'),
(12, 'karyawan', 'sebriyanto', 'sebri@gmail.com', NULL, '$2y$10$TZhI2Z4z8XRMuh15ghpluOl7UMCarcXvx17v33e5KW9ZtTKPDZr56', 'EeRJAt8dRzBH3eiBRV7NtaxVjHgFwMDfdRhaUZLgZ93AkDnwjQjk03YLl3R6', '2021-04-01 10:56:33', '2021-04-01 10:56:33'),
(13, 'karyawan', 'unyuu', 'unyuu1213@gmail.com', NULL, '$2y$10$PeHVUxpDfGNd3fVLuKvrQ.D.EYkYN5k5YjCy.YMRRhCDQbqsW1Edm', 'mbOBpRnaAEid56gOW7AyI9go6FLhDHv8ENb99glShYJTBYFsvNoPosjy25yJ', '2021-04-01 11:20:31', '2021-04-01 11:20:31'),
(14, 'karyawan', 'Mahendri', 'mahendri@gmail.com', NULL, '$2y$10$mNug0h1poeHAa.fnSdu1oOihEn98PuIz4JnB.5V2t7zIBi0jU4Opq', '8887gg2Xpi4zqyFW35Q4TLCJvwtDOcPIP89mmgTnUR9mGnDANCWgFafHojoE', '2021-04-01 11:20:40', '2021-04-01 11:20:40'),
(15, 'karyawan', 'Annisa', 'anisa@gmail.com', NULL, '$2y$10$OG0hLjXmTXfhI1wkK/IEI.AGhoTrR2aWJXB7Mf7tFfzHgdE5.w3y2', 'Qwftul2J6XkIWllsaNLmMKWvGrpzTUdRrw5kPPyk8EVERwiWTNt1roB0q2Wk', '2021-04-01 11:32:36', '2021-04-01 11:32:36'),
(16, 'karyawan', 'Nisa', 'nisa@gmail.com', NULL, '$2y$10$2hrncLzwVWZnGWXOHzmu5.rzon0JtIwXR8c0hKKQn5DqONOWxfgbe', 'ds6mHc3Ii4HVl6LTC3FV7rFwsQ8crdnJBAE8GEowvHIVNhBkTAv2hSw5UXU5', '2021-04-01 11:33:27', '2021-04-01 11:33:27'),
(17, 'karyawan', 'Popol', 'popol@gmail.com', NULL, '$2y$10$c9Rx8TrFedxX9ZrvXY7/m.snKzyymYsFry/XgQmO45Lg5FZggOkBe', 'bHKegOC886Gwr4WQo9rTMcZHuHqMtfiAGOW1oaEIjt96suKZifPQszaYyQio', '2021-04-01 21:54:46', '2021-04-01 21:54:46'),
(18, 'karyawan', 'Fadel', '1061911@gmail.com', NULL, '$2y$10$T4NsoJYsbg2HBEV8aQDTQOtZ/TY7qStSB7395z80dSPS/Y1KuhW/K', 'IPSTQcg0FLtuOSNCLF1rQVsKEvGM5Vds0h2XlWb9DRrQ8Odo8BSOU6OsOoaC', '2021-04-01 22:26:56', '2021-04-01 22:26:56'),
(19, 'karyawan', 'ahmad fajar', 'ahmad23@gmail.com', NULL, '$2y$10$jo4OYsq3gYffXQht462uSOdAYrvzY.qyg8.GyUor6kYBeIRRyojBu', '8zp16DL5mz1Tzo0yndTIgloxs04N0mcrl8qEsB7XzFnrFCE5O33QcDU4Vaq3', '2021-04-02 00:52:50', '2021-04-02 00:52:50'),
(20, 'karyawan', 'Aji', 'ajitri@gmail.com', NULL, '$2y$10$b9xwOWp//bNhiRvcW2SZ6ORUJynp.FB6DQHHLdNXr3JkO1.EcLsMS', 'XNjmRalsdPJsGF7yzVv8xoNxQTfoEH8otFMFLDnigL2r7XMoczjCWliRiNz1', '2021-04-03 02:22:52', '2021-04-03 02:22:52'),
(21, 'karyawan', 'Tia', 'tia23@gmqil.com', NULL, '$2y$10$hW09GGVSHWF7FwMtknEHNOHoAqLJx6nOq0acz1Y3.ib2nKMn5m7Cu', 'hwAXgs37vav0HrBfJrxcQeQRO4epow0GQ0mXO4vEek1ulXPkQhtBjsrD9XFv', '2021-04-03 02:24:08', '2021-04-03 02:24:08'),
(22, 'karyawan', 'reza', 'reza@gmail.com', NULL, '$2y$10$Q3VQFYzpfhIFjle4fCfG5OuajINGCCLEQFBtZH4tYXEIUqGKWwo/C', 'KCJfPRYmlVP9Bj9taaNNuoXCUMCithBz2wMHDMsg2gB4f3ahCs1BolrDOsKv', '2021-04-03 05:17:01', '2021-04-03 05:17:01'),
(23, 'karyawan', 'Abdul', 'abdullah@gmail.com', NULL, '$2y$10$IbkWe.xzPoexL/MNrHrw6uIYF3Tdl93hquwZeCL88w0sXtjKOWUhK', 'mR3tAeNOopKDTMFs85b2jjqoH25TZui5x3HiONqgZrTbKjcA7FsMxD25yKgx', '2021-04-03 07:08:11', '2021-04-03 07:08:11'),
(24, 'karyawan', 'salsa', 'salsa@gmail.com', NULL, '$2y$10$ydNbgQ6KglH8kn7TI0Dp3OP54B.LB/2nCzp.ZDKhaI59oc/zCsLFm', 'MKPm0vuMqX9DwAlRK8B56ZxbHq5FC1UrABLBqegEujQDtCfrXDwJStl5ElmK', '2021-04-04 06:12:51', '2021-04-04 06:12:51'),
(25, 'karyawan', 'nia', 'nia231@gmail.com', NULL, '$2y$10$yuD8tPsLm6lXwc3/rLczvOxeNIimhhuuXLavMqv9zoonWNkqIPYAW', 'EQKTzRsIofhfedYrlikK9RsOXw6Y2PTzW6dPvqQU9lfun0FHUR8tQrj67zKn', '2021-04-05 23:08:29', '2021-04-05 23:08:29'),
(26, 'karyawan', 'Della', 'della23@gmail.com', NULL, '$2y$10$TTlXE/lLGTvQiYQodJ58Y.xEPFMx3vm.dL6ZXPYcJnkSJegNf.B/W', '9oObbtgGtcux9FcDZ1lm2b5jJ3mcemqQEehcF813qIizBFthaQSwz6kiGhAd', '2021-04-07 01:27:53', '2021-04-07 01:27:53'),
(27, 'karyawan', 'Yinyin', 'rizall12@gmail.com', NULL, '$2y$10$IkAs4Ca4o3sOT6Mi6d1NM.yI1PaATJ9y71qd0.Ros9A.dr9gJtjHq', 'qg6wO9oOOTphMndkZi2xHNSZo2wKU2JW7U0zfJqQ6Em6Ko7ud3qGAGeDUEzp', '2021-04-07 08:24:43', '2021-04-07 08:24:43'),
(28, 'karyawan', 'Sena valdin', 'senavaldin20@gmail.com', NULL, '$2y$10$vQfKtixRh2kRkNPtyqfFsets2QtqzcmTUQsdByazlnUwJO9YZa4rC', 'BfaO9xiiivRNJGpu9zNEl7R8AjuOkIo9wyyz1pcGDoJ8txYNELeRGs0S2e3d', '2021-04-15 09:04:24', '2021-04-15 09:04:24'),
(29, 'karyawan', 'wijaya saputra', 'jaya@gmail.com', NULL, '$2y$10$M3LFasyNsgNQrR5pE5JXk.q1E3sBCUK0v2p1IH1GZbF5yrDUwoH/K', '81DChpdLTHVP9RqfJiIK5d5uavD2F3yyKZYLQ7BunmRLaqCm5IYtDtDHpK9a', '2021-04-21 14:44:16', '2021-04-21 14:44:16'),
(30, 'karyawan', 'aldi pranata', 'aldi@gmail.com', NULL, '$2y$10$859zv7DuyacIg6w1vKLO9OsYJ7AYqxK3BzClyiyVjV9zmlSWoji9K', 'yUZD7HDaZviNL1eHEsa5yDbpiF4l2Lg17Vm7NicgKEhBi36mOHWEfPZ0knIW', '2021-04-21 14:46:00', '2021-04-21 14:46:00'),
(31, 'karyawan', 'fidal', 'fidal23@gmail.com', NULL, '$2y$10$LQX3q9l3Qnb77jo/.F6uyOg2gl9wfzN/RFT4GlMIP5EYqO2y4vRPK', 'xy1TFNiPpRAJUE1KGCGiFLp97JgXgD2CTzoFO1kgQm0ha2gPIU3f7xmZ191G', '2021-04-25 12:52:25', '2021-04-25 12:52:25'),
(32, 'karyawan', 'aldi', 'aldi23@gmail.com', NULL, '$2y$10$iTJauOYfy6mGInE6L9pqXuPyw4jNlp3BAKiVcHrEXheF0HTlsGJEG', 'fqFch9RMyXMGzs5GtjwWsbuiuHRxcthNMW7n752lU9BOxbaA09ygj8tPFGq9', '2021-04-25 22:01:45', '2021-04-25 22:01:45'),
(33, 'karyawan', 'adelas', 'adelas89@gmail.com', NULL, '$2y$10$BVwnM4VrQIliMPVBlL4sQe2kzssNChuV9o69R.h9EVtYOkTe9Fis6', 'uqi5gKLFCoItwQC7NSCyjxkc5dWxqSOoG9DpsJtxJUHmQyT1t0tLb0FZ6VgZ', '2021-04-25 22:07:49', '2021-04-25 22:07:49'),
(34, 'karyawan', 'dwi normawati', 'dwi.normawati@tif.uad.ac.id', NULL, '$2y$10$LUZmBz7iiuHrwDtJ99KEv.vV5SItCNPUJW0bhgQzxJCiewkgX8Yoi', 'ubMOBW0huxYay5p3mWnHVrNZnDFMefzHzLsDAy7YP5K2NUDqPlIPffGvxgTO', '2021-04-25 22:16:22', '2021-04-25 22:16:22'),
(35, 'karyawan', 'kholid', 'kholid@gmail.com', NULL, '$2y$10$t2FmYJCkWrMdvN6uKvhsSeIQzFbCmt8IWM1kPLe8KVQnZ8EDu48em', 'CIVoBUe9IBvwCwCYo9AWExRvFQ2SqWJPJQSlNuVQWjKy1zH65gOZUZsA1wNa', '2021-04-25 22:37:39', '2021-04-25 22:37:39'),
(36, 'karyawan', 'abc', 'sgfdgf@gmail.com', NULL, '$2y$10$kqwSbg7MtkY2iMrzcEF5iOKaDXUHkbMtBJ3ceBwOeTCvlMLva6Sd.', 'ATDriw1mRPhNSusQ3sctVUZ3k5AJyzPo2dfO1OJh7gDeIrEruS2ezTZoZMe4', '2021-04-25 22:39:58', '2021-04-25 22:39:58'),
(37, 'karyawan', 'adlinyo', 'aldinyo@gmail.com', NULL, '$2y$10$iYzggXzko2BYZo2Pib/rt.2N6KvIXMizqMnreVOlMb.VTqIruLorm', 'pnifFLdSqzbv7KNLYpRHsVnCjvB3oPMEdcYbWJccza83ISopGsGRsKEpVvpY', '2021-05-02 10:09:34', '2021-05-02 10:09:34'),
(38, 'karyawan', 'aldi', 'fadels@gmail.com', NULL, '$2y$10$vvND3mHHH8hFuoEBhDvoveaWlUayPPhmQu0ZGFnGrOq.c5nFhoQaS', 'wExbZUlZuNhBxRdvGFedxIpEkaLNg1kL10nX5Y2dQrzIxtWtFKrZ5hX5fz0w', '2021-05-02 10:10:19', '2021-05-02 10:10:19'),
(39, 'karyawan', 'aldi', 'aldi@gmail.com', NULL, '$2y$10$25yRJS/fYDKwSNNdE23va.mTGMh1BlrDAlpLcm7xaK.MQrXNjSp1K', 'nto2ROIn5Za6DjOX6KWJ4tJnEoE7zZtpC2z4Dk8uzp8kz7PfXCyqwAYKJvyf', '2021-05-06 01:26:08', '2021-05-06 01:26:08'),
(40, 'karyawan', 'bagos', 'bagos@gmail.com', NULL, '$2y$10$9zkWA56FP.zhANbafLM8muib2Ujb4jaqOV12v/aQaNl3AdX.aVqoq', 'fg7lyvjpwcRYtTEfbyoiBKk3kiGrDJSNS4EgAq0xa2Pm6GUMDjiFBg5GzfW5', '2021-05-08 03:14:22', '2021-05-08 03:14:22'),
(41, 'karyawan', 'audrey', 'audrey@gmail.com', NULL, '$2y$10$q1T5Q3ceDkMXrS4VS0eMYukTDQaJPDHLjlyipwhLsSWL34NhokJQy', 'Sw0RHOOwGi9mpf5ngB3nsPMjq0BbZYmJZ0rzCDJ257FnAbyW95mKZqWi68Hf', '2021-05-09 06:16:14', '2021-05-09 06:16:14'),
(43, 'karyawan', 'aldi saputra', 'saputra@gmail.com', NULL, '$2y$10$Wl1t3ul6dEJSw8E6GTdxBuCIjbgEq51WqBG5Ce4gvtkN8sMxWapcq', 'FA3qTI90jaqli4nnf0WIHxHnVlDkPz83sVjbsCKAyTTHfh1TfXfRP6Fkiri1', '2021-06-13 21:36:39', '2021-06-13 21:36:39'),
(44, 'karyawan', 'nurul', 'nurul@gmail.com', NULL, '$2y$10$kBG5RoZrDRplTGp8tcMa.eFvE1.2ggojD27FCBITCzayj5hlQGTdK', 'do2R5sPoIt8xraxEPdymwcBAGo0egi3Clx2V2l3T8BKUzFzApD5PfEn1Om4k', '2021-06-18 10:18:15', '2021-06-18 10:18:15'),
(45, 'karyawan', 'yusril', 'yusrilmahendri839@gmail.com', NULL, '$2y$10$JaYKwAYqSMb.Xypry48ED.StZWLGtyYkm/jRq6.RIoRAr0rOcMp5a', 'kr56ZWlOLgtDZtbZdW2tfR0SLX90atCULjxweNxStxgXn5wHW2428o5pPqar', '2021-06-28 00:13:25', '2021-06-28 00:13:25'),
(46, 'karyawan', 'arif', 'arif@gmail.com', NULL, '$2y$10$urgOWw8SLVQYSz6MBT3lGeM3P9WLAgmxRrXzL4lbz9pnA1q7DcK.2', 'vL2sOKAE3D1bSE4opjKsRtdkulZmaNldqRa8XAvUUAjIem8f4CtzcTvpTJ0W', '2021-06-28 00:14:33', '2021-06-28 00:14:33'),
(47, 'karyawan', 'Shelwan Riaudy U', 'shelwan1800018395@webmail.uad.ac.id', NULL, '$2y$10$47U3sqh1GOIsN8SSh2EtheAa0268Yo44LCvibRe1VrSIz2njSKpMe', 'fN9OqfCb56budMzfPqcuFIzoxYijS2q4R8loo3JzgNkh0zZrBi0U221bG6Ur', '2021-07-06 23:58:26', '2021-07-06 23:58:26'),
(48, 'karyawan', 'milen', 'milen@gmail.com', NULL, '$2y$10$mnpxsnMJB0TGa7AqNyFzBeq6ncPj2QAStPVTe1.OLckyRugzqh5ai', 'EhLxbsaJeNehJTpoov8oAEymbqYJYVNOSQr2Kew0NuhZKwtEuwcbF4nm3vR4', '2021-07-07 11:52:48', '2021-07-07 11:52:48'),
(49, 'karyawan', 'Shelwan', 'selwanriaudyu48@gmail.com', NULL, '$2y$10$3TaGaoF1o4z4e71EPo/Db.U1OyxaC8wUgW6bzdRa3OHQ9uJIzhq1S', 'n0uPgn2Egow5AZ3mIluHS00oqZbdUmSj2ZdM9xX3HeHzk1r1IvKyzq6wvwgK', '2021-07-08 06:29:47', '2021-07-08 06:29:47'),
(50, 'karyawan', 'ade', 'adekurnia29102000@gmail.com', NULL, '$2y$10$MvMBQMxbp2VGjpbJWlTZoexYp7GYZ60ggMIJEMMsPrXPVsZbJ1o2e', 'Dd2XhUKGyUNP7O05pkFXovmxUFNtHeK0kNreT2QmatuahXm4ojkd2fWHT4nt', '2021-07-08 07:11:06', '2021-07-08 07:11:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
