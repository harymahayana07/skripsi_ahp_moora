-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 11:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_ahp_moora`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nip` varchar(21) NOT NULL,
  `nama` text NOT NULL,
  `pendidikan_terakhir` varchar(4) NOT NULL,
  `jk` varchar(9) NOT NULL,
  `pengajaran` int(11) DEFAULT NULL,
  `pm_jumlah` int(11) DEFAULT NULL,
  `pm_sbg` int(11) DEFAULT NULL,
  `penelitian_jml` int(11) DEFAULT NULL,
  `penelitian_jurnal` int(11) DEFAULT NULL,
  `absen_fp` int(11) DEFAULT NULL,
  `absen_apel` int(11) DEFAULT NULL,
  `ang_kep` int(11) NOT NULL,
  `jab_dos` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Berkas` varchar(150) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `size` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_on` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `id_periode`, `kode`, `nip`, `nama`, `pendidikan_terakhir`, `jk`, `pengajaran`, `pm_jumlah`, `pm_sbg`, `penelitian_jml`, `penelitian_jurnal`, `absen_fp`, `absen_apel`, `ang_kep`, `jab_dos`, `email`, `Berkas`, `username`, `password`, `size`, `status`, `status_on`) VALUES
(1, 1, 'A01', '197609012009122001', 'srirahayu puspawati, m.a. ', '2', '2', 2, 1, 1, 1, 1, 4, 3, 4, 4, 'test@gmail.com', 'srirahayu puspawati, m.a. -berkas_penunjang.pdf', 'puspawati', '$2y$10$jSDxzgKyvsfPKE4rU2HnteXe7mMTzWOmAtNq1J.y1oszA1BolaQSO', '26501', 1, 0),
(2, 1, 'A02', '198407162009122003', 'nengah sukendri, s.e.,m.pd.h. ', '2', '2', 3, 1, 1, 1, 2, 4, 3, 4, 4, 'test@gmail.com', 'nengah sukendri, s.e.,m.pd.h. -berkas_penunjang.pdf', 'sukendri', '$2y$10$1JtEulpp2wLi7Yv./.K3reWNQwjelw70pAHDstW4JLJlnqjxMHswq', '26501', 1, 0),
(3, 1, 'A03', '199303052019032012', 'ni putu ari aryawati, m.si. ', '2', '2', 2, 1, 3, 1, 3, 4, 2, 3, 2, 'test@gmail.com', 'ni putu ari aryawati, m.si. -berkas_penunjang.pdf', 'aryawati', '$2y$10$cPTqPUxGtJQBgg8v5wXKfu2.5UKmHbIavcsc74rTHN3aZ4g9NM/Ui', '26501', 1, 0),
(4, 1, 'A04', '198404162019032010', 'ni luh putu anom pancawati, m.ak. ', '2', '2', 3, 1, 1, 1, 2, 4, 3, 3, 2, 'test@gmail.com', 'ni luh putu anom pancawati, m.ak. -berkas_penunjang.pdf', 'pancawati', '$2y$10$dHH40eMP9YLAWDhEJdEH9.DbYt8/TZIXtwhDP9ox8ktHCegfkDgAS', '26501', 1, 0),
(5, 1, 'A05', '199506292019032011', 'indah supabawati kusuma negara, m.m. ', '2', '2', 2, 1, 2, 2, 3, 2, 2, 3, 2, 'test@gmail.com', 'indah supabawati kusuma negara, m.m. -berkas_penunjang.pdf', 'negara', '$2y$10$BhYERv2GCBg0dmnD74KgmOn/3P9UvF/dRfar21it4ob8ysCg6JvLS', '26501', 1, 0),
(6, 1, 'A06', '199211062019032013', 'ni nyoman suli asmara yanti, m.m. ', '2', '2', 3, 1, 3, 1, 3, 2, 3, 4, 2, 'test@gmail.com', 'ni nyoman suli asmara yanti, m.m. -berkas_penunjang.pdf', 'yanti', '$2y$10$uSlAuj54GdUUjRq4c5J6uu1TS70iXK4TgHAYjntFW/XUWqB6nxaCW', '26501', 1, 0),
(7, 1, 'A07', '199001222019031012', 'i made ngurah oka mahardika, m.m. ', '2', '1', 3, 1, 1, 2, 3, 3, 2, 2, 2, 'test@gmail.com', 'i made ngurah oka mahardika, m.m. -berkas_penunjang.pdf', 'mahardika', '$2y$10$HnLmeXnO2y9B8MjeFyCCbutgCHjzbBp7xCGhj6yiE04E6VJu163JC', '26501', 1, 0),
(8, 1, 'A08', '198609092019081001', 'i gede bayu wijaya, m.m. ', '2', '1', 3, 1, 1, 2, 3, 4, 3, 2, 2, 'test@gmail.com', 'i gede bayu wijaya, m.m. -berkas_penunjang.pdf', 'wijaya', '$2y$10$fMxXMu7CLwB9f3n0I5YbRe6QvHKEuo6rLCQQE.3n4VIqsOCdfzQD2', '26501', 1, 0),
(9, 1, 'A09', '198604202019031005', 'wihelmus jemarut, m.h. ', '2', '1', 3, 1, 1, 2, 3, 4, 3, 3, 2, 'test@gmail.com', 'wihelmus jemarut, m.h. -berkas_penunjang.pdf', 'jemarut', '$2y$10$G5IHNkp6q1t1N..a75x1wOsW.z4OSSP85alSezY34m./wOMcnkDfe', '26501', 1, 0),
(10, 1, 'A10', '199211272020121015', 'edy chandra, m.i.kom. ', '2', '1', 4, 1, 2, 1, 1, 4, 3, 2, 2, 'test@gmail.com', 'edy chandra, m.i.kom. -berkas_penunjang.pdf', 'chandra', '$2y$10$XhSd8Z38FOsMsN.1FMUAJ.g4FB65fVVe2uLqkDA2.zHVCApOs5kOe', '26501', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bobot_kriteria`
--

CREATE TABLE `bobot_kriteria` (
  `id_bobot` int(10) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bobot_kriteria`
--

INSERT INTO `bobot_kriteria` (`id_bobot`, `id_kriteria`, `nilai`) VALUES
(7, 8, 0.283124),
(8, 9, 0.267534),
(9, 10, 0.242857),
(10, 11, 0.0918255),
(11, 12, 0.114659);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(10) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tanggal` datetime NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `id_periode`, `nilai`, `tanggal`, `ket`) VALUES
(11, 6, 1, 0.676114, '2023-05-03 02:07:23', 'baik'),
(12, 3, 1, 0.638712, '2023-05-03 02:07:23', 'baik'),
(13, 9, 1, 0.637771, '2023-05-03 02:07:23', 'baik'),
(14, 5, 1, 0.627026, '2023-05-03 02:07:23', 'baik'),
(15, 8, 1, 0.626068, '2023-05-03 02:07:23', 'baik'),
(16, 7, 1, 0.607381, '2023-05-03 02:07:23', 'baik'),
(17, 2, 1, 0.596003, '2023-05-03 02:07:23', 'baik'),
(18, 10, 1, 0.592136, '2023-05-03 02:07:23', 'baik'),
(19, 4, 1, 0.555636, '2023-05-03 02:07:23', 'baik'),
(20, 1, 1, 0.53438, '2023-05-03 02:07:23', 'baik');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `id` int(3) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_kriteria` varchar(40) NOT NULL,
  `jenis_kriteria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `id`, `kode`, `nama_kriteria`, `jenis_kriteria`) VALUES
(8, 2, 'C1', 'Pendidikan Dan Pengajaran', 'Benefit'),
(9, 2, 'C2', 'Pengabdian Masyarakat', 'Benefit'),
(10, 2, 'C3', 'Penelitian', 'Benefit'),
(11, 2, 'C4', 'Disiplin Asn', 'Benefit'),
(12, 2, 'C5', 'Unsur Penunjang', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_alt`
--

CREATE TABLE `nilai_alt` (
  `id_nilai` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_subkriteria` int(5) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_alt`
--

INSERT INTO `nilai_alt` (`id_nilai`, `id_kriteria`, `id_subkriteria`, `id_alternatif`, `nilai`) VALUES
(1, 8, 21, 1, 2),
(2, 8, 22, 1, 2),
(3, 9, 23, 1, 1),
(4, 9, 24, 1, 1),
(5, 10, 25, 1, 1),
(6, 10, 26, 1, 1),
(7, 11, 27, 1, 4),
(8, 11, 28, 1, 3),
(9, 12, 29, 1, 4),
(10, 12, 30, 1, 4),
(11, 8, 21, 2, 2),
(12, 8, 22, 2, 3),
(13, 9, 23, 2, 1),
(14, 9, 24, 2, 1),
(15, 10, 25, 2, 1),
(16, 10, 26, 2, 2),
(17, 11, 27, 2, 4),
(18, 11, 28, 2, 3),
(19, 12, 29, 2, 4),
(20, 12, 30, 2, 4),
(21, 8, 21, 3, 2),
(22, 8, 22, 3, 2),
(23, 9, 23, 3, 1),
(24, 9, 24, 3, 3),
(25, 10, 25, 3, 1),
(26, 10, 26, 3, 3),
(27, 11, 27, 3, 4),
(28, 11, 28, 3, 2),
(29, 12, 29, 3, 3),
(30, 12, 30, 3, 2),
(31, 8, 21, 4, 2),
(32, 8, 22, 4, 3),
(33, 9, 23, 4, 1),
(34, 9, 24, 4, 1),
(35, 10, 25, 4, 1),
(36, 10, 26, 4, 2),
(37, 11, 27, 4, 4),
(38, 11, 28, 4, 3),
(39, 12, 29, 4, 3),
(40, 12, 30, 4, 2),
(41, 8, 21, 5, 2),
(42, 8, 22, 5, 2),
(43, 9, 23, 5, 1),
(44, 9, 24, 5, 2),
(45, 10, 25, 5, 2),
(46, 10, 26, 5, 3),
(47, 11, 27, 5, 2),
(48, 11, 28, 5, 2),
(49, 12, 29, 5, 3),
(50, 12, 30, 5, 2),
(51, 8, 21, 6, 2),
(52, 8, 22, 6, 3),
(53, 9, 23, 6, 1),
(54, 9, 24, 6, 3),
(55, 10, 25, 6, 1),
(56, 10, 26, 6, 3),
(57, 11, 27, 6, 2),
(58, 11, 28, 6, 3),
(59, 12, 29, 6, 4),
(60, 12, 30, 6, 2),
(61, 8, 21, 7, 2),
(62, 8, 22, 7, 3),
(63, 9, 23, 7, 1),
(64, 9, 24, 7, 1),
(65, 10, 25, 7, 2),
(66, 10, 26, 7, 3),
(67, 11, 27, 7, 3),
(68, 11, 28, 7, 2),
(69, 12, 29, 7, 2),
(70, 12, 30, 7, 2),
(71, 8, 21, 8, 2),
(72, 8, 22, 8, 3),
(73, 9, 23, 8, 1),
(74, 9, 24, 8, 1),
(75, 10, 25, 8, 2),
(76, 10, 26, 8, 3),
(77, 11, 27, 8, 4),
(78, 11, 28, 8, 3),
(79, 12, 29, 8, 2),
(80, 12, 30, 8, 2),
(81, 8, 21, 9, 2),
(82, 8, 22, 9, 3),
(83, 9, 23, 9, 1),
(84, 9, 24, 9, 1),
(85, 10, 25, 9, 2),
(86, 10, 26, 9, 3),
(87, 11, 27, 9, 4),
(88, 11, 28, 9, 3),
(89, 12, 29, 9, 3),
(90, 12, 30, 9, 2),
(91, 8, 21, 10, 2),
(92, 8, 22, 10, 4),
(93, 9, 23, 10, 1),
(94, 9, 24, 10, 2),
(95, 10, 25, 10, 1),
(96, 10, 26, 10, 1),
(97, 11, 27, 10, 4),
(98, 11, 28, 10, 3),
(99, 12, 29, 10, 2),
(100, 12, 30, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_ir`
--

CREATE TABLE `nilai_ir` (
  `id` int(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_ir`
--

INSERT INTO `nilai_ir` (`id`, `jumlah`, `nilai`, `keterangan`) VALUES
(1, 1, 0, 'Kedua elemen sama penting'),
(1, 2, 0, 'nilai berada diantara dua nilai pertimbangan yang berdekatan'),
(1, 3, 0.58, 'elemen yang satu sedikit lebih penting dari elem lainnya'),
(1, 4, 0.9, 'nilai berada diantara dua nilai pertimbangan yang berdekatan'),
(1, 5, 1.12, 'elemen satu lebih penting dari elemen yang lain'),
(1, 6, 1.24, 'nilai diantara dua nilaipertimbangan yang berdekatan'),
(1, 7, 1.32, 'satu elemen jelas lebih mutlak penting dari pada elemen yang lainnya'),
(1, 8, 1.41, 'nilai berada diantara dua nilai pertimbangan yang berdekatan\r\n'),
(1, 9, 1.45, 'satu elemen mutlak lebih penting dari pada elemen yang lain'),
(0, 10, 1.49, ''),
(0, 11, 1.51, ''),
(0, 12, 1.48, ''),
(0, 13, 1.56, ''),
(0, 14, 1.57, ''),
(0, 15, 1.59, '');

-- --------------------------------------------------------

--
-- Table structure for table `perhitungan`
--

CREATE TABLE `perhitungan` (
  `id_perangkingan` int(5) NOT NULL,
  `kriteria1` int(5) NOT NULL,
  `kriteria2` int(5) NOT NULL,
  `nilai_perbandingan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perhitungan`
--

INSERT INTO `perhitungan` (`id_perangkingan`, `kriteria1`, `kriteria2`, `nilai_perbandingan`) VALUES
(15, 8, 9, 0.5),
(16, 8, 10, 2),
(17, 8, 11, 3),
(18, 8, 12, 3),
(19, 9, 10, 0.5),
(20, 9, 11, 2),
(21, 9, 12, 3),
(22, 10, 11, 2),
(23, 10, 12, 2),
(24, 11, 12, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

CREATE TABLE `periode` (
  `id_periode` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tahun_awal` year(4) NOT NULL,
  `tahun_akhir` year(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`id_periode`, `tanggal`, `tahun_awal`, `tahun_akhir`, `status`) VALUES
(1, '2023-04-15 14:00:00', 2022, 2023, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(5) NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `code`, `email`) VALUES
(17, '15ff497abaac5c', 'lili@gmail.com'),
(18, '15ff51f01c05db', 'aayhumairoh29@gmail.com'),
(19, '164520ab07f069', ''),
(20, '164520cbd68cb0', '');

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_subkriteria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `kode`, `nama_subkriteria`) VALUES
(21, 8, 'C1.1', 'Pendidikan Terakhir Dosen'),
(22, 8, 'C1.2', 'Penilaian Dari Mahasiswa'),
(23, 9, 'C2.1', 'Jumlah Pengabdian'),
(24, 9, 'C2.2', 'Jabatan Saat Pengabdian'),
(25, 10, 'C3.1', 'Jumlah penelitian'),
(26, 10, 'C3.2', 'Penelitian Jurnal'),
(27, 11, 'C4.1', 'Absen FP'),
(28, 11, 'C4.2', 'Absen Apel Senin'),
(29, 12, 'C5.1', 'Anggota Panitia'),
(30, 12, 'C5.2', 'Jabatan Fungsional');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(25) NOT NULL,
  `status_on` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_admin`, `username`, `password`, `level`, `status_on`) VALUES
(119, 'admin', '$2y$10$q0iZSsse/YPMGwJHqH3aUu6S/QsnRCTsbDtYw/Yf15XG86f3CCdO2', 'admin', 0),
(121, 'penilai', '$2y$10$q0iZSsse/YPMGwJHqH3aUu6S/QsnRCTsbDtYw/Yf15XG86f3CCdO2', 'operator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `web_set`
--

CREATE TABLE `web_set` (
  `id_set` int(11) NOT NULL,
  `status_web` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_set`
--

INSERT INTO `web_set` (`id_set`, `status_web`) VALUES
(1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_alt`
--
ALTER TABLE `nilai_alt`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `nilai_ir`
--
ALTER TABLE `nilai_ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indexes for table `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD PRIMARY KEY (`id_perangkingan`);

--
-- Indexes for table `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `web_set`
--
ALTER TABLE `web_set`
  ADD PRIMARY KEY (`id_set`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  MODIFY `id_bobot` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nilai_alt`
--
ALTER TABLE `nilai_alt`
  MODIFY `id_nilai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `perhitungan`
--
ALTER TABLE `perhitungan`
  MODIFY `id_perangkingan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `web_set`
--
ALTER TABLE `web_set`
  MODIFY `id_set` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
