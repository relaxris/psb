-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2025 pada 09.00
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
-- Database: `psb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya`
--

CREATE TABLE `biaya` (
  `kd_biaya` varchar(20) NOT NULL,
  `rincian` varchar(100) NOT NULL,
  `nominal` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `biaya`
--

INSERT INTO `biaya` (`kd_biaya`, `rincian`, `nominal`) VALUES
('BY001', 'Pendaftaran', 100000),
('BY002', 'Formulir', 100000),
('BY003', 'Komite', 30000),
('BY004', 'Seragam Batik', 95000),
('BY005', 'Seragam Muslim', 90000),
('BY006', '1 Set Seragam Olahraga', 140000),
('BY007', 'Atribut', 100000),
('BY008', 'Matsama', 75000),
('BY009', 'Raport', 70000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `tgl` varchar(20) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `asal_sekolah` varchar(50) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nomor_kk` varchar(20) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `n_ayah` varchar(150) NOT NULL,
  `k_ayah` varchar(150) NOT NULL,
  `n_ibu` varchar(150) NOT NULL,
  `k_ibu` varchar(150) NOT NULL,
  `n_wali` varchar(150) NOT NULL,
  `k_wali` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `daftar`
--

INSERT INTO `daftar` (`tgl`, `nama`, `jenis`, `asal_sekolah`, `nisn`, `nik`, `nomor_kk`, `ttl`, `alamat`, `n_ayah`, `k_ayah`, `n_ibu`, `k_ibu`, `n_wali`, `k_wali`) VALUES
('2025-04-10', 'Haris', 'Laki-Laki', 'Az-Zahra', '202243500726', '31719809900998', '31719809900998', 'Jakarta 26 Januari 2001', 'Jakarta Pusat', 'Harry', 'Pengusaha', 'Floryn', 'Ibu Rumah Tangga', '-', '-'),
('2025-04-26', 'Maul', 'Laki-Laki', 'Al-Hidayah', '20224350890', '20224350890', '20224350890', 'Bogor 26 Mei 2015', 'Depok', 'Waluyo', 'Presiden', 'Lucy', 'Business Woman', '-', '-'),
('2025-05-19', 'Megan Fox', 'Perempuan', 'Cikal ', '28977899', '31719809897776', '31716574883637', 'Bogor 25 Mei 2019', 'Kuningan', 'Dodi', 'Pilot', 'Lexy', 'IRT', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `jenis_kelamin`, `password`) VALUES
('202243500890', 'MAUL', 'Laki-Laki', 'Test123'),
('202243500891', 'SRI MULYANI', 'Perempuan', 'Akusuka12'),
('202243500892', 'DAPHNE', 'Perempuan', 'YASpaq12'),
('202243500893', 'SAIPUL', 'Laki-Laki', 'Tokoil12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(20) NOT NULL,
  `kd_biaya` varchar(20) NOT NULL,
  `nominal` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_biaya`, `nominal`) VALUES
('MA0001', 'BY001', 100000),
('MA0001', 'BY002', 100000),
('MA0001', 'BY009', 70000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(25) NOT NULL,
  `jenis_mapel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `jenis_mapel`) VALUES
('MPL001', 'MATEMATIKA', 'Umum'),
('MPL002', 'BAHASA INDONESIA', 'Umum'),
('MPL003', 'PENDIDIKAN JASMANI', 'Umum'),
('MPL004', 'SENI BUDAYA', 'Umum'),
('MPL005', 'PENDIDIKAN AGAMA ISLAM', 'Agama'),
('MPL006', 'FIQIH', 'Agama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(20) NOT NULL,
  `tgl_nota` varchar(25) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `nisn`, `nip`) VALUES
('MA0001', '2025-05-21', '20224350890', '202243500890');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `nip` varchar(20) NOT NULL,
  `id_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(25) NOT NULL,
  `jenis_mapel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`nip`, `id_mapel`, `nama_mapel`, `jenis_mapel`) VALUES
('202243500891', 'MPL005', 'PENDIDIKAN AGAMA ISLAM', 'Agama');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`kd_biaya`);

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
