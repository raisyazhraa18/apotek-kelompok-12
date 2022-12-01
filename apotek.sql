-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 04:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`) VALUES
(1, 'rabiahtuladawiah', '112704', 'Rabiahtul Adawiah'),
(2, 'raisyadwi', '112303', 'Raisya Dwi'),
(3, 'silvanamaretha', '123242', 'Silvana Maretha'),
(4, 'yasminmufida', '161123', 'Yasmin Mufida'),
(5, 'yolandaesther', '181124', 'Yolanda Esther');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `id` int(4) NOT NULL,
  `kode_pesan` varchar(7) NOT NULL,
  `kode_obat` char(5) NOT NULL,
  `jumlah` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`id`, `kode_pesan`, `kode_obat`, `jumlah`) VALUES
(1, '8X60SSU', 'A0001', 1),
(2, '8X60SSU', 'A0002', 20),
(6, '2GH3B48', 'A0001', 26),
(7, '2GH3B48', 'A0002', 33),
(8, '2GH3B48', 'C0001', 13),
(9, 'FAVEJLI', 'B0002', 30),
(10, 'FAVEJLI', 'C0001', 25),
(11, 'FAVEJLI', 'A0004', 30),
(12, 'Q6X46CZ', 'A0001', 15),
(13, 'Q6X46CZ', 'A0003', 20),
(14, 'Q6X46CZ', 'C0001', 10),
(15, 'UBEV4VC', 'A0001', 200),
(16, 'UBEV4VC', 'A0002', 10),
(18, 'S244QXZ', 'D0001', 20),
(19, 'S244QXZ', 'A0004', 10),
(21, 'HACW9GN', 'D0001', 5),
(22, 'HACW9GN', 'A0001', 20),
(24, 'SWWY31J', 'C0001', 10),
(25, 'RLD8TNN', 'A0001', 1),
(26, 'CZOH7FU', 'A0001', 2),
(27, 'NMZIZWB', 'A0005', 1),
(28, 'RMP7JJ2', 'A0002', 2),
(29, '3O9N2DV', 'B0001', 4),
(30, 'DI58UUF', 'B0001', 3),
(31, '81UZM8R', 'M0013', 5),
(32, '5A4KOD3', 'A0003', 3),
(33, 'VX6NRG8', 'A0006', 2),
(34, 'C97HT82', 'A0001', 2),
(35, 'SHT0SPB', 'A0006', 4),
(36, '4NRL9I7', 'F0001', 2);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(4) NOT NULL,
  `kode_obat` char(5) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `id_session` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `kode_obat`, `jumlah`, `id_session`) VALUES
(21, 'A0001', 10, 'aysho3ajxv6ounnldf3k9n47sr68sxlspz5aqwkx'),
(22, 'A0002', 20, 'aysho3ajxv6ounnldf3k9n47sr68sxlspz5aqwkx');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kode_obat` char(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bentuk` varchar(100) NOT NULL,
  `konsumen` varchar(100) NOT NULL,
  `manfaat` varchar(200) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kode_obat`, `nama`, `bentuk`, `konsumen`, `manfaat`, `harga`) VALUES
