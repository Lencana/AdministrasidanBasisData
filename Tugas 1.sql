CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(30),
  `sp` varchar(30),
  `no_tlp` int,
  `kode_poli` int
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `DOD` datetime
);

CREATE TABLE `PENDAFTARAN` (
  `no_antrian` int PRIMARY KEY,
  `tgl_daftar` datetime,
  `NIK` int,
  `id_dokter` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `diagnosa` varchar(50),
  `tindakan` varchar(50),
  `resep` varchar(50),
  `no_antrian` int
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`id_dokter`) REFERENCES `DOKTER` (`id_dokter`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`no_antrian`) REFERENCES `PENDAFTARAN` (`no_antrian`);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`id_dokter`) REFERENCES `DOKTER` (`no_tlp`);
