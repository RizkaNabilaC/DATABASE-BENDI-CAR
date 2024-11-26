-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2024 pada 08.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_bendicar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `Id_Laporan` int(20) NOT NULL,
  `Id_Peminjam` int(20) NOT NULL,
  `Id_Petugas` int(20) NOT NULL,
  `Tgl_Laporan` date NOT NULL,
  `Total_Denda` int(30) NOT NULL,
  `Keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`Id_Laporan`, `Id_Peminjam`, `Id_Petugas`, `Tgl_Laporan`, `Total_Denda`, `Keterangan`) VALUES
(890, 123, 124, '2024-10-01', 1000000, 'Baik'),
(890, 121, 131, '2024-11-11', 500000, 'Baik'),
(890, 333, 126, '2024-09-12', 700000, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `Id_Peminjam` int(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `No_Hp` int(30) NOT NULL,
  `Identitas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`Id_Peminjam`, `Nama`, `Alamat`, `No_Hp`, `Identitas`) VALUES
(123, 'Ucok', 'Jakarta', 2147483647, 'KTP'),
(121, 'Vincent', 'Bali', 2147483647, 'KTP'),
(333, 'Sakatullah', 'Depok', 832543256, 'KTP'),
(555, 'Samsul', 'Yogyakarta', 2147483647, 'KTP'),
(444, 'Akila', 'Bandung', 2147483647, 'KTP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `Id_Petugas` int(20) NOT NULL,
  `Nama_Petugas` varchar(30) NOT NULL,
  `Jabatan` varchar(30) NOT NULL,
  `Kontak` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`Id_Petugas`, `Nama_Petugas`, `Jabatan`, `Kontak`) VALUES
(765, 'Sapto', 'Staff', 987654567),
(345, 'Surya', 'Staff', 657889086);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
