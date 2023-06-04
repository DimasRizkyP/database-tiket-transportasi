-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 04:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sites`
--

-- --------------------------------------------------------

--
-- Table structure for table `bandara`
--

CREATE TABLE `bandara` (
  `id_bandara` int(55) NOT NULL,
  `nama_bandara` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bandara`
--

INSERT INTO `bandara` (`id_bandara`, `nama_bandara`, `kota`, `negara`) VALUES
(2411, 'Sriwijaya', 'Palembang', 'Indonesiaa'),
(22331, 'Juanda', 'Surabaya', 'Indonesia'),
(23311, 'Satreos', 'Kediri', 'Indonesia'),
(32929, 'Soerkarno-Hatta', 'Surabaya', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id_bus` int(55) NOT NULL,
  `nama_bus` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `kuota` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id_bus`, `nama_bus`, `kelas`, `kuota`, `perusahaan`) VALUES
(43442, 'bagongg', 'vip', '90', 'po'),
(66781, 'Bus Pariwisata', 'Ekonomi', '40', 'PO FANIOS'),
(808312, 'Bus Sugeng Emas', 'VIP', '90', 'PT INDOPRIDE');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_bus`
--

CREATE TABLE `jadwal_bus` (
  `id_jadwal_bus` int(55) NOT NULL,
  `id_bus` int(55) NOT NULL,
  `id_rute_bus` int(55) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_bus`
--

