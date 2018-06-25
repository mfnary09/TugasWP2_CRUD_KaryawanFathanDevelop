-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Jun 2018 pada 12.08
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`, `email`, `gambar`, `status`) VALUES
(1, 'mfebriansyah', '1234', 'mfn.ary09@gmail.com', 'logo_fat.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `gaji` int(50) NOT NULL,
  `departemen` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`nip`, `nama`, `gambar`, `alamat`, `gaji`, `departemen`, `sex`, `status`, `no_telp`) VALUES
('FTH-0001', 'Muhammad Febriansyah', 'fe.jpg', 'Jl. Rajawali Timur No. 269/79, Bandung', 7000000, 'Manager', 'Laki-Laki', 'Tetap', '085332254544'),
('FTH-0002', 'David Aprilian Doko', '20449312_502779433399452_4846219294431263036_o.jpg', 'Jl. Sangkurian, No 20 Cimahi', 3000000, 'Keuangan', 'Laki-Laki', 'Tetap', '085312445566'),
('FTH-0003', 'Rayhan Firdaus', '37930_112800148780720_8137615_n.jpg', 'JL. Kamarung, No. 22 Cimahi', 5000000, 'Personal', 'Laki-Laki', 'Tetap', '08532325566'),
('FTH-0004', 'Tarmedi', '13087016_1175662255786093_2230492271399424037_o.jpg', 'JL. Cisaranten Kulon Bandung', 3000000, 'Pemasaran', 'Laki-Laki', 'Kontrak', '085318588770'),
('FTH-0005', 'Nurrohman', '33527062_1850375761688833_3802595565196279808_n.jpg', 'JL. Venus No. 6 Bandung', 7000000, 'Personal', 'Laki-Laki', 'Tetap', '085612347799'),
('FTH-0006', 'Susi Susilawati', '183650_148193445241330_983001_n.jpg', 'Jl. Kota baru No. 69. Cimahi', 4000000, 'ADM', 'Perempuan', 'Tetap', '081566785001'),
('FTH-0007', 'Hesty Dwijayanti', '11202659_946663272061006_1156719465670073607_n.jpg', 'Jl. Pasar Atas no.9 . Cimahi', 3500000, 'Manager', 'Perempuan', 'Kontrak', '085312445566'),
('FTH-0008', 'Dani Maulana', '15252617_1467992889898219_8780140151704314432_o.jpg', 'Jl. Gede Bangkong no 5. Padalarang', 5500000, 'Keuangan', 'Laki-Laki', 'Tetap', '081678905423'),
('FTH-0009', 'Winda Nuraida', '11202659_946663272061006_1156719465670073607_n.jpg', 'Jl. Cirata no.9 Cikalong Wetan', 3000000, 'ADM', 'Perempuan', 'Kontrak', '0877786561506'),
('FTH-0010', 'Ariana', '734469_740871755934187_409307503163149226_n.jpg', 'JL. Holis No.22/B1 Bandung', 2000000, 'Pabrik', 'Laki-Laki', 'Kontrak', '087748300201'),
('FTH-0011', 'Dianzen iqbal', '523818_328678203858604_431956087_n.jpg', 'Jl. Cihanjuang no 56 .cimahi', 5000000, 'Regional', 'Laki-Laki', 'Tetap', '083285800102');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
