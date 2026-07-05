-- Nama		: Lencana Haya Salsabila
-- NIM		: 24241189
-- Kelas	: E
-- Modul	: 1

CREATE TABLE pelanggan (
    kode_pelanggan VARCHAR(50) PRIMARY KEY,
    no_urut INT NOT NULL,
    nama_pelanggan VARCHAR(100) NOT NULL,
    alamat VARCHAR(200)
);

CREATE TABLE produk (
    kode_produk VARCHAR(50) PRIMARY KEY,
    no_urut INT NOT NULL,
    kategori_produk VARCHAR(50),
    nama_produk VARCHAR(100),
    harga DOUBLE
);

CREATE TABLE penjualan (
    kode_urut_transaksi INT PRIMARY KEY,
    kode_transaksi VARCHAR(50),
    kode_pelanggan VARCHAR(50),
    tgl_transaksi DATETIME,
    no_urut INT NOT NULL,
    kode_produk VARCHAR(50),
    nama_produk VARCHAR(100),
    qty INT NOT NULL,
    harga DOUBLE,
    diskon_persen DOUBLE
);

INSERT INTO pelanggan (kode_pelanggan, no_urut, nama_pelanggan, alamat) VALUES
('dqlabcust00', 0, 'Pelanggan Non Member', NULL),
('dqlabcust01', 1, 'Eva Novianti, S.H.', 'Vila Sempilan, No. 67 - Kota B'),
('dqlabcust02', 2, 'Heidi Goh', 'Vila Sempilan, No. 11 - Kota B'),
('dqlabcust03', 3, 'Unang Handoko', 'Vila Sempilan, No. 1 - Kota B'),
('dqlabcust04', 4, 'Jokolono Sukarman', 'Vila Permata Intan Berkilau, Blok C5-7'),
('dqlabcust05', 5, 'Tommy Sinaga', 'Vila Permata Intan Berkilau, Blok A1/2'),
('dqlabcust06', 6, 'Irwan Setianto', 'Vila Gunung Seribu, Blok O1 - No. 1 - Kota C'),
('dqlabcust07', 7, 'Agus Cahyono', 'Vila Gunung Seribu, Blok F4 - No. 8'),
('dqlabcust08', 8, 'Maria Sirait', 'Vila Bukit Sagitarius, Gang Sawit No. 3'),
('dqlabcust09', 9, 'Ir. Ita Nugraha', 'Vila Bukit Sagitarius, Gang Kelapa No. 6'),
('dqlabcust10', 10, 'Djoko Wardoyo, Drs.', 'Vila Bukit Sagitarius, Blok A1 No. 1');


INSERT INTO produk (kode_produk, no_urut, kategori_produk, nama_produk, harga) VALUES
('prod-01', 1, 'Alat Tulis Kantor', 'Kotak Pensil DQLab', 62500.0),
('prod-02', 2, 'Aksesoris Komputer', 'Flashdisk DQLab 64 GB', 55000.0),
('prod-03', 3, 'Gift & Voucher', 'Gift Voucher DQLab 100rb', 100000.0),
('prod-04', 4, 'Aksesoris Komputer', 'Flashdisk DQLab 32 GB', 40000.0),
('prod-05', 5, 'Gift & Voucher', 'Gift Voucher DQLab 250rb', 250000.0),
('prod-06', 6, 'Alat Tulis Kantor', 'Pulpen Multifunction + Laser DQLab', 92500.0),
('prod-07', 7, 'Gift & Voucher', 'Tas Travel Organizer DigiSkills.id', 48000.0),
('prod-08', 8, 'Gift & Voucher', 'Gantungan Kunci DQLab', 15800.0),
('prod-09', 9, 'Alat Tulis Kantor', 'Buku Planner Agenda DQLab', 92000.0),
('prod-10', 10, 'Alat Tulis Kantor', 'Sticky Notes DQLab 500 sheets', 55000.0);


INSERT INTO penjualan (kode_urut_transaksi, kode_transaksi, kode_pelanggan, tgl_transaksi, no_urut, kode_produk, nama_produk, qty, harga, diskon_persen) VALUES
(1, 'tr-001', 'dqlabcust07', '2020-05-01 00:00:00', 1, 'prod-01', 'Kotak Pensil DQLab', 5, 62500.0, 0.0),
(2, 'tr-001', 'dqlabcust07', '2020-05-01 00:00:00', 2, 'prod-03', 'Flash disk DQLab 32 GB', 1, 100000.0, 25.0),
(3, 'tr-001', 'dqlabcust07', '2020-05-01 00:00:00', 3, 'prod-09', 'Buku Planner Agenda DQSQuad', 3, 92000.0, 0.0),
(4, 'tr-001', 'dqlabcust07', '2020-05-01 00:00:00', 4, 'prod-04', 'Flashdisk DQLab 32 GB', 3, 40000.0, 0.0),
(5, 'tr-002', 'dqlabcust00', '2020-05-01 00:00:00', 1, 'prod-03', 'Gift Voucher DQLab 100rb', 2, 100000.0, 0.0);
