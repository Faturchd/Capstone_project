-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table apotek.month: ~12 rows (approximately)
DELETE FROM `month`;
/*!40000 ALTER TABLE `month` DISABLE KEYS */;
INSERT INTO `month` (`month_num`, `month_name`) VALUES
	(1, 'Januari'),
	(2, 'Februari'),
	(3, 'Maret'),
	(4, 'April'),
	(5, 'Mei'),
	(6, 'Juni'),
	(7, 'Juli'),
	(8, 'Agustus'),
	(9, 'September'),
	(10, 'Oktober'),
	(11, 'November'),
	(12, 'Desember');
/*!40000 ALTER TABLE `month` ENABLE KEYS */;

-- Dumping data for table apotek.table_cat: ~4 rows (approximately)
DELETE FROM `table_cat`;
/*!40000 ALTER TABLE `table_cat` DISABLE KEYS */;
INSERT INTO `table_cat` (`id_kat`, `nama_kategori`, `des_kat`) VALUES
	(201, 'Anti Radang', 'Melegakan peradangan'),
	(207, 'Antioksidan', 'Mencegah penuaan dini'),
	(208, 'Anti Depresan', 'Mengurangi depresi');
/*!40000 ALTER TABLE `table_cat` ENABLE KEYS */;

-- Dumping data for table apotek.table_invoice: ~10 rows (approximately)
DELETE FROM `table_invoice`;
/*!40000 ALTER TABLE `table_invoice` DISABLE KEYS */;
INSERT INTO `table_invoice` (`id_tagihan`, `ref`, `nama_obat`, `harga_jual`, `banyak`, `subtotal`, `nama_pembeli`, `tgl_beli`, `grandtotal`) VALUES
	(87, 'xl23Q6whsP', 'Salbutamol', 10000, 3, 30000, 'Melinda', '2018-01-10', 30000),
	(90, '9ab7RcZHma', 'Adrome', 15000, 6, 90000, 'Doni', '2018-02-14', 90000),
	(91, 'fAMEjr9rA0', 'Ambroxol', 22000, 5, 110000, 'Amirullah', '2018-03-14', 110000),
	(92, 'so5518T1vI', 'Salbutamol', 10000, 6, 60000, 'Doni', '2018-04-18', 60000),
	(99, 'nyptFm9i43', 'Stimuno', 10000, 3, 30000, 'Andi', '2018-06-13', 30000),
	(105, 'zPpAfLsmd7', 'Adrome', 15000, 1, 15000, 'Amila', '2018-05-16', 25000),
	(106, 'zPpAfLsmd7', 'Amoxilin', 10000, 1, 10000, 'Amila', '2018-05-16', 25000);
/*!40000 ALTER TABLE `table_invoice` ENABLE KEYS */;

-- Dumping data for table apotek.table_med: ~6 rows (approximately)
DELETE FROM `table_med`;
/*!40000 ALTER TABLE `table_med` DISABLE KEYS */;
INSERT INTO `table_med` (`id_obat`, `nama_obat`, `penyimpanan`, `stok`, `unit`, `nama_kategori`, `kedaluwarsa`, `des_obat`, `harga_beli`, `harga_jual`, `nama_pemasok`, `gambar`) VALUES
	(1008, 'Asam Mefenamat', 'Gudang', 11, 'Semprot', 'Antioksidan', '2020-07-20', 'Untuk meringankan gejala nyeri', 4000, 4000, 'Bina Jaya Apotek', ''),
	(1018, 'Adrome', 'Gudang', -1, 'Kapsul', 'Stimulan', '2020-08-20', 'Tidak untuk kucing', 12000, 15000, 'Kenanga Apotek', ''),
	(1023, 'Ambroxol', 'Lemari 1', -2, 'Semprot', 'Anti Radang', '2014-08-20', '', 20000, 22000, 'Kenanga Apotek', ''),
	(1025, 'Amoxilin', 'Rak 1', 9, 'Semprot', 'Anti Radang', '2018-12-14', '', 7000, 10000, 'Tina Farma', ''),
	(1026, 'Cetirizen', 'Rak 1', 0, 'Tablet', 'Anti Radang', '2020-01-20', '', 2000, 3000, 'Kenanga Apotek', ''),
	(1038, 'Panadol', 'rak1', 10, 'Kapsul', 'Anti Radang', '2023-02-01', 'untuk meredakan nyeri', 2000, 2500, 'Kimia Farma', '');
/*!40000 ALTER TABLE `table_med` ENABLE KEYS */;

-- Dumping data for table apotek.table_purchase: ~7 rows (approximately)
DELETE FROM `table_purchase`;
/*!40000 ALTER TABLE `table_purchase` DISABLE KEYS */;
INSERT INTO `table_purchase` (`id_pembelian`, `ref`, `nama_obat`, `harga_beli`, `banyak`, `subtotal`, `nama_pemasok`, `tgl_beli`, `grandtotal`) VALUES
	(8, 'pwoaFcmGVs', 'Asam Mefenamat', 4000, 12, 48000, 'Bina Jaya Apotek', '2018-02-22', 48000),
	(9, '96kHYMepS9', 'Salbutamol', 6000, 7, 42000, 'Bina Jaya Apotek', '2018-03-21', 42000),
	(10, 'Tbb6pLVCJr', 'Ambroxol', 20000, 4, 80000, 'Bina Jaya Apotek', '2018-01-24', 80000),
	(11, 'fdMGrBa4nS', 'Stimuno', 6000, 16, 96000, 'Bina Jaya Apotek', '2018-04-18', 96000),
	(12, 'aDxtUA0rsc', 'Adrome', 12000, 6, 72000, 'Bina Jaya Apotek', '2018-05-09', 72000),
	(15, 'Ar9235n1ny', 'Adrome', 12000, 3, 36000, 'Kenanga Apotek', '2018-06-06', 56000),
	(16, 'Ar9235n1ny', 'Ambroxol', 20000, 1, 20000, 'Kenanga Apotek', '2018-06-06', 56000);
/*!40000 ALTER TABLE `table_purchase` ENABLE KEYS */;

-- Dumping data for table apotek.table_sup: ~3 rows (approximately)
DELETE FROM `table_sup`;
/*!40000 ALTER TABLE `table_sup` DISABLE KEYS */;
INSERT INTO `table_sup` (`id_pem`, `nama_pemasok`, `alamat`, `telepon`) VALUES
	(101, 'Bina Jaya Apotek', 'Jalan Ciawi', '1234'),
	(103, 'Kimia Farma', 'Jalan Kaliurang', '02574555'),
	(104, 'Tina Farma', 'Jalan Kaliurang', '08775544');
/*!40000 ALTER TABLE `table_sup` ENABLE KEYS */;

-- Dumping data for table apotek.table_unit: ~3 rows (approximately)
DELETE FROM `table_unit`;
/*!40000 ALTER TABLE `table_unit` DISABLE KEYS */;
INSERT INTO `table_unit` (`id_unit`, `unit`) VALUES
	(1, 'Kapsul'),
	(2, 'Semprot'),
	(3, 'Sirup');
/*!40000 ALTER TABLE `table_unit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
