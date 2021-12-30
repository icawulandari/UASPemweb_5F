-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2021 pada 06.36
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustakaa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) DEFAULT 'book-default-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Dasar Logika Pemrograman Komputer', 1, 'Abdul Kadir', 'Elex Media Komputindo', 2017, '9786020451664', 10, 2, 1, 'book1.jpg'),
(2, 'Passive Income dari Google AdSense', 1, 'Jefferly Helianthusofri', 'Elex Media Komputindo', 2018, '9786020485140, 6020485145', 15, 3, 1, 'book2.jpg'),
(3, 'Kemahiran Berbahasa Indonesia untuk Perguruan Tinggi', 2, 'Yunus Abidin, B. Fariz J. M. Misbah, Adita Widara Putra', 'Bumi Aksara', 2021, '9786022179801, 6022179807', 12, 1, 1, 'book3.jpg'),
(4, 'Bahasa Indonesia untuk Perguruan Tinggi - Rajawali Pers', 2, 'Drs. I Ketut Dibia, S.Pd., M.Pd.', 'PT. RajaGrafindo Persada', 2021, '9786022179802', 11, 2, 0, 'book4.jpg'),
(5, 'Dunia Tanpa Manusia (The World Without Us)', 3, 'Alan Weisman', 'Gramedia', 2007, '9789793925623', 5, 0, 1, 'book5.jpg'),
(6, 'Cosmos', 3, 'Carl Sagan', 'Random House, New York', 1980, '9789793925633', 3, 2, 0, 'book6.jpg'),
(7, 'Si Juki dan petualangan lulus UN', 4, 'Faza Meonk', 'Bukunè', 2015, '9786022200567, 6022200563', 15, 5, 2, 'book7.jpg'),
(8, 'SKETSA DAN KOMIK BERGIZI HAJI BOIM', 4, 'Boim Lebon', 'Republika Penerbit', 2019, '9786025006753, 602500675', 11, 3, 0, 'book8.jpg'),
(9, 'Teknik Praktis Riset komunikasi', 5, 'Rachmat Kriyantono, S.Sos., M.Si', 'Kencana', 2014, '9789793925622, 9793925620', 3, 1, 0, 'book9.jpg'),
(10, 'Komunikasi Antar Budaya Di Era Budaya Siber', 5, 'Rulli Nasrullah', 'Prenada Media', 2018, '9786029413489, 6029413481', 4, 1, 1, 'book10.jpg'),
(11, 'Pengantar Ilmu Hukum', 6, 'Bergas Prana Jaya', 'Anak Hebat Indonesia', 2017, '9786232445796, 6232445791', 3, 1, 1, 'book11.jpg'),
(12, 'Hukum Agraria: Kajian Komprehenshif', 6, 'Dr. Urip Santoso, M.A., S.H., M.H.', 'Prenada Media', 2017, '9786024224851, 6024224850', 5, 0, 2, 'book12.jpg'),
(13, 'Agama untuk Peradaban: Membumikan Etos Agama dalam Kehidupan', 7, 'Komaruddin Hidayat', 'Pustaka Alvabet', 2019, '9786232200524, 6232200527', 14, 3, 1, 'book13.jpg'),
(14, 'Buku Lengkap Pengetahuan Agama Islam untuk Muslim Cilik', 7, 'Aifa Syah', 'NOKTAH', 2020, '9786025781292, 602578129', 21, 5, 3, 'book14.jpg'),
(15, 'Bumi', 8, 'Tere Liye', 'Gramedia Pustaka Utama', 2016, '9786020332956, 6020332950', 30, 10, 5, 'book15.jpg'),
(16, 'Kata', 8, 'Rintik Sedu', 'PT Gramedia Pustaka Utama', 2018, '9789797809324, 9797809323', 31, 10, 3, 'book16.jpg'),
(17, 'SANG PENJELAJAH ILMU', 9, 'Vita Agustina', 'Republika Penerbit', 2019, '9786025734595, 6025734593', 21, 3, 1, 'book17.jpg'),
(18, 'Justin Bieber Never Say Never', 9, 'Chas Newkey-Burden', 'PT Republik Media Kreatif', 2010, '9786028801560, 6028801569', 20, 3, 3, 'book18.jpg'),
(19, 'Kamus linguistik', 10, 'Harimurti Kridalaksana', 'Gramedia Pustaka Utama', 2008, '9789792235708, 9792235701', 7, 2, 2, 'book19.jpg'),
(20, 'Kamus Indonesia - Portugis # Portugis - Indonesia', 10, 'Yohanes Manhitu', 'Gramedia Pustaka Utama', 2016, '9786020308333, 6020308332', 4, 1, 1, 'book20.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Komik'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Novel'),
(9, 'Biografi'),
(10, 'Kamus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Ica Wulandari', 'Perum Palm Asri Blok C No.1', 'icawlndr34@gmail.com', 'default.jpg', '3d2dd7a9a090babff19bf9d0d1eb29b2', 1, 1, 1638738320),
(2, 'Ica Wulandari', 'Perum Palm Asri Blok C No.1', 'icawlndr34@gmail.com', 'default.jpg', '246249f19bec0c299ec932bb2f077dd2', 2, 1, 1638746326),
(3, 'Nina', 'Perum Palm Asri Blok C No.2', 'nina_nina34@gmail.com', 'default.JPG', '13d5c4f0d8e8e7d2312648dbf78f3225', 1, 1, 1638746479),
(4, 'Ica Wulandari', 'Perum Palm Asri Blok C No.1', 'icawulandari34@gmail.com', 'default.jpg', '30cfa14746befb73953f6a987c5810fa', 1, 1, 1638768781);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indeks untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