('A0001', 'Acarbose', 'Tablet, Kapsul', 'Dewasa', 'Mengontrol kadar gula dalam darah', 5000),
('A0002', 'Albumin', 'Obat infus', 'Dewasa', 'Menangani defisiensi albumin', 10000),
('A0003', 'Amfetamin', 'Tablet, kapsul, dan puyer', 'Dewasa dan anak-anak', 'Menangani ADHD, mengobati narkolepsi, menurunkan berat badan', 12500),
('A0004', 'Atenolol', 'Tablet', 'Dewasa', 'Mengobati angina, gangguan detak jantung, dan hipertensi. Menjaga kesehatan jantung Menjaga kesehatan jantu setelah serangan jantung', 25000),
('A0005', 'Ambroxol', 'Tablet', 'Dewasan dan anak-anak', 'Obat batuk dan flu', 46000),
('A0006', 'Ambroxol', 'Sirup', 'Anak-anak', 'Untuk gangguan saluran pernapasan akut dan kronik', 6367),
('A0007', 'Amoxicillin', 'Kaplet', 'Dewasan dan anak-anak', 'Antibiotij dan Anti Jamur', 11900),
('A0008', 'Ampicillin 500mg', 'Tablet, Kaplet', '	Dewasa dan anak-anak', 'Mengobati infeksi saluran kemih, Mengobati bronkitis, endokarditis, gastroenteritis, infeksi listeria, infeksi streptokokus perinatal, otitis media, infeksi saluran empedu, peritonitis', 114000),
('A0009', 'Antasida (antacid)', 'Suspensi, tablet kunyah', 'Dewasa dan anak-anak', 'menetralisir asam lambung', 7800),
('A0010', 'Alloris', 'Sirup', 'Dewasan dan anak-anak', 'Rinitis alergi, urtikaria kronik, alergi kulit', 77800),
('B0001', 'Bacitracin', 'Suntik', 'Dewasa dan anak-anak', 'Mencegah infeksi bakteri pada luka ringan di kulit', 15000),
('B0002', 'Baclofen', 'Tablet', 'Dewasa dan anak-anak', 'Meredakan kejang otot', 32000),
('B0003', 'Biovision', 'Kapsul', 'Dewasa', 'Makanan tambahan bermanfaat dalam membangun menghilangkan kelelahan mata disebabkan sering menggunakan komputer, menonton televisi dan membaca dalam waktu lama serta membantu menjaga mata tetap sehat', 54500),
('B0004', 'Bio Strath', 'Tablet', 'Dewasan dan anak-anak', 'Meningkatkan sistem pertahanan tubuh, meningkatkan konsentrasi, meningkatkan efisiensi fisik dan mental, memulihkan vitalitas, dan menjaga tingkat hemoglobin disaat kehamilan', 475200),
('B0005', 'BioSAT 1.500UI', 'Cairan Injeksi', 'Dewasa', 'pencegahan tetanus', 1850000),
('B0006', 'Betadine Solution', 'Cairan', 'Semua usia', 'Cairan antiseptik pada luka untuk membunuh kuman penyebab infeksi', 25000),
('C0001', 'Captopril', 'Tablet', 'Dewasa', 'Menangani hipertensi, mencegah komplikasi setelah serangan jantung', 52000),
('C0002', 'Ciprofloxacin', 'cairan infus', 'Anak hingga dewasa', 'antibiotik untuk mengatasi penyakit akibat infeksi bakteri, seperti pneumonia, gonore, infeksi saluran kemih, infeksi prostat, atau infeksi mata dan telinga', 65000),
('C0003', 'Ciprofloxacin 500mg', 'Tablet', 'Dewasa', 'infeksi pada saluran kemih, saluran cerna, demam tifoid', 10700),
('D0001', 'Diazepam', 'Tablet, Obat cair, Suntikan', 'Dewasa dan anak-anak', 'Mengatasi insomnia, serangan kecemasan, melemaskan otot kejang', 12000),
('F0001', 'Flutamol', 'Kapsul', 'Dewasa', 'Flu dan batuk', 5700),
('F0002', 'Furosemide', 'Tablet dan suntik', 'Dewasa dan anak-anak', 'Mengatasi penumpukan cairan di dalam tubuh', 3500),
('G0001', 'Griseofulvin', 'Tablet, kaplet, tablet salut selaput', 'Dewasa dan anak-anak usia ?2 tahun', 'Mengatasi infeksi jamur di kulit kepala, selangkangan atau lipat paha, kaki, atau kuku', 24000),
('H0001', 'Holisticare Ester C Kids', 'Tablet', 'Anak-anak', 'Membantu memelihara kesehatan, suplementasi vitamin c pada anak', 50800),
('H0002', 'Hydrocortisone Cream', 'Salep', 'Dewasa dan anak-anak', 'antiinflamasi, antialergi, dan antipruritus pada penyakit kulit', 9400),
('I0001', 'Irbesartan 150mg', 'Tablet dan kaplet', 'Dewasa dan lansia', 'Mengatasi hipertensi dan nefropati diabetik', 40500),
('I0002', 'Ibuprofen', 'Sirup', 'Anak-anak', 'Penurun demam untuk anak akibat peradangan maupun infeksi', 29000),
('I0003', 'Ibuprofen', 'Tablet, Kapsul', 'Dewasa', 'Meredakan nyeri, demam, dan radang sendi', 8300),
('K0001', 'Ketorolac', 'Injeksi', 'Dewasa', 'Meredakan nyeri sedang hingga berat', 44500),
('K0002', 'Ketorolac', 'Tablet', 'Dewasa', 'Meredakan peradangan dan nyeri', 43200),
('L0001', 'Lansoprazole', 'Kapsul', 'Dewasa', 'Tukak lambung/duodenum', 23400),
('L0002', 'Loratadine', 'Tablet dan kaplet', 'Dewasa', 'Meredakan gejala alergi', 5300),
('L0003', 'Loratadine', 'Sirup', 'Anak-anak usia ?2 tahun', 'Meredakan gejala alergi', 5900),
('L0004', 'Lincomycin', 'Kapsul', 'Dewasa', 'Mengobati infeksi bakteri berat\r\nAntibiotik alternatif bagi penderita alergi penisilin', 15700),
('L0005', 'Lincomycin', 'Sirup', 'Anak-anak usia ?1 bulan', 'Membunuh atau menghentikan pertumbuhan bakteri yang sensitif ', 28500),
('M0001', 'Mylanta', 'Tablet', 'Dewasa', 'Maag', 15000),
('M0002', 'Meloxicam', 'Tablet', 'Dewasa dan anak-anak', 'Meredakan gejala radang sendi', 20600),
('M0003', 'Metronidazole', 'Tablet', 'Dewasa dan anak-anak', 'Mengobati infeksi bakteri dan infeksi parasit', 9500),
('M0004', 'Metronidazole', 'Cairan (infus)', 'Dewasan dan anak-anak', 'Mengobati infeksi bakteri dan infeksi parasit', 45000),
('M0013', 'Mylanta', 'Cair(sirup)', 'Dewasa', 'Untuk maag dan peradangan lambung', 16861),
('N0001', 'Natrium Diklofenak', 'Tablet', 'Dewasa dan Anak usia > 9 tahun', 'meredakan nyeri, mengatasi pembengkakan (inflamasi), kekakuan sendi yang disebabkan oleh peradangan sendi, serta menurunkan demam yang berhubungan dengan infeksi telinga, hidung atau tenggorokan (THT)', 5500),
('O0001', 'Ofloxacin', 'Tablet dan kaplet', 'Dewasan dan anak-anak', 'Mengobati infeksi bakteri', 15300),
('O0002', 'Ofloxacin Tetes Telinga', 'Cairan (tetes telinga)', 'Dewasa dan anak-anak usia di atas 1 tahun', 'Mengobati infeksi bakteri di telinga', 147000),
('P0001', 'Paracetamol (Acetaminophen)', 'Tablet, kaplet', 'Dewasa dan anak-anak', 'Meredakan demam dan nyeri', 5400),
('P0002', 'Pyrazinamide', 'Tablet, tablet dispersible, tablet kunyah, dan kaplet salut selaput', 'Dewasa dan anak-anak', 'Mengobati tuberkulosis (TBC)', 10500),
('P0003', 'Propylthiouracil', 'Tablet', 'Dewasa', 'Mengobati hipertiroidisme', 8200),
('Q0001', 'Quantidex', 'Kaplet', 'Dewasa dan anak usia >12 tahun', 'Mengurangi gejala gangguan pada saluran napas atas: rinitis alergi, rinitis vasomotorik', 29000),
('Q0002', 'Quantidex', 'Sirup', 'Dewasa dan anak usia >12 tahun', 'Mengurangi gejala gangguan pada saluran napas atas: rinitis alergi, rinitis vasomotorik.', 12000),
('R0001', 'Ranitidine 150 mg', 'Tablet', 'Dewasa (300mg) dan anak-anak (2-4mg)', 'Untuk tukak lambung dan tukak duodenum, refluks esofagitis, dispepsia episodik kronis, tukak akibat AINS, tukak duodenum karena H.pylori, sindrom Zollinger-Ellison, kondisi lain dimana pengurangan asa', 6000),
('S0001', 'Sakatonik ABC Strawberry', 'Tablet', 'Anak-anak', 'Membantu menjaga kesehatan anak-anak. Membantu memenuhi kebutuhan multivitamin untuk anak-anak di usia pertumbuhan dan masa penyembuhan setelah sakit', 20900),
('S0002', 'Sangobion', 'Kapsul', 'Dewasa', 'Anemia karena kekurangan zat besi dan mineral lain yang membantu pembentukan darah.', 21000),
('S0003', 'Sangobion Kids', 'Sirup', 'Anak-anak', 'Suplemen zat besi (Fe) dan vitamun untuk anak selama masa pertumbuhan dan anemia yg disebabkan oleh defisiensi zat besi', 68500),
('T0001', 'Tempra Sirup', 'Cair(sirup)', 'Anak-anak', 'Untuk meredakan demam, rasa sakit dan nyeri ringan, sakit kepala dan sakit gigi, demam setelah imunisasi', 44800),
('T0002', 'Tetracycline Hcl', 'Kapsul', 'Dewasa dan anak-anak ? 8 tahun', 'Mengobati infeksi bakteri', 17000),
('U0001', 'Ulcumaag', 'Kaplet', 'Dewasa dan anak usia >15 tahun', 'Untuk mengobati ulkus duodenum aktif', 30900),
('V0001', 'Vitalong C', 'Kapsul', 'Dewasa dan anak diatas 12 tahun', 'Membantu memelihara daya tahan tubuh', 63500),
('V0002', 'Viagra', 'Tablet', 'Dewasa', 'mengobati gangguan fungsi seksual pada pria, yaitu disfungsi ereksi. Obat ini bekerja dengan cara meningkatkan aliran darah ke alat kelamin pria sehingga dapat mempertahankan ereksi saat berhubungan s', 204000),
('V0003', 'Vermox ', 'Tablet', 'Dewasa dan anak usia >5 tahun', 'Obat cacing yang digunakan untuk infeksi cacing kremi, cacing gelang, cacing tambang, cacing cambuk, atau infeksi cacing campuran tersebut.', 25700),
('W0001', 'Witranal', 'Tablet', 'Dewasa', 'Meredakan nyeri ringan hingga sedang spt: sakit kepala, sakit gigi, dismenore primer, termasuk nyeri yang disebabkan oleh trauma, nyeri otot, & nyeri pasca operasi', 4900),
('X0001', 'Xanturic ', 'Kaplet', 'Dewasa', 'Mencegah pengendapan asam urat dan kalsium oksalat', 36500),
('Y0001', 'Yasiden', 'Kapsul', 'Dewasa', 'terapi pada rheumatoid artritis, osteoartritis, ankilosa spondilitis, gout akut, dan gangguan muskuloskeletal.', 2500),
('Y0002', 'Yefamox', 'Kaplet', 'Dewasa', 'Mengobati infeksi karena bakteri', 5100),
('Z0001', 'Zinc Sulphate', 'Tablet, Kapsul, Kaplet', 'Dewasan dan anak-anak', 'Mencegah dan mengatasi defisiensi zinc dan digunakan dalam pengobatan diare akut', 19100);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama`) VALUES
('0010002', 'jungwoo'),
('010101', 'juhwan'),
('010203', 'sisil'),
('011001', 'syaa'),
('020202', 'jihoon'),
('030303', 'anabul'),
('030405', 'jihun'),
('123456', 'sehun'),
('12434222121', 'Rabiahtul Adawiah Hasyani'),
('161003', 'yayas'),
('170845', 'berlin'),
('201004', 'ester'),
('21120116120002', 'Kemal Yusron Hasibuan'),
('21120116130037', 'Ali Sajidin'),
('21120116130065', 'Adam Maulidani'),
('21120116140068', 'Fanny Hasbi'),
('21120116140069', 'Fajar Nahari'),
('21120116140070', 'Azizah Kamalia'),
('21120116140077', 'Kelvin John'),
('21120116140078', 'Jeremy Kharisma');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `kode_pesan` varchar(7) NOT NULL,
  `id_pemesan` varchar(20) NOT NULL,
  `harga` float NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('B','L') NOT NULL DEFAULT 'B',
  `konfirmasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`kode_pesan`, `id_pemesan`, `harga`, `tanggal`, `status`, `konfirmasi`) VALUES
