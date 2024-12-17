-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 01:56 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_ode`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`) VALUES
(11, 'Honda', '20241124060258.jpg'),
(12, 'Infinix', '20241124060315.jpg'),
(13, 'Smartfren', '20241124060336.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(8, 'Politik'),
(10, 'Kriminalitas'),
(13, 'Bola'),
(17, 'Bencana alam');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `judul_website` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `profil_website` text COLLATE utf8mb4_general_ci NOT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `no_wa` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `email`, `alamat`, `no_wa`) VALUES
(1, 'BeritaKita', 'Sedang sibuk.', 'odearstiko', 'Dewi Ariyanti', 'dewiharjanto2@gmail.com', 'Toko delic, Ngijo, Tasikmadu, Karanganyar', '+6285641420566');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int NOT NULL,
  `judul` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `id_kategori` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(18, 'Harapan rakyat kepada Prabowo Gibran', 'resmi dilantik sebagai Presiden dan Wakil Presiden Republik Indonesia periode 2024-2029 di Gedung MPR/DPR RI, Senayan, Jakarta Pusat, Minggu (20/10/2024). Pelantikan Presiden ke-8 dan Wakil Presiden ke-14 itu memunculkan sejumlah harapan bagi lapisan masyarakat di Jakarta. Salah satu warga Jakarta bernama Leoni (20) berharap pemerintahan Prabowo-Gibran ke depan bisa memperbanyak lapangan kerja. Hal itu diharapkan Leoni karena saat ini ada banyak perusahaan yang melakukan pemutusan hubungan kerja (PHK) ke pekerja. \"Jadi harapannya untuk Prabowo-Gibran semoga bisa memperbanyak lapangan pekerjaan aja. Semoga bisa memperluas lapangan pekerjaan karena lagi marak juga PHK kan,\" ungkap Leoni kepada Kompas.com di area Gelora Bung Karno, Senayan, Jakarta Pusat, Minggu. Harapan yang sama dengan Leoni juga disampaikan oleh warga Jakarta lainnya bernama Hervian (45). Ia ingin lapangan pekerjaan bisa diperbanyak sehingga Indonesia bisa terus maju dan lebih baik. \"Saya berharap sektor lapangan pekerjaan diperbanyak karena sekarang banyak yang enggak kerja. Jadi perbanyak lapangan pekerjaan, ekonomi bagus lagi,\" jelas Hervian di area GBK, Minggu. Harapan lainnya juga disampaikan oleh seorang ibu rumah tangga bernama Mira. Ia berharap Prabowo-Gibran bisa lebih memerhatikan kesulitan rakyat kecil dalam hal harga bahan-bahan pokok. \"Harapan Indonesia maju dan makmur. Memakmurkan rakyat kecil, supaya apa-apa murah, jangan harga melambung tinggi,\" jelas Mira di wilayah Senayan, Minggu. Mira mengaku harga barang-barang kebutuhan yang murah dan terjangkau amat diperlukan oleh masyarakat kecil. Menurutnya, banyak orang kecil yang berkeberatan dengan harga-harga kebutuhan yang melambung tinggi. \"Kita kan orang kecil keberatan kalau harga mahal. Jadi, harapan mah harga-harga murah,\" tutur Mira.', '20241028151522.jpg', 'Harapan-rakyat-kepada-Prabowo-Gibran', ' 8', '2024-10-28', 'Ode'),
