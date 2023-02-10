-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 10, 2023 at 06:21 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kereta_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kereta`
--

DROP TABLE IF EXISTS `data_kereta`;
CREATE TABLE IF NOT EXISTS `data_kereta` (
  `id_kereta` int NOT NULL AUTO_INCREMENT,
  `kode_kereta` varchar(50) NOT NULL,
  `nama_kereta` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kelas` varchar(20) NOT NULL,
  PRIMARY KEY (`id_kereta`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_kereta`
--

INSERT INTO `data_kereta` (`id_kereta`, `kode_kereta`, `nama_kereta`, `kelas`) VALUES
(1, '404', 'Ekonomi Lokal', '3'),
(2, '317', 'Probowangi', '3'),
(3, '314', 'Tawangalun', '3'),
(4, '313', 'Tawangalun', '3'),
(5, '247', 'Logawa', '3'),
(6, '102', 'Singasari', '3'),
(7, '237', 'Blambangan Ekspres', '1'),
(8, '2', 'Argo Bromo Anggrek', '1'),
(9, '8A', 'Argo Lawu', '1'),
(10, '112A', 'Ranggajati', '2'),
(11, '309', 'Tawang Jaya', '3'),
(17, '318', 'Probowangi', '3'),
(18, '287', 'Sri Tanjung', '3'),
(19, '1L', 'Argo Bromo Anggrek Sleeper Luxury  ', '1'),
(20, '367', 'Penataran Dhoho', '3'),
(21, '369', 'Penataran Dhoho', '3'),
(22, '371', 'Penataran Dhoho', '3'),
(23, '373', 'Penataran ', '3');

-- --------------------------------------------------------

--
-- Table structure for table `data_manifest`
--

DROP TABLE IF EXISTS `data_manifest`;
CREATE TABLE IF NOT EXISTS `data_manifest` (
  `id_manifest` int NOT NULL AUTO_INCREMENT,
  `kode_reservasi` varchar(10) NOT NULL,
  `relasi` int NOT NULL,
  `penumpang` int NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `status_paid` int NOT NULL,
  `status_checkin` int NOT NULL,
  `status_print` int NOT NULL,
  PRIMARY KEY (`id_manifest`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_manifest`
--

INSERT INTO `data_manifest` (`id_manifest`, `kode_reservasi`, `relasi`, `penumpang`, `tanggal_berangkat`, `status_paid`, `status_checkin`, `status_print`) VALUES
(2, '6RBRE0KM', 4, 4, '2023-02-24', 1, 1, 1),
(3, 'RV10KUW3', 7, 5, '2023-02-10', 1, 0, 0),
(4, 'RHK741AT', 6, 5, '2023-02-24', 3, 1, 0),
(5, 'KDOHGIFQ', 0, 0, '0000-00-00', 1, 0, 0),
(6, 'Y9QAEZ8D', 8, 6, '2023-03-01', 1, 0, 0),
(7, 'PC36GK1V', 8, 4, '2023-02-28', 1, 0, 0),
(8, '60QKE4TX', 9, 6, '2023-02-18', 1, 0, 0),
(9, 'SSOWDACZ', 12, 5, '2023-03-11', 1, 0, 0),
(10, 'LAOB65BW', 6, 6, '2023-04-07', 0, 0, 1),
(11, 'NIIDNSEH', 8, 6, '2023-02-23', 1, 1, 0),
(1, 'KPHR4CIO', 6, 7, '2023-02-25', 1, 0, 0),
(14, 'HF9Z3TCP', 6, 7, '2023-02-24', 0, 0, 0),
(15, 'EWPZSKAY', 3, 7, '2023-03-01', 0, 0, 0),
(16, 'RJRAZTAG', 8, 7, '2023-02-24', 0, 0, 0),
(17, 'MYOQTRJF', 12, 7, '2023-02-17', 3, 0, 0),
(18, 'WVTI3UB9', 9, 7, '2023-02-10', 0, 0, 0),
(19, 'ERKCWXDI', 1, 7, '2022-09-12', 3, 0, 0),
(20, '6BHPOEND', 14, 7, '2023-02-24', 1, 0, 0),
(21, 'AJZLEOPJ', 8, 7, '2023-02-23', 0, 0, 0),
(22, 'CC1E8ZRS', 4, 7, '2023-09-22', 0, 0, 0),
(23, 'VJ7BAHAN', 8, 7, '2022-12-12', 0, 0, 0),
(24, '1L2XIRPF', 8, 7, '2022-12-12', 0, 0, 0),
(25, 'N0YWYGEQ', 8, 7, '2022-12-12', 0, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_manifest_lengkap`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `data_manifest_lengkap`;
CREATE TABLE IF NOT EXISTS `data_manifest_lengkap` (
`id_manifest` int
,`kode_reservasi` varchar(10)
,`relasi` int
,`penumpang` int
,`tanggal_berangkat` date
,`status_paid` int
,`status_checkin` int
,`status_print` int
,`id_relasi` int
,`id_ka` int
,`stasiun_awal` int
,`stasiun_akhir` int
,`jam_berangkat` time
,`jam_tiba` time
,`tarif` varchar(100)
,`id_kereta` int
,`kode_kereta` varchar(50)
,`nama_kereta` varchar(100)
,`kelas` varchar(20)
,`id` int
,`kode_stasiun` varchar(30)
,`nama_stasiun` varchar(30)
,`city` varchar(30)
,`cityname` varchar(30)
,`id_stasiun_akhir` int
,`nama_stasiun_akhir` varchar(30)
,`kode_stasiun_akhir` varchar(30)
,`id_penumpang` int
,`username` varchar(100)
,`password` varchar(256)
,`email` varchar(100)
,`tipe_identitas` enum('KTP','PASSPORT','','')
,`nama_penumpang` varchar(100)
,`no_identitas` varchar(50)
,`no_hp` varchar(12)
,`tanggal_lahir` varchar(20)
,`jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN','','')
,`akun_dibuat` varchar(20)
,`hak_akses` varchar(20)
,`status` int
);

-- --------------------------------------------------------

--
-- Table structure for table `data_penumpang`
--

DROP TABLE IF EXISTS `data_penumpang`;
CREATE TABLE IF NOT EXISTS `data_penumpang` (
  `id_penumpang` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipe_identitas` enum('KTP','PASSPORT','','') NOT NULL,
  `nama_penumpang` varchar(100) NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN','','') NOT NULL,
  `akun_dibuat` varchar(20) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_penumpang`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_penumpang`
--

INSERT INTO `data_penumpang` (`id_penumpang`, `username`, `password`, `email`, `tipe_identitas`, `nama_penumpang`, `no_identitas`, `no_hp`, `tanggal_lahir`, `jenis_kelamin`, `akun_dibuat`, `hak_akses`, `status`) VALUES
(4, 'lipsum70', 'cf4fa8937dbab42f4bead0920fdb5095', 'farelfaraday234@gmail.com', 'KTP', 'Heri ajah', '89797987987987', '12798798879', '2023-02-08', 'LAKI-LAKI', '2023-02-02', 'penumpang', 1),
(5, 'xawang', '25d55ad283aa400af464c76d713c07ad', 'emailkedua@email.com', 'KTP', 'Xawang Xinawang', '111111111111111', '12938038089', '2023-02-24', 'LAKI-LAKI', '2023-02-08', 'penumpang', 1),
(6, 'Hanacaraka', 'f0c6f2eefdacb1b8fe459231e9a6bdec', 'cuma_kau@email.com', 'KTP', 'Hanacaraka', '08955256478878', '089555478555', '2023-02-07', 'LAKI-LAKI', '2023-02-08', 'penumpang', 1),
(7, 'dwi.adisa', '3c69a2a9dee71cd1ce97700902d6758e', 'cokanjeng@email.com', 'KTP', 'dwi Adisa', '08955256478878', '00000000', '2023-02-16', 'LAKI-LAKI', '2023-02-09', 'penumpang', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_relasi`
--

DROP TABLE IF EXISTS `data_relasi`;
CREATE TABLE IF NOT EXISTS `data_relasi` (
  `id_relasi` int NOT NULL AUTO_INCREMENT,
  `id_ka` int NOT NULL,
  `stasiun_awal` int NOT NULL,
  `stasiun_akhir` int NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_tiba` time NOT NULL,
  `tarif` varchar(100) NOT NULL,
  PRIMARY KEY (`id_relasi`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_relasi`
--

INSERT INTO `data_relasi` (`id_relasi`, `id_ka`, `stasiun_awal`, `stasiun_akhir`, `jam_berangkat`, `jam_tiba`, `tarif`) VALUES
(1, 17, 172, 178, '17:26:00', '19:23:00', '29.000'),
(2, 4, 33, 172, '16:10:00', '20:51:00', '58.000'),
(3, 1, 183, 184, '10:28:00', '10:43:00', '6000'),
(4, 3, 170, 33, '07:33:00', '12:37:00', '58.000'),
(6, 3, 172, 33, '07:40:00', '12:37:00', '58000'),
(7, 5, 172, 183, '06:00:00', '09:57:00', '135.000'),
(8, 18, 172, 183, '09:32:00', '13:11:00', '88.000'),
(9, 19, 184, 28, '09:35:00', '17:45:00', '1.555.000'),
(10, 7, 172, 102, '22:03:00', '05:44:00', '480.000'),
(11, 20, 33, 39, '07:25:00', '19:34:00', '12.000'),
(12, 21, 33, 39, '10:52:00', '13:04:00', '12.000'),
(13, 22, 33, 39, '14:32:00', '16:49:00', '12.000'),
(14, 23, 33, 39, '20:20:00', '22:17:00', '12.000');

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_relasi_lengkap`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `data_relasi_lengkap`;
CREATE TABLE IF NOT EXISTS `data_relasi_lengkap` (
`id_relasi` int
,`id_ka` int
,`stasiun_awal` int
,`stasiun_akhir` int
,`jam_berangkat` time
,`jam_tiba` time
,`tarif` varchar(100)
,`id_kereta` int
,`kode_kereta` varchar(50)
,`nama_kereta` varchar(100)
,`kelas` varchar(20)
,`id` int
,`kode_stasiun` varchar(30)
,`nama_stasiun` varchar(30)
,`city` varchar(30)
,`cityname` varchar(30)
,`id_stasiun_akhir` int
,`nama_stasiun_akhir` varchar(30)
,`kode_stasiun_akhir` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `data_stasiun`
--

DROP TABLE IF EXISTS `data_stasiun`;
CREATE TABLE IF NOT EXISTS `data_stasiun` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_stasiun` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nama_stasiun` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `cityname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_stasiun`
--

INSERT INTO `data_stasiun` (`id`, `kode_stasiun`, `nama_stasiun`, `city`, `cityname`) VALUES
(1, 'TNK', 'TANJUNG KARANG', 'TANJUNG KARANG', 'KOTA BANDAR LAMPUNG'),
(2, 'LAR', 'LABUAN RATU', 'LABUAN RATU', 'KOTA BANDAR LAMPUNG'),
(3, 'RJS', 'REJOSARI', 'REJOSARI', 'KABUPATEN LAMPUNG SELATAN'),
(4, 'TGI', 'TEGINENENG', 'TEGINENENG', 'KABUPATEN LAMPUNG UTARA'),
(5, 'BKI', 'BEKRI', 'BEKRI', 'KABUPATEN LAMPUNG TENGAH'),
(6, 'HJP', 'HAJI PEMANGGILAN', 'HAJI PEMANGGILAN', 'KABUPATEN LAMPUNG TENGAH'),
(7, 'SLS', 'SULUSUBAN', 'SULUSUBAN', 'KABUPATEN LAMPUNG TENGAH'),
(8, 'KB', 'KOTABUMI', 'KOTABUMI', 'KOTABUMI'),
(9, 'CEP', 'CEMPAKA', 'CEMPAKA', 'KABUPATEN LAMPUNG UTARA'),
(10, 'KTP', 'KETAPANG', 'KETAPANG', 'KABUPATEN LAMPUNG UTARA'),
(11, 'NRR', 'NEGARA RATU', 'NEGARA RATU', 'KABUPATEN LAMPUNG UTARA'),
(12, 'TLY', 'TULUNG BUYUT', 'TULUNG BUYUT', 'KABUPATEN LAMPUNG UTARA'),
(13, 'NGN', 'NEGERIAGUNG', 'NEGERIAGUNG', 'KABUPATEN WAY KANAN'),
(14, 'BBU', 'BLAMBANGAN UMPU', 'BLAMBANGAN UMPU', 'KABUPATEN WAY KANAN'),
(15, 'GHM', 'GIHAM', 'GIHAM', 'KABUPATEN WAY KANAN'),
(16, 'WAY', 'WAYTUBA', 'WAYTUBA', 'KABUPATEN WAY KANAN'),
(17, 'MP', 'MARTAPURA', 'MARTAPURA', 'MARTAPURA'),
(18, 'PNW', 'PENINJAWAN', 'PENINJAWAN', 'PENINJAWAN'),
(19, 'TI', 'TEBING TINGGI', 'TEBING TINGGI', 'KOTA TEBING TINGGI'),
(20, 'LT', 'LAHAT', 'LAHAT', 'KABUPATEN LAHAT'),
(21, 'SCT', 'SUKACINTA', 'SUKACINTA', 'KABUPATEN LAHAT'),
(22, 'ME', 'MUARA ENIM', 'MUARA ENIM', 'KABUPATEN MUARA ENIM'),
(23, 'PBM', 'PRABUMULIH', 'PRABUMULIH', 'KOTA PRABUMULIH'),
(24, 'GB', 'GOMBONG', 'GOMBONG', 'KABUPATEN KEBUMEN'),
(25, 'KPT', 'KERTAPATI', 'KERTAPATI', 'KOTA PALEMBANG'),
(26, 'LLG', 'LUBUK LINGGAU', 'LUBUK LINGGAU', 'KOTA LUBUKLINGGAU'),
(27, 'BTA', 'BATURAJA', 'BATURAJA', 'BATURAJA'),
(28, 'GMR', 'GAMBIR', 'GAMBIR', 'JAKARTA'),
(29, 'JAKK', 'JAKARTA KOTA', 'JAKARTA KOTA', 'JAKARTA'),
(30, 'KNN', 'KRADENAN', 'KRADENAN', 'KABUPATEN GROBOGAN'),
(31, 'JBN', 'JAMBON', 'JAMBON', 'KABUPATEN GROBOGAN'),
(32, 'LW', 'LAWANG', 'LAWANG', 'KOTA MALANG'),
(33, 'ML', 'MALANG', 'MALANG', 'KOTA MALANG'),
(34, 'MLK', 'MALANG KOTA LAMA', 'MALANG KOTA LAMA', 'KOTA MALANG'),
(35, 'KPN', 'KEPANJEN', 'KEPANJEN', 'KOTA MALANG'),
(36, 'SBP', 'SUMBERPUCUNG', 'SUMBERPUCUNG', 'KOTA MALANG'),
(37, 'KSB', 'KESAMBEN', 'KESAMBEN', 'KOTA BLITAR'),
(38, 'WG', 'WLINGI', 'WLINGI', 'KOTA BLITAR'),
(39, 'BL', 'BLITAR', 'BLITAR', 'KOTA BLITAR'),
(40, 'NT', 'NGUNUT', 'NGUNUT', 'KABUPATEN TULUNGAGUNG'),
(41, 'TA', 'TULUNGAGUNG', 'TULUNGAGUNG', 'KABUPATEN TULUNGAGUNG'),
(42, 'NJG', 'NGUJANG', 'NGUJANG', 'KABUPATEN TULUNGAGUNG'),
(43, 'KD', 'KEDIRI', 'KEDIRI', 'KOTA KEDIRI'),
(44, 'SI', 'SUKABUMI', 'SUKABUMI', 'KOTA SUKABUMI'),
(45, 'PSE', 'PASARSENEN', 'PASARSENEN', 'JAKARTA'),
(46, 'JNG', 'JATINEGARA', 'JATINEGARA', 'JAKARTA'),
(47, 'GM', 'GUMILIR', 'GUMILIR', 'KABUPATEN CILACAP'),
(48, 'CP', 'CILACAP', 'CILACAP', 'KABUPATEN CILACAP'),
(49, 'DMR', 'DOLOKMERANGIR', 'DOLOKMERANGIR', 'KABUPATEN SIMALUNGUN'),
(50, 'LTD', 'LAUT TADOR', 'LAUT TADOR', 'KABUPATEN BATU BARA'),
(51, 'PRA', 'PERLANAAN', 'PERLANAAN', 'KABUPATEN SIMALUNGUN'),
(52, 'LMP', 'LIMAPULUH', 'LIMAPULUH', 'KABUPATEN SIMALUNGUN'),
(53, 'SBJ', 'SEI BEJANGKAR', 'SEI BEJANGKAR', 'KABUPATEN LABUHAN BATU'),
(54, 'KIS', 'KISARAN', 'KISARAN', 'KABUPATEN ASAHAN'),
(55, 'PUR', 'PULURAJA', 'PULURAJA', 'KABUPATEN ASAHAN'),
(56, 'AKB', 'AEKLOBA', 'AEKLOBA', 'KABUPATEN ASAHAN'),
(57, 'MBM', 'MAMBANGMUDA', 'MAMBANGMUDA', 'KABUPATEN LABUHAN BATU'),
(58, 'PME', 'PAMINGKE', 'PAMINGKE', 'KABUPATEN LABUHANBATU UTARA'),
(59, 'PHA', 'PADANGHALABAN', 'PADANGHALABAN', 'KABUPATEN LABUHAN BATU'),
(60, 'MBU', 'MARBAU', 'MARBAU', 'KABUPATEN LABUHAN BATU'),
(61, 'TNB', 'TANJUNGBALAI', 'TANJUNGBALAI', 'KOTA TANJUNG BALAI'),
(62, 'TBI', 'TEBING TINGGI', 'TEBING TINGGI', 'KOTA TEBING TINGGI'),
(63, 'RPH', 'RAMPAH', 'RAMPAH', 'KOTA TEBING TINGGI'),
(64, 'PBA', 'PERBAUNGAN', 'PERBAUNGAN', 'KABUPATEN SERDANG BEDAGAI'),
(65, 'LBP', 'LUBUKPAKAM', 'LUBUKPAKAM', 'KABUPATEN DELI SERDANG'),
(66, 'ARB', 'ARASKABU', 'ARASKABU', 'KABUPATEN DELI SERDANG'),
(67, 'BTK', 'BATANGKUIS', 'BATANGKUIS', 'KABUPATEN DELI SERDANG'),
(68, 'BAP', 'BANDARHALIPAH', 'BANDARHALIPAH', 'KABUPATEN DELI SERDANG'),
(69, 'MDN', 'MEDAN', 'MEDAN', 'KOTA MEDAN'),
(70, 'RAP', 'RANTAUPRAPAT', 'RANTAUPRAPAT', 'KABUPATEN LABUHAN BATU'),
(71, 'SIR', 'SIANTAR', 'SIANTAR', 'KOTA PEMATANG SIANTAR'),
(72, 'KAC', 'KIARACONDONG', 'KIARACONDONG', 'KOTA BANDUNG'),
(73, 'BD', 'BANDUNG', 'BANDUNG', 'KOTA BANDUNG'),
(74, 'CMI', 'CIMAHI', 'CIMAHI', 'KOTA CIMAHI'),
(75, 'PLD', 'PLERED', 'PLERED', 'KABUPATEN PURWAKARTA'),
(76, 'PWK', 'PURWAKARTA', 'PURWAKARTA', 'KABUPATEN PURWAKARTA'),
(77, 'CKP', 'CIKAMPEK', 'CIKAMPEK', 'KABUPATEN KARAWANG'),
(78, 'KW', 'KARAWANG', 'KARAWANG', 'KABUPATEN KARAWANG'),
(79, 'CKR', 'CIKARANG', 'CIKARANG', 'KABUPATEN BEKASI'),
(80, 'BKS', 'BEKASI', 'BEKASI', 'KOTA BEKASI'),
(81, 'BJR', 'BANJAR', 'BANJAR', 'KOTA BANJAR'),
(82, 'CI', 'CIAMIS', 'CIAMIS', 'KABUPATEN CIAMIS'),
(83, 'TSM', 'TASIKMALAYA', 'TASIKMALAYA', 'KOTA TASIKMALAYA'),
(84, 'CPD', 'CIPEUNDEUY', 'CIPEUNDEUY', 'KABUPATEN GARUT'),
(85, 'CB', 'CIBATU', 'CIBATU', 'KABUPATEN GARUT'),
(86, 'LL', 'LELES', 'LELES', 'KABUPATEN GARUT'),
(87, 'CCL', 'CICALENGKA', 'CICALENGKA', 'KABUPATEN BANDUNG'),
(88, 'KTA', 'KUTOARJO', 'KUTOARJO', 'KABUPATEN PURWOREJO'),
(89, 'JN', 'JENAR', 'JENAR', 'KABUPATEN PURWOREJO'),
(90, 'WJ', 'WOJO', 'WOJO', 'KABUPATEN PURWOREJO'),
(91, 'KDG', 'KEDUNDANG', 'KEDUNDANG', 'KABUPATEN KULON PROGO'),
(92, 'WT', 'WATES', 'WATES', 'KOTA YOGYAKARTA'),
(93, 'YK', 'YOGYAKARTA', 'YOGYAKARTA', 'KOTA YOGYAKARTA'),
(94, 'LPN', 'LEMPUYANGAN', 'LEMPUYANGAN', 'KOTA YOGYAKARTA'),
(95, 'KT', 'KLATEN', 'KLATEN', 'KABUPATEN KLATEN'),
(96, 'PWS', 'PURWOSARI', 'PURWOSARI', 'KOTA SOLO'),
(97, 'SLO', 'SOLO BALAPAN', 'SOLO BALAPAN', 'KOTA SOLO'),
(98, 'SLM', 'SALEM', 'SALEM', 'KABUPATEN SRAGEN'),
(99, 'GD', 'GUNDIH', 'GUNDIH', 'KABUPATEN GROBOGAN'),
(100, 'TW', 'TELAWA', 'TELAWA', 'KABUPATEN BOYOLALI'),
(101, 'KEJ', 'KEDUNGJATI', 'KEDUNGJATI', 'KABUPATEN GROBOGAN'),
(102, 'SMT', 'SEMARANG TAWANG', 'SEMARANG TAWANG', 'KOTA SEMARANG'),
(103, 'SMC', 'SEMARANG PONCOL', 'SEMARANG PONCOL', 'KOTA SEMARANG'),
(104, 'WLR', 'WELERI', 'WELERI', 'KABUPATEN KENDAL'),
(105, 'BTG', 'BATANG', 'BATANG', 'KOTA PEKALONGAN'),
(106, 'PK', 'PEKALONGAN', 'PEKALONGAN', 'KOTA PEKALONGAN'),
(107, 'PML', 'PEMALANG', 'PEMALANG', 'KOTA PEMALANG'),
(108, 'PML', 'PEMALANG', 'PEMALANG', 'KOTA PEMALANG'),
(109, 'SLW', 'SLAWI', 'SLAWI', 'KOTA TEGAL'),
(110, 'TG', 'TEGAL', 'TEGAL', 'KOTA TEGAL'),
(111, 'BB', 'BREBES', 'BREBES', 'KABUPATEN BREBES'),
(112, 'TGN', 'TANJUNG', 'TANJUNG', 'KABUPATEN BREBES'),
(113, 'LOS', 'LOSARI', 'LOSARI', 'KABUPATEN CIREBON'),
(114, 'BBK', 'BABAKAN', 'BABAKAN', 'KABUPATEN CIREBON'),
(115, 'CLD', 'CILEDUG', 'CILEDUG', 'KABUPATEN CIREBON'),
(116, 'PGB', 'PEGADENBARU', 'PEGADENBARU', 'KABUPATEN SUBANG'),
(117, 'HGL', 'HAURGEULIS', 'HAURGEULIS', 'KABUPATEN INDRAMAYU'),
(118, 'TIS', 'TERISI', 'TERISI', 'KABUPATEN INDRAMAYU'),
(119, 'JTB', 'JATIBARANG', 'JATIBARANG', 'KABUPATEN INDRAMAYU'),
(120, 'AWN', 'ARJAWINANGUN', 'ARJAWINANGUN', 'KABUPATEN CIREBON'),
(121, 'CN', 'CIREBON', 'CIREBON', 'KOTA CIREBON'),
(122, 'CNP', 'CIREBON PRUJAKAN', 'CIREBON PRUJAKAN', 'KOTA CIREBON'),
(123, 'KGG', 'KETANGGUNGAN', 'KETANGGUNGAN', 'KABUPATEN BREBES'),
(124, 'PPK', 'PRUPUK', 'PRUPUK', 'KOTA TEGAL'),
(125, 'BMA', 'BUMIAYU', 'BUMIAYU', 'KABUPATEN BREBES'),
(126, 'PWT', 'PURWOKERTO', 'PURWOKERTO', 'PURWOKERTO'),
(127, 'MA', 'MAOS', 'MAOS', 'KABUPATEN CILACAP'),
(128, 'JRL', 'JERUKLEGI', 'JERUKLEGI', 'KABUPATEN CILACAP'),
(129, 'SDR', 'SIDAREJA', 'SIDAREJA', 'KABUPATEN CILACAP'),
(130, 'GDM', 'GANDRUNGMANGUN', 'GANDRUNGMANGUN', 'KABUPATEN CILACAP'),
(131, 'CSA', 'CISAAT', 'CISAAT', 'KOTA SUKABUMI'),
(132, 'KE', 'KARANGTENGAH', 'KARANGTENGAH', 'KOTA SUKABUMI'),
(133, 'CBD', 'CIBADAK', 'CIBADAK', 'KOTA SUKABUMI'),
(134, 'PRK', 'PARUNG KUDA', 'PARUNG KUDA', 'KOTA SUKABUMI'),
(135, 'CCR', 'CICURUG', 'CICURUG', 'KOTA SUKABUMI'),
(136, 'CGB', 'CIGOMBONG', 'CIGOMBONG', 'KABUPATEN BOGOR'),
(137, 'MSG', 'MASENG', 'MASENG', 'KABUPATEN BOGOR'),
(138, 'BTT', 'BATUTULIS', 'BATUTULIS', 'KABUPATEN BOGOR'),
(139, 'BOO', 'BOGOR', 'BOGOR', 'KOTA BOGOR'),
(140, 'KYA', 'KROYA', 'KROYA', 'KABUPATEN CILACAP'),
(141, 'SPH', 'SUMPIUH', 'SUMPIUH', 'KABUPATEN BANYUMAS'),
(142, 'GB', 'GOMBONG', 'GOMBONG', 'KABUPATEN KEBUMEN'),
(143, 'KA', 'KARANGANYAR', 'KARANGANYAR', 'KABUPATEN KEBUMEN'),
(144, 'KM', 'KEBUMEN', 'KEBUMEN', 'KABUPATEN KEBUMEN'),
(145, 'KWN', 'KUTOWINANGUN', 'KUTOWINANGUN', 'KABUPATEN KEBUMEN'),
(146, 'GBN', 'GAMBRINGAN', 'GAMBRINGAN', 'KABUPATEN GROBOGAN'),
(147, 'NBO', 'NGROMBO', 'NGROMBO', 'KABUPATEN GROBOGAN'),
(148, 'WR', 'WARU', 'WARU', 'SIDOARJO'),
(149, 'KRN', 'KRIAN', 'KRIAN', 'SIDOARJO'),
(150, 'MR', 'MOJOKERTO', 'MOJOKERTO', 'KOTA MOJOKERTO'),
(151, 'CRM', 'CURAHMALANG', 'CURAHMALANG', 'KABUPATEN JOMBANG'),
(152, 'JG', 'JOMBANG', 'JOMBANG', 'KABUPATEN JOMBANG'),
(153, 'SMB', 'SEMBUNG', 'SEMBUNG', 'KABUPATEN JOMBANG'),
(154, 'KTS', 'KERTOSONO', 'KERTOSONO', 'KABUPATEN NGANJUK'),
(155, 'NJ', 'NGANJUK', 'NGANJUK', 'KABUPATEN NGANJUK'),
(156, 'CRB', 'CARUBAN', 'CARUBAN', 'KOTA MADIUN'),
(157, 'MN', 'MADIUN', 'MADIUN', 'KOTA MADIUN'),
(158, 'GG', 'GENENG', 'GENENG', 'KABUPATEN NGAWI'),
(159, 'PA', 'PARON', 'PARON', 'KABUPATEN NGAWI'),
(160, 'KG', 'KEDUNGGALAR', 'KEDUNGGALAR', 'KABUPATEN NGAWI'),
(161, 'WK', 'WALIKUKUN', 'WALIKUKUN', 'KABUPATEN NGAWI'),
(162, 'SR', 'SRAGEN', 'SRAGEN', 'KABUPATEN SRAGEN'),
(163, 'SK', 'SOLOJEBRES', 'SOLOJEBRES', 'KOTA SOLO'),
(164, 'RGP', 'ROGOJAMPI', 'ROGOJAMPI', 'KABUPATEN BANYUWANGI'),
(165, 'TGR', 'TEMUGURUH', 'TEMUGURUH', 'KABUPATEN BANYUWANGI'),
(166, 'KSL', 'KALISETAIL', 'KALISETAIL', 'KABUPATEN BANYUWANGI'),
(167, 'SWD', 'SUMBER WADUNG', 'SUMBER WADUNG', 'KABUPATEN BANYUWANGI'),
(168, 'GLM', 'GLENMORE', 'GLENMORE', 'KABUPATEN BANYUWANGI'),
(169, 'KBR', 'KALIBARU', 'KALIBARU', 'KABUPATEN BANYUWANGI'),
(170, 'KLT', 'KALISAT', 'KALISAT', 'KABUPATEN JEMBER'),
(171, 'AJ', 'ARJASA', 'ARJASA', 'KABUPATEN JEMBER'),
(172, 'JR', 'JEMBER', 'JEMBER', 'KABUPATEN JEMBER'),
(173, 'RBP', 'RAMBIPUJI', 'RAMBIPUJI', 'KABUPATEN JEMBER'),
(174, 'TGL', 'TANGGUL', 'TANGGUL', 'KABUPATEN JEMBER'),
(175, 'JTR', 'JATIROTO', 'JATIROTO', 'KABUPATEN LUMAJANG'),
(176, 'KK', 'KLAKAH', 'KLAKAH', 'KABUPATEN LUMAJANG'),
(177, 'RN', 'RANUYOSO', 'RANUYOSO', 'KABUPATEN LUMAJANG'),
(178, 'PB', 'PROBOLINGGO', 'PROBOLINGGO', 'KABUPATEN PROBOLINGGO'),
(179, 'PS', 'PASURUAN', 'PASURUAN', 'KOTA PASURUAN'),
(180, 'BG', 'BANGIL', 'BANGIL', 'KOTA PASURUAN'),
(181, 'SDA', 'SIDOARJO', 'SIDOARJO', 'SIDOARJO'),
(182, 'WO', 'WONOKROMO', 'WONOKROMO', 'KOTA SURABAYA'),
(183, 'SGU', 'SURABAYA GUBENG', 'SURABAYA GUBENG', 'KOTA SURABAYA'),
(184, 'SBI', 'SURABAYA PASAR TURI', 'SURABAYA PASAR TURI', 'KOTA SURABAYA'),
(185, 'LMG', 'LAMONGAN', 'LAMONGAN', 'KABUPATEN LAMONGAN'),
(186, 'BJ', 'BOJONEGORO', 'BOJONEGORO', 'KABUPATEN BOJONEGORO'),
(187, 'CU', 'CEPU', 'CEPU', 'KABUPATEN BLORA'),
(188, 'WDU', 'WADU', 'WADU', 'KABUPATEN BLORA'),
(189, 'RBG', 'RANDUBLATUNG', 'RANDUBLATUNG', 'KABUPATEN BLORA'),
(190, 'DPL', 'DOPLANG', 'DOPLANG', 'KABUPATEN BLORA'),
(191, 'MAG', 'MAGETAN', 'MAGETAN', 'MAGETAN'),
(192, 'KTG', 'KETAPANG', 'KETAPANG', 'KABUPATEN BANYUWANGI'),
(193, 'BBT', 'BABAT', 'BABAT', 'KABUPATEN LAMONGAN'),
(194, 'LEC', 'LECES', 'LECES', 'KABUPATEN PROBOLINGGO'),
(195, 'PDX', 'PADANGX', 'PADANGX', 'KOTA PADANG'),
(196, 'BOP', 'BOGOR PALEDANG', 'BOGOR PALEDANG', 'KOTA BOGOR'),
(197, 'SGT', 'SUNGAI TUHA', 'SUNGAI TUHA', 'MARTAPURA'),
(198, 'WAP', 'WAY PISANG', 'WAY PISANG', 'KABUPATEN WAY KANAN'),
(199, 'NGW', 'NGAWI', 'NGAWI', 'KABUPATEN NGAWI'),
(200, 'BWI', 'BANYUWANGI KOTA', 'BANYUWANGI KOTA', 'KABUPATEN BANYUWANGI'),
(201, 'GRT', 'GARUT', 'GARUT', 'KABUPATEN GARUT');

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_stasiun_akhir`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `data_stasiun_akhir`;
CREATE TABLE IF NOT EXISTS `data_stasiun_akhir` (
`id` int
,`kode_stasiun` varchar(30)
,`nama_stasiun` varchar(30)
,`city` varchar(30)
,`cityname` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `data_stasiun_akhir_`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `data_stasiun_akhir_`;
CREATE TABLE IF NOT EXISTS `data_stasiun_akhir_` (
`id_stasiun_akhir` int
,`nama_stasiun_akhir` varchar(30)
,`kode_stasiun_akhir` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

DROP TABLE IF EXISTS `data_user`;
CREATE TABLE IF NOT EXISTS `data_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `username`, `password`, `nama`, `hak_akses`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator', 'admin', 1);

-- --------------------------------------------------------

--
-- Structure for view `data_manifest_lengkap`
--
DROP TABLE IF EXISTS `data_manifest_lengkap`;

DROP VIEW IF EXISTS `data_manifest_lengkap`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_manifest_lengkap`  AS  select `data_manifest`.`id_manifest` AS `id_manifest`,`data_manifest`.`kode_reservasi` AS `kode_reservasi`,`data_manifest`.`relasi` AS `relasi`,`data_manifest`.`penumpang` AS `penumpang`,`data_manifest`.`tanggal_berangkat` AS `tanggal_berangkat`,`data_manifest`.`status_paid` AS `status_paid`,`data_manifest`.`status_checkin` AS `status_checkin`,`data_manifest`.`status_print` AS `status_print`,`data_relasi_lengkap`.`id_relasi` AS `id_relasi`,`data_relasi_lengkap`.`id_ka` AS `id_ka`,`data_relasi_lengkap`.`stasiun_awal` AS `stasiun_awal`,`data_relasi_lengkap`.`stasiun_akhir` AS `stasiun_akhir`,`data_relasi_lengkap`.`jam_berangkat` AS `jam_berangkat`,`data_relasi_lengkap`.`jam_tiba` AS `jam_tiba`,`data_relasi_lengkap`.`tarif` AS `tarif`,`data_relasi_lengkap`.`id_kereta` AS `id_kereta`,`data_relasi_lengkap`.`kode_kereta` AS `kode_kereta`,`data_relasi_lengkap`.`nama_kereta` AS `nama_kereta`,`data_relasi_lengkap`.`kelas` AS `kelas`,`data_relasi_lengkap`.`id` AS `id`,`data_relasi_lengkap`.`kode_stasiun` AS `kode_stasiun`,`data_relasi_lengkap`.`nama_stasiun` AS `nama_stasiun`,`data_relasi_lengkap`.`city` AS `city`,`data_relasi_lengkap`.`cityname` AS `cityname`,`data_relasi_lengkap`.`id_stasiun_akhir` AS `id_stasiun_akhir`,`data_relasi_lengkap`.`nama_stasiun_akhir` AS `nama_stasiun_akhir`,`data_relasi_lengkap`.`kode_stasiun_akhir` AS `kode_stasiun_akhir`,`data_penumpang`.`id_penumpang` AS `id_penumpang`,`data_penumpang`.`username` AS `username`,`data_penumpang`.`password` AS `password`,`data_penumpang`.`email` AS `email`,`data_penumpang`.`tipe_identitas` AS `tipe_identitas`,`data_penumpang`.`nama_penumpang` AS `nama_penumpang`,`data_penumpang`.`no_identitas` AS `no_identitas`,`data_penumpang`.`no_hp` AS `no_hp`,`data_penumpang`.`tanggal_lahir` AS `tanggal_lahir`,`data_penumpang`.`jenis_kelamin` AS `jenis_kelamin`,`data_penumpang`.`akun_dibuat` AS `akun_dibuat`,`data_penumpang`.`hak_akses` AS `hak_akses`,`data_penumpang`.`status` AS `status` from ((`data_manifest` join `data_relasi_lengkap` on((`data_relasi_lengkap`.`id_relasi` = `data_manifest`.`relasi`))) join `data_penumpang` on((`data_penumpang`.`id_penumpang` = `data_manifest`.`penumpang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `data_relasi_lengkap`
--
DROP TABLE IF EXISTS `data_relasi_lengkap`;

DROP VIEW IF EXISTS `data_relasi_lengkap`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_relasi_lengkap`  AS  select `data_relasi`.`id_relasi` AS `id_relasi`,`data_relasi`.`id_ka` AS `id_ka`,`data_relasi`.`stasiun_awal` AS `stasiun_awal`,`data_relasi`.`stasiun_akhir` AS `stasiun_akhir`,`data_relasi`.`jam_berangkat` AS `jam_berangkat`,`data_relasi`.`jam_tiba` AS `jam_tiba`,`data_relasi`.`tarif` AS `tarif`,`data_kereta`.`id_kereta` AS `id_kereta`,`data_kereta`.`kode_kereta` AS `kode_kereta`,`data_kereta`.`nama_kereta` AS `nama_kereta`,`data_kereta`.`kelas` AS `kelas`,`data_stasiun_awal`.`id` AS `id`,`data_stasiun_awal`.`kode_stasiun` AS `kode_stasiun`,`data_stasiun_awal`.`nama_stasiun` AS `nama_stasiun`,`data_stasiun_awal`.`city` AS `city`,`data_stasiun_awal`.`cityname` AS `cityname`,`data_stasiun_akhir_`.`id_stasiun_akhir` AS `id_stasiun_akhir`,`data_stasiun_akhir_`.`nama_stasiun_akhir` AS `nama_stasiun_akhir`,`data_stasiun_akhir_`.`kode_stasiun_akhir` AS `kode_stasiun_akhir` from (((`data_relasi` join `data_kereta` on((`data_relasi`.`id_ka` = `data_kereta`.`id_kereta`))) join `data_stasiun` `data_stasiun_awal` on((`data_relasi`.`stasiun_awal` = `data_stasiun_awal`.`id`))) left join `data_stasiun_akhir_` on((`data_relasi`.`stasiun_akhir` = `data_stasiun_akhir_`.`id_stasiun_akhir`))) ;

-- --------------------------------------------------------

--
-- Structure for view `data_stasiun_akhir`
--
DROP TABLE IF EXISTS `data_stasiun_akhir`;

DROP VIEW IF EXISTS `data_stasiun_akhir`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_stasiun_akhir`  AS  select `data_stasiun`.`id` AS `id`,`data_stasiun`.`kode_stasiun` AS `kode_stasiun`,`data_stasiun`.`nama_stasiun` AS `nama_stasiun`,`data_stasiun`.`city` AS `city`,`data_stasiun`.`cityname` AS `cityname` from `data_stasiun` ;

-- --------------------------------------------------------

--
-- Structure for view `data_stasiun_akhir_`
--
DROP TABLE IF EXISTS `data_stasiun_akhir_`;

DROP VIEW IF EXISTS `data_stasiun_akhir_`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_stasiun_akhir_`  AS  select `data_stasiun`.`id` AS `id_stasiun_akhir`,`data_stasiun`.`nama_stasiun` AS `nama_stasiun_akhir`,`data_stasiun`.`kode_stasiun` AS `kode_stasiun_akhir` from `data_stasiun` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