INSERT INTO `jadwal_bus` (`id_jadwal_bus`, `id_bus`, `id_rute_bus`, `tanggal_berangkat`, `tanggal_sampai`) VALUES
(1123, 66781, 21312, '2023-06-08', '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kereta`
--

CREATE TABLE `jadwal_kereta` (
  `id_jadwal_kereta` int(55) NOT NULL,
  `id_kereta` int(55) NOT NULL,
  `id_rute_kereta` int(55) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_kereta`
--

INSERT INTO `jadwal_kereta` (`id_jadwal_kereta`, `id_kereta`, `id_rute_kereta`, `tanggal_berangkat`, `tanggal_sampai`) VALUES
(8710, 90272, 45461, '2023-06-01', '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pesawat`
--

CREATE TABLE `jadwal_pesawat` (
  `id_jadwal_pesawat` int(55) NOT NULL,
  `id_pesawat` int(55) NOT NULL,
  `id_rute_pesawat` int(55) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_pesawat`
--

INSERT INTO `jadwal_pesawat` (`id_jadwal_pesawat`, `id_pesawat`, `id_rute_pesawat`, `tanggal_berangkat`, `tanggal_sampai`) VALUES
(20291, 21031, 70628, '2023-06-02', '2023-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `kereta-api`
--

CREATE TABLE `kereta-api` (
  `id_kereta` int(55) NOT NULL,
  `nama_kereta` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `kuota_kereta` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kereta-api`
--

INSERT INTO `kereta-api` (`id_kereta`, `nama_kereta`, `kelas`, `kuota_kereta`, `perusahaan`) VALUES
(8291, 'Argo Wilis', 'VIP', '55', 'INDOSA'),
(23234, 'Kencana', 'VIP', '88', 'KAI'),
(60712, 'Kereta Cepat', 'VIP', '55', 'Indonesia'),
(80872, 'Kencana Putra', 'Ekonomi', '88', 'KAI'),
(90272, 'Mutiara', 'VIP', '40', 'PT INDOPRIDE'),
(808012, 'Argo Wilis', 'Ekonomi', '55', 'KAI');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesan`
--

CREATE TABLE `pemesan` (
  `id_pemesan` int(55) NOT NULL,
  `id_pengguna_nama` int(55) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tiket_kereta` int(55) DEFAULT NULL,
  `id_tiket_bus` int(55) DEFAULT NULL,
  `id_tiket_pesawat` int(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesan`
--

INSERT INTO `pemesan` (`id_pemesan`, `id_pengguna_nama`, `tanggal`, `id_tiket_kereta`, `id_tiket_bus`, `id_tiket_pesawat`) VALUES
(92013, 2118016, '2023-06-03', 1123341, NULL, NULL),
(909011, 218912, '2023-06-02', NULL, 1233, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(55) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_ktp` int(55) NOT NULL,
  `warga_negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `no_ktp`, `warga_negara`) VALUES
(218912, 'Anisa Devi Fanelia', 223334252, 'Indonesia'),
(2118016, 'Dimas Rizky', 22333425, 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `id_pesawat` int(55) NOT NULL,
  `nama_pesawat` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `kuota` varchar(255) NOT NULL,
  `perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`id_pesawat`, `nama_pesawat`, `kelas`, `kuota`, `perusahaan`) VALUES
(21031, 'CTLINK', 'VIP', '40', 'PT INDOPRIDE'),
(21881, 'BATIK AIR', 'Ekonomi', '40', 'CTLINK');

-- --------------------------------------------------------

--
-- Table structure for table `rute_bus`
--

CREATE TABLE `rute_bus` (
  `id_rute_bus` int(55) NOT NULL,
  `id_terminal_asal` int(55) NOT NULL,
  `id_terminal_tujuan` int(55) NOT NULL,
  `detail_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rute_bus`
--

INSERT INTO `rute_bus` (`id_rute_bus`, `id_terminal_asal`, `id_terminal_tujuan`, `detail_status`) VALUES
(21312, 23342, 23342, 'siap berangkat'),
(67871, 23342, 23342, 'siap berangkat'),
(80817, 23342, 43212, 'Siap berangkat'),
(123137, 23342, 45122, 'Belum Siap'),
(556778, 45122, 45667, 'Belum Siap');

-- --------------------------------------------------------

--
-- Table structure for table `rute_kereta`
--

CREATE TABLE `rute_kereta` (
  `id_rute_kereta` int(55) NOT NULL,
  `id_stasiun_asal` int(55) NOT NULL,
  `id_stasiun_tujuan` int(55) NOT NULL,
  `detail_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rute_kereta`
--

INSERT INTO `rute_kereta` (`id_rute_kereta`, `id_stasiun_asal`, `id_stasiun_tujuan`, `detail_status`) VALUES
(45461, 2332, 808076, 'Belum Siap');

-- --------------------------------------------------------

--
-- Table structure for table `rute_pesawat`
--

CREATE TABLE `rute_pesawat` (
  `id_rute_pesawat` int(55) NOT NULL,
  `id_bandara_asal` int(55) NOT NULL,
  `id_bandara_tujuan` int(55) NOT NULL,
  `detail_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rute_pesawat`
--

INSERT INTO `rute_pesawat` (`id_rute_pesawat`, `id_bandara_asal`, `id_bandara_tujuan`, `detail_status`) VALUES
(70628, 2411, 22331, 'siap berangkat');

-- --------------------------------------------------------

--
-- Table structure for table `stasiun`
--

CREATE TABLE `stasiun` (
  `id_stasiun` int(55) NOT NULL,
  `nama_stasiun` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stasiun`
--

INSERT INTO `stasiun` (`id_stasiun`, `nama_stasiun`, `kota`, `negara`) VALUES
(2332, 'Sembung', 'Jombang', 'Indonesia'),
(808076, 'Purbalingga', 'Mojokerto', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `terminal`
--

CREATE TABLE `terminal` (
  `id_terminal` int(55) NOT NULL,
  `nama_terminal` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terminal`
--

INSERT INTO `terminal` (`id_terminal`, `nama_terminal`, `kota`, `negara`) VALUES
(23342, 'Rojowinangun', 'Jombang', 'Indonesia'),
(43212, 'Kepuh Sari', 'Jombang', 'Indonesia'),
(45122, 'Kepuh Sari', 'Jombang', 'Indonesia'),
(45667, 'Peterongan', 'Jombang', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tiket_bus`
--

CREATE TABLE `tiket_bus` (
  `id_tiket_bus` int(55) NOT NULL,
  `id_jadwal_bus` int(55) NOT NULL,
  `harga` int(55) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket_bus`
--

INSERT INTO `tiket_bus` (`id_tiket_bus`, `id_jadwal_bus`, `harga`, `tanggal_booking`) VALUES
(1233, 1123, 30000, '2023-06-03'),
(9018, 1123, 29900, '2023-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `tiket_kereta`
--

CREATE TABLE `tiket_kereta` (
  `id_tiket_kereta` int(55) NOT NULL,
  `id_jadwal_kereta` int(55) NOT NULL,
  `harga` int(55) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket_kereta`
--

INSERT INTO `tiket_kereta` (`id_tiket_kereta`, `id_jadwal_kereta`, `harga`, `tanggal_booking`) VALUES
(1123341, 8710, 30000, '2023-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `tiket_pesawat`
--

CREATE TABLE `tiket_pesawat` (
  `id_tiket_pesawat` int(55) NOT NULL,
  `id_jadwal_pesawat` int(55) NOT NULL,
  `harga` int(55) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket_pesawat`
--

INSERT INTO `tiket_pesawat` (`id_tiket_pesawat`, `id_jadwal_pesawat`, `harga`, `tanggal_booking`) VALUES
(21999, 20291, 520000, '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `user_akun`
--

CREATE TABLE `user_akun` (
  `id_user` int(55) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_akun`
--

INSERT INTO `user_akun` (`id_user`, `username`, `password`, `role`) VALUES
(222, 'dimas', '123', 'customer'),
(1233, 'Sadean', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bandara`
--
ALTER TABLE `bandara`
  ADD PRIMARY KEY (`id_bandara`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD PRIMARY KEY (`id_jadwal_bus`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_rute` (`id_rute_bus`);

--
-- Indexes for table `jadwal_kereta`
--
ALTER TABLE `jadwal_kereta`
  ADD PRIMARY KEY (`id_jadwal_kereta`),
  ADD KEY `id_kereta` (`id_kereta`),
  ADD KEY `id_rute_kereta` (`id_rute_kereta`);

--
-- Indexes for table `jadwal_pesawat`
--
ALTER TABLE `jadwal_pesawat`
  ADD PRIMARY KEY (`id_jadwal_pesawat`),
  ADD KEY `id_pesawat` (`id_pesawat`),
  ADD KEY `id_rute_kereta_pesawat` (`id_rute_pesawat`);

--
-- Indexes for table `kereta-api`
--
ALTER TABLE `kereta-api`
  ADD PRIMARY KEY (`id_kereta`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`id_pemesan`),
  ADD KEY `id_pengguna_nama` (`id_pengguna_nama`),
  ADD KEY `id_tiket_kereta` (`id_tiket_kereta`),
  ADD KEY `id_tiket_bus` (`id_tiket_bus`),
  ADD KEY `id_tiket_pesawat` (`id_tiket_pesawat`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `no_ktp` (`no_ktp`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`id_pesawat`);

--
-- Indexes for table `rute_bus`
--
ALTER TABLE `rute_bus`
  ADD PRIMARY KEY (`id_rute_bus`),
  ADD KEY `id_stasiun_asal` (`id_terminal_asal`),
  ADD KEY `id_stasiun_tujuan` (`id_terminal_tujuan`);

--
-- Indexes for table `rute_kereta`
--
ALTER TABLE `rute_kereta`
  ADD PRIMARY KEY (`id_rute_kereta`),
  ADD KEY `id_stasiun_asal` (`id_stasiun_asal`),
  ADD KEY `id_stasiun_tujuan` (`id_stasiun_tujuan`);

--
-- Indexes for table `rute_pesawat`
--
ALTER TABLE `rute_pesawat`
  ADD PRIMARY KEY (`id_rute_pesawat`),
  ADD KEY `id_bandara_asal` (`id_bandara_asal`),
  ADD KEY `id_bandara_tujuan` (`id_bandara_tujuan`);

--
-- Indexes for table `stasiun`
--
ALTER TABLE `stasiun`
  ADD PRIMARY KEY (`id_stasiun`);

--
-- Indexes for table `terminal`
--
ALTER TABLE `terminal`
  ADD PRIMARY KEY (`id_terminal`);

--
-- Indexes for table `tiket_bus`
--
ALTER TABLE `tiket_bus`
  ADD PRIMARY KEY (`id_tiket_bus`),
  ADD KEY `id_jadwal_bus` (`id_jadwal_bus`);

--
-- Indexes for table `tiket_kereta`
--
ALTER TABLE `tiket_kereta`
  ADD PRIMARY KEY (`id_tiket_kereta`),
  ADD KEY `id_jadwal_kereta` (`id_jadwal_kereta`);

--
-- Indexes for table `tiket_pesawat`
--
ALTER TABLE `tiket_pesawat`
  ADD PRIMARY KEY (`id_tiket_pesawat`),
  ADD KEY `id_jadwal_pesawat` (`id_jadwal_pesawat`),
  ADD KEY `harga` (`harga`);

--
-- Indexes for table `user_akun`
--
ALTER TABLE `user_akun`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal_bus`
--
ALTER TABLE `jadwal_bus`
  ADD CONSTRAINT `jadwal_bus_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_bus_ibfk_2` FOREIGN KEY (`id_rute_bus`) REFERENCES `rute_bus` (`id_rute_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_kereta`
--
ALTER TABLE `jadwal_kereta`
  ADD CONSTRAINT `jadwal_kereta_ibfk_1` FOREIGN KEY (`id_kereta`) REFERENCES `kereta-api` (`id_kereta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_kereta_ibfk_2` FOREIGN KEY (`id_rute_kereta`) REFERENCES `rute_kereta` (`id_rute_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_pesawat`
--
ALTER TABLE `jadwal_pesawat`
  ADD CONSTRAINT `jadwal_pesawat_ibfk_1` FOREIGN KEY (`id_pesawat`) REFERENCES `pesawat` (`id_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_pesawat_ibfk_2` FOREIGN KEY (`id_rute_pesawat`) REFERENCES `rute_pesawat` (`id_rute_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD CONSTRAINT `pemesan_ibfk_1` FOREIGN KEY (`id_pengguna_nama`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesan_ibfk_2` FOREIGN KEY (`id_tiket_bus`) REFERENCES `tiket_bus` (`id_tiket_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesan_ibfk_3` FOREIGN KEY (`id_tiket_kereta`) REFERENCES `tiket_kereta` (`id_tiket_kereta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesan_ibfk_4` FOREIGN KEY (`id_tiket_pesawat`) REFERENCES `tiket_pesawat` (`id_tiket_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute_bus`
--
ALTER TABLE `rute_bus`
  ADD CONSTRAINT `rute_bus_ibfk_1` FOREIGN KEY (`id_terminal_asal`) REFERENCES `terminal` (`id_terminal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_bus_ibfk_2` FOREIGN KEY (`id_terminal_tujuan`) REFERENCES `terminal` (`id_terminal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute_kereta`
--
ALTER TABLE `rute_kereta`
  ADD CONSTRAINT `rute_kereta_ibfk_1` FOREIGN KEY (`id_stasiun_asal`) REFERENCES `stasiun` (`id_stasiun`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_kereta_ibfk_2` FOREIGN KEY (`id_stasiun_tujuan`) REFERENCES `stasiun` (`id_stasiun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute_pesawat`
--
ALTER TABLE `rute_pesawat`
  ADD CONSTRAINT `rute_pesawat_ibfk_1` FOREIGN KEY (`id_bandara_asal`) REFERENCES `bandara` (`id_bandara`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_pesawat_ibfk_2` FOREIGN KEY (`id_bandara_tujuan`) REFERENCES `bandara` (`id_bandara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket_bus`
--
ALTER TABLE `tiket_bus`
  ADD CONSTRAINT `tiket_bus_ibfk_1` FOREIGN KEY (`id_jadwal_bus`) REFERENCES `jadwal_bus` (`id_jadwal_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket_kereta`
--
ALTER TABLE `tiket_kereta`
  ADD CONSTRAINT `tiket_kereta_ibfk_1` FOREIGN KEY (`id_jadwal_kereta`) REFERENCES `jadwal_kereta` (`id_jadwal_kereta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tiket_pesawat`
--
ALTER TABLE `tiket_pesawat`
  ADD CONSTRAINT `tiket_pesawat_ibfk_1` FOREIGN KEY (`id_jadwal_pesawat`) REFERENCES `jadwal_pesawat` (`id_jadwal_pesawat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