('2GH3B48', '21120116140070', 1136000, '2017-06-09', 'L', '2017-06-09'),
('3O9N2DV', '011001', 60000, '2022-11-23', 'L', '2022-11-23'),
('4NRL9I7', '123456', 11400, '2022-11-24', 'L', '2022-11-24'),
('5A4KOD3', '030405', 37500, '2022-11-23', 'L', '2022-11-23'),
('81UZM8R', '020202', 84305, '2022-11-23', 'L', '2022-11-23'),
('8X60SSU', '21120116140068', 205000, '2017-06-09', 'L', '2017-06-09'),
('C97HT82', '0010002', 10000, '2022-11-23', 'L', '2022-11-23'),
('CZOH7FU', '201004', 10000, '2022-11-23', 'L', '2022-11-23'),
('DI58UUF', '010101', 45000, '2022-11-23', 'L', '2022-11-23'),
('FAVEJLI', '21120116140069', 3010000, '2017-06-09', 'L', '2017-06-09'),
('HACW9GN', '21120116140078', 160000, '2017-06-10', 'B', NULL),
('NMZIZWB', '161003', 46000, '2022-11-23', 'L', '2022-11-23'),
('Q6X46CZ', '21120116120002', 845000, '2017-06-10', 'L', '2017-06-10'),
('RLD8TNN', '12434222121', 5000, '2022-11-13', 'B', NULL),
('RMP7JJ2', '170845', 20000, '2022-11-23', 'L', '2022-11-23'),
('S244QXZ', '21120116140077', 490000, '2017-06-10', 'B', NULL),
('SHT0SPB', '030303', 25468, '2022-11-24', 'L', '2022-11-24'),
('SWWY31J', '21120116130065', 520000, '2017-06-10', 'B', NULL),
('UBEV4VC', '21120116130037', 1100000, '2017-06-10', 'B', NULL),
('VX6NRG8', '010203', 12734, '2022-11-23', 'L', '2022-11-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_obat` (`kode_obat`),
  ADD KEY `kode_pesan` (`kode_pesan`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`kode_pesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `detail_pemesanan_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `obat` (`kode_obat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detail_pemesanan_ibfk_2` FOREIGN KEY (`kode_pesan`) REFERENCES `pemesanan` (`kode_pesan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
