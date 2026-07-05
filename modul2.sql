-- Nama		: Lencana Haya Salsabila
-- NIM		: 24241189
-- Kelas	: E
-- Modul	: 2


-- select statment
-- perintah yang di gunakan untuk mengambil database dari satu atau lebih database

-- objek database 
-- 1. database (tertinggi)
-- 2. table 
-- 3. kolom 
-- 4. nilai (value/data)

-- menggunakan database 
USE kelas_e_mart;

-- praktek 1
SELECT nama_produk FROM ms_produk_dqlab;


-- praktek 2
-- mengambil dua kolom dari sebuah table
-- ambil nama produk dan harga dari table produk
SELECT nama_produk, harga FROM ms_produk_dqlab;


-- praktek 3
-- mengambil seluruh kolom dari sebuah table 
-- ambil semua kolom dari tabel produk
SELECT * FROM ms_produk_dqlab;

-- latihan mandiri
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;
SELECT * FROM pelanggan;

-- PREFIX DAN ALIAS 
-- prefix adalah objek database yang hirarkiya lebih tinggi
-- contoh 'database.tabel.kolom'
SELECT ms_pelanggan_dqlab.nama_pelanggan FROM ms_pelanggan_dqlab;
SELECT kelas_e_mart.ms_pelanggan_dqlab.nama_pelanggan FROM ms_pelanggan_dqlab;
-- alias 
SELECT nama_produk as np FROM ms_produk_dqlab;
-- tanpa as
SELECT nama_produk np FROM ms_produk_dqlab;

-- penggunaan alias alias pada nama table
SELECT nama_produk FROM ms_produk_dqlab as msp;
SELECT msp.nama_produk FROM ms_produk_dqlab as msp;
-- case 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;
 -- case 2
SELECT nama_produk, harga FROM ms_produk_dqlab;