(20, 'Judi Online 24 Tersangka Sita Rp 150 Miliar dan 4 Orang Masih DPO', 'Kepala Bidang Hubungan Masyarakat Polda Metro Jaya, Komisari Besar Ade Ary Syam Indradi, menyatakan telah menyita ratusan miliar dalam kasus judi online yang melibatkan 10 pegawai Kementerian Komunikasi dan Digital. \"Total nilai barang bukti yang berhasil kami sita dari kasus ini sudah lebih dari Rp 150 Miliar,\" kata Ade Ary di Polda Metro Jaya pada Sabtu, 23 November, 2024. Ia juga menyampaikan bahwa Penyidik masih terus berkoordinasi dengan Pusat Pelaporan dan Analisis Transaksi Keuangan (PPATK) untuk menelusuri aliran dana dalam kasus ini. Sehingga, kata Ade, angka tersebut mungkin saja akan bertambah. \"Dana para tersangka bandar, sehingga tentunya jumlah nilai barang bukti maupun jumlah tersangka nanti akan dapat bertambah,\" ujarnya. Ade Ary menuturkan, Kepolisian saat ini telah menangkap 24 tersangka yang terdiri dari 10 pegawai Komdigi dan 14 warga sipil. Selain itu, masih ada empat orang DPO yang masih diburu oleh Subdit Jatanras Ditreskrimum Polda Metro Jaya. \"Antara lain J, kemudian C,  JH dan F.\" tutur Ade. Kasus judi online ini telah diungkap sejak akhir Oktober lalu. Namun, Kepolisian baru akan mengungkap nama-nama tersangka pada Senin pekan depan, 25 November 2024. Kasus tersebut menjadi sorotan lantaran para tersangka yang sebagian pegawai Komdigi ini sebenarnya bertugas memblokir laman judi online agar tidak bisa diakses oleh masyarakat di Indonesia. Alih-alih menutup, mereka justru menjaganya dan meminta bayaran dari pemilik situs. “Jadi mereka ini bertugas untuk memblokir situs-situs judi online. Mereka diberikan akses untuk melihat website-website judi online dan memblokirnya,” kata Kabid Humas Polda Metro Jaya, Komisaris Besar Ade Ary Syam Indradi di Bekasi, Jumat, 1 November 2024. Para tersangka ini mengaku memblokir laman judi online setiap dua minggu sekali. Apabila dalam dua minggu pemilik laman tidak menyetor uang kepada Adhi Kismanto (AK), maka lamannya akan diblokir. Komplotan ini menetapkan tarif Rp 8,5 juta per situs sebagai jasa pengamanan agar tidak diblokir.', '20241124052722.jpg', 'Judi-Online-24-Tersangka-Sita-Rp-150-Miliar-dan-4-Orang-Masih-DPO', ' 10 ', '2024-11-24', 'Ode'),
(26, 'Sederet Fakta 2 Pelajar Diciduk Polisi Buntut Tawuran di Kotagede Jogja', 'Dua pelajar diamankan polisi buntut dari tawuran yang terjadi di Lapangan Karang, Kotagede, Kota Jogja pada Selasa (26/11) lalu. Tawuran ini melibatkan dua SMK di Jogja. Berikut sejumlah fakta tawuran pelajar di Jogja tersebut. Ingin Pancing Emosi, Tawuran pelajar antara SMK A (nama sekolah) dan SMK B (nama sekolah) melibatkan 20 pelajar. Awalnya, disebabkan oleh rombongan pelajar SMK A yang iseng memancing suasana agar siswa SMK B marah dan emosi. \"Sekitar pukul 09.30 WIB mereka berkumpul, ada 20 siswa dan sekitar 10 sepeda motor di angkringan dekat SMK A (nama sekolah). Kemudian sekitar pukul 10.00 WIB, rombongan tersebut berangkat menuju SMK B (nama sekolah),\" ujar Kasi Humas Polresta Jogja, AKP Sujarwo dalam keterangannya, Selasa (26/11/2024). \"Tujuannya untuk melempari SMK B dengan cat agar para siswa SMK B terpancing dan keluar,\" sambungnya. Polisi telah mengamankan dua pelajar berinisial A (15) asal Berbah, Sleman, serta R (17) asal Umbulharjo, Kota Jogja. Keduanya diamankan polisi di tempat kejadian. \"Tindakan dari Polsek itu kami memanggil orang tua dari kedua orang siswa yang diamankan beserta gurunya. Selain itu, melakukan pembinaan dengan mewajibkan kedua siswa apel dua kali dalam seminggu ke Polsek Kotagede,\" kata Sujarwo. Dua pelajar yang diamankan tersebut menjalani pembinaan di Polsek Kotagede dalam kurun waktu yang belum ditentukan. \"Mereka wajib dua kali seminggu apel ke kantor polisi. Untuk sampai kapannya, nanti berdasarkan penilaian penyidik,\" ujar Kasi Humas Polresta Jogja, AKP Sujarwo. \"Dari penilaian tersebut nanti anaknya sampai paham dan merasa bersalah akan perbuatannya, serta tidak mengulangi aksi serupa,\" sambungnya. Sujarwo turut menjelaskan proses pembinaan yang dilakoni dua pelajar tersebut di Polsek Kotagede. \"Selama apel yang dilakukan adalah menandatangani buku absen apel yang jadi sarana kontrol anak tersebut,\" jelas dia.\r\n', '20241216193950.jpg', 'Sederet-Fakta-2-Pelajar-Diciduk-Polisi-Buntut-Tawuran-di-Kotagede-Jogja', ' 10 ', '2024-12-16', 'Ode'),
(27, 'Banyak Mainan di Kantor Gibran Rakabuming Dibawa ke Rumah atau Istana Wapres', 'Banyak yang mengatakan, “buatlah ruang kantormu senyaman mungkin”. Namun, mantan Walikota  Solo, Gibran Rakabuming Raka, melakukan hal yang aneh untuk mencapai kenyamanan tersebut. Pasalnya, Gibran terlihat mengeluarkan tumpukan kotak  mainan. Seusainya mengundurkan diri ke DPRD Solo, ia langsung menuju ke ruang kerja di Balai Kota Solo, Selasa (16/7). Ia hendak membereskan barang-barang pribadinya dari ruang kantor tersebut. Tidak disangka-sangka, ternyata dapat tumpukan mainan di dalam ruangan tersebut. Mulai dari 13 kotak Tamiya, Lego, dua patung kucing hoki, dan lain sebagainya. Tidak hanya mainan saja, namun juga terdapat berbagai patung action figure yang menemani Gibran selama berkantor di Balai Kota Solo. Sangking banyaknya mainan, bahkan ia mengalami kesulitan untuk memilih mainan favoritnya. “Saya menyimpan berbagai jenis mainan koleksi di meja kerjanya. Supaya nyaman selama bekerja di kantor,” ujarnya kepada para wartawan. Tidak hanya mainan saja, Gibran Rakabuming juga membawa pulang ratusan dokumen juga. Ia mengatakan bahwa dokumen-dokumen tersebut perlu tanda tangannya sebelum ia ke Jakarta dan mengurus pelantikannya sebagai Wapres pada Oktober nanti. Tongkat estafet kepemimpinan di Kota Solo, akan sang wakil ambil, yaitu Teguh Prakosa. “Kami beresin dulu biar bisa dipakai Pak Wakil Wali Kota Solo. Kalu di rumah dinas Loji Gandrung sudah kosong. Terpilih sebagai Wakil Presiden RI untuk periode 2024-2029, ia pun harus meninggalkan pekerjaannya sebagai Wali Kota Solo. Ia perlu menyiapkan berbagai persiapan untuk pelantikannya yang berlangsung pada bulan Oktober nanti. Ia pun mendapatkan haknya untuk menetap di Istana Wapres, Jalan Merdeka, Gambir, Jakarta Pusat. Untuk saat ini, masih belum ada kabar pasti darinya apakah ia akan tinggal di Istana Wapres atau di tempat lain.', '20241216194326.jpg', 'Banyak-Mainan-di-Kantor-Gibran-Rakabuming-Dibawa-ke-Rumah-atau-Istana-Wapres', ' 8 ', '2024-12-16', 'Ode'),
(29, 'Periskop 2024 Bencana Alam Masih Mengintai Indonesia Waspadalah', 'emasuki awal tahun 2024, bencana alam menerjang Indonesia secara bertubi-tubi. Tak sedikit yang menjadi korban. Harus diakui bahwa Indonesia merupakan salah satu negara di dunia yang rawan bencana alam. Mulai dari gempa bumi, gunung meletus, hingga bencana hidrometeorologi. Bencana hidrometeorologi merupakan fenomena bencana alam atau proses merusak yang terjadi di atmosfer (meteorologi), air (hidrologi), atau lautan (oseanografi), demikian menurut Badan Meteorologi Klimatologi dan Geofisika (BMKG). Hidrometeorologi dapat menyebabkan hilangnya nyawa, cedera atau dampak kesehatan lainnya, kerusakan harta benda, hilangnya mata pencaharian dan layanan, gangguan sosial dan ekonomi, atau kerusakan lingkungan. Beberapa contoh bencana hidrometeorologi meliputi curah hujan ekstrem, angin kencang, tanah longsor, banjir, kekeringan, kebakaran hutan dan lahan, puting beliung. Indonesia menjadi daerah rawan bencana karena sejumlah faktor. Di antaranya karena berada di cincin api pasifik, yang merupakan tempat bertemunya lempeng tektonik. Selain itu, juga membentuk banyak gunung api. Tak heran di Indonesia masih banyak gunung api yang masih aktif hingga sekarang. Wilayah tropis dengan curah hujan yang tinggi. Indonesia berada di garis khatulistiwa. Kondisi tersebut membuat Indonesia rentan diterjang badai atau angin kencang maupun siklon tropis. Kemudian, wilayah Indonesia dilewati Sabuk Alpide adalah sabuk seismik dan sabuk orogenik yang mencakup jajaran pegunungan yang membentang hingga lebih dari 15.000 km. Hal ini membuat Indonesia rawan terjadi gempa. Badan Penanggulangan Bencana Nasional (BNPB) sebelumnya juga telah mewanti-wanti untuk mewaspadai adanya bencana hidrometorologi basah saat memasukan awal 2024. Bahkan, BNPB mengklaim sudah siap menghadapinya. “Jika bencana sudah terjadi segera tetapkan status Tanggap Darurat, namun kita bisa mengantisipasi sebelum bencana terjadi. Untuk itu, daerah-daerah yang diprediksi akan mengalami bencana hidrometeorologi basah bisa mengeluarkan surat siaga darurat,” Hal tersebut diungkapkan Kepala BNPB Suharyanto saat memimpin Rapat Koordinasi Kesiapsiagaan Nasional Menghadapi Bencana Periode Natal dan Tahun Baru 2024 pada Kamis 21 Desember 2023 silam. Imbauan BNPB untuk siaga dalam menghadapi bencana kejadian. Tercatat ada 24 kejadian bencana alam sudah terjadi di awal 2024. Curah hujan di awal tahun intensitasnya tinggi. BMKG pun memprakirakan, bahwa potensi cuaca ekstrem di beberapa wilayah Indonesia perlu diwaspadai selama periode akhir 2023 hingga awal Januari 2024. Deputi Bidang Meteorologi, Guswanto mengungkapkan, adanya Monsun Asia Musim Dingin yang diasosiasikan sebagai musim angin baratan mulai menunjukkan dampaknya terhadap potensi peningkatan massa udara basah di sekitar wilayah Indonesia. Hal tersebut membuat pertumbuhan awan hujan di periode Januari ini diprediksikan cukup intens.', '20241216195456.jpg', 'Periskop-2024-Bencana-Alam-Masih-Mengintai-Indonesia-Waspadalah', ' 17 ', '2024-12-16', 'Ode'),
(30, 'Gempa di Samudra Hindia Guncang Sumbar Terasa Kuat di Kota Padang dan Sekitarnya', 'Guncangan yang terjadi merupakan jenis gempa dangkal akibat adanya aktivitas subduksi lempeng Indo-Australia ke bawah lempeng Eurasia. Gempa tektonik dengan parameter update magnitudo 4,9 mengguncang wilayah Padang Pariaman di Sumatera Barat. Kepala Pusat Gempa Bumi dan Tsunami Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) Daryono mengatakan guncangan terjadi pada hari Senin, 16 Desember 2024, pukul 10.50 WIB, di wilayah Samudra Hindia pantai barat Sumatera. \"Episenter gempa bumi terletak pada koordinat 1,22° LS dan 99,73° BT, atau tepatnya berlokasi di laut pada jarak 75 kilometer arah barat daya Kota Pariaman, Sumatera Barat, pada kedalaman 44 kilometer,\" kata Daryono dalam keterangan tertulisnya, Senin. Dia menjelaskan, berdasarkan lokasi episenter dan kedalaman hiposenter, guncangan yang terjadi merupakan jenis gempa dangkal akibat adanya aktivitas subduksi lempeng Indo-Australia ke bawah lempeng Eurasia. Hasil analisis mekanisme sumber menunjukkan bahwa gempa bumi memiliki mekanisme pergerakan naik (thrust fault). Gempa dirasakan di Kota Padang, Pasaman Barat, Padang Pariaman, Agam, Mentawai dengan skala intensitas III-IV MMI, yaitu pada siang hari dirasakan oleh orang banyak dalam rumah, di luar oleh beberapa orang, gerabah pecah, jendela/pintu berderik, dan dinding berbunyi. Di Padang Panjang, Bukittinggi, Solok dan Solok Selatan juga terasa dengan skala intensitas II-III MMI, yaitu getaran dirasakan nyata dalam rumah, terasa getaran seakan-akan ada truk berlalu. Hingga saat ini belum ada laporan dampak kerusakan yang ditimbulkan akibat gempa bumi tersebut. Sampai pukul 11.10 WIB, hasil monitoring BMKG belum menunjukkan adanya gempa susulan. \"Hasil pemodelan menunjukkan bahwa gempa bumi ini tidak berpotensi tsunami,\" ujar Daryono. BMKG mengimbau masyarakat tetap tenang dan tidak terpengaruh oleh isu yang tidak dapat dipertanggungjawabkan kebenarannya. Selain itu diperingatkan agar menghindari bangunan yang retak atau rusak akibat gempa. Pastikan bangunan tempat tinggal cukup tahan gempa atau tidak ada kerusakan akibat gempa sebelum masuk kembali.', '20241216195823.jpg', 'Gempa-di-Samudra-Hindia-Guncang-Sumbar-Terasa-Kuat-di-Kota-Padang-dan-Sekitarnya', ' 17 ', '2024-12-16', 'Ode');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_pengguna`
--

CREATE TABLE `pesan_pengguna` (
  `id_saran` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pesan_pengguna`
--

INSERT INTO `pesan_pengguna` (`id_saran`, `nama`, `email`, `pesan`, `tanggal_pesan`) VALUES
(6, 'Althaf', 'altap@gmail.com', ' apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa', '2024-12-16'),
(7, 'Toko', 'toko@gmail.com', ' apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa', '2024-12-16'),
(8, 'Yuda', 'yudaapiipp24@gmail.net', ' apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa', '2024-12-16'),
(9, 'Ode Arstiko', 'dewiharjanto2@gmail.com', ' apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa apakah yang dimaksud dengan apa', '2024-12-16'),
(10, 'ode', 'dewiharjanto2@gmail.com', 'tes', '2024-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(12, 'Ode', 'Ode', 'c04093231439eb2e564d2e1edd9482ab', 'Admin'),
(15, 'Arstiko', 'Arstiko', '3e692d431dcafaf4c88622d605234dbf', 'Kontributor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `pesan_pengguna`
--
ALTER TABLE `pesan_pengguna`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pesan_pengguna`
--
ALTER TABLE `pesan_pengguna`
  MODIFY `id_saran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
