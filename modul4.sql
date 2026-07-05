-- Nama		: Lencana Haya Salsabila
-- NIM		: 24241189
-- Kelas	: E
-- Modul	: 4


-- menggunakan database
USE kelas_e_mart;

-- ORDER BY
-- Fungsinya untuk mengurutkan data hasil query secara ASC ataupun DESC
-- data yang diurutkan dapat dari kolom atau hasil pengelolaan (op, mat) kolom

-- Praktek #1
-- Ambil nama produk dan qty dari penjualan urut berdasarkan qty
SELECT DISTINCT nama_produk, qty 
FROM tr_penjualan_dqlab 
ORDER BY qty ASC;

-- Praktek #2
-- Ambil nama_produk dan qty dari penjualan urut qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;


-- Latihan Mandiri 
-- Soal 1 

-- Soal 2

-- Soal 3


-- Praktek #3
-- ORDER BY dari nilai terbesar ke terkecil gunakan desc
-- ORDER BY dari nilai terkecil ke terbesar gunuak ASC (tidak wajib)
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- Praktek #4
-- Menggunakan ASC dan DESC dalam satu query
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk ASC;

-- Latihan Mandiri
-- Soal 1

-- Soal 2

-- Soal 3


-- Praktek #5
-- ORDER BY digunakan dari hasil operasi matematika ataupun dari fungsi
-- Ambil nama produk, harga, qty, dan total (qty*harga) urut total
SELECT nama_produk, harga, qty, qty*harga AS total
FROM tr_penjualan ORDER BY total DESC;

-- Latihan Mandiri
-- Soal 1 - Cari Total Bayar Setelah dikurangi Diskon
-- Cari dulu total diskon dalam rupiah
-- setelah itu hitung total - diskon_rupiah = total_bayar
-- lakukan dalam 1 query

-- Penggunaan WHERE dan ORDER BY
-- ORDER BY bisa digabungkan dengan WHERE untuk pengurutan hasil filter
-- ORDER BY diletakkan setelah WHERE
-- Praktek #6
-- Ambil nama produk yang berawalan huruf 'F' urut berdasarkan qty terbesar
SELECT nama_produk, qty FROM tr_penjualan
WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;

-- Latihan Mandiri
-- Soal 1

-- Soal 2

-- Soal 3



-- Fungsi Agregasi
-- Digunakan untuk mengelola beberapa row data untuk menghasilkan nilai baru
-- Praktek #7
-- Jumlahkan seluruh qty yang ada di tabel penjualan
SELECT SUM(qty) FROM tr_penjualan;
-- Berapa rata-rata qty terjual dari penjualan
SELECT AVG(qty) FROM tr_penjualan;

-- Praktek #8
-- Berapa banyak transaksi yang terjadi
SELECT COUNT(*) FROM tr_penjualan;

-- Praktek #9 
-- Menggunakan dua fungsi agregasi secara bersamaan
SELECT SUM(qty), COUNT(*), SUM(qty)/COUNT(*) AS Rasio_Penjualan
FROM tr_penjualan;

-- Praktek #10
-- Rata-rata, nilai tertinggi, nilai terendah
SELECT AVG(qty), MAX(qty), MIN(qty) FROM tr_penjualan;

-- Praktek #11
-- COUNT DISTINCT untuk mencari nilai unik terdapat dari seluruh baris (row)
-- Berapa banyak produk unik yang terjual
SELECT COUNT(DISTINCT nama_produk) FROM tr_penjualan;
-- Berapa banyak pelanggan unik yang bertransaksi
-- Praktek #12
SELECT COUNT(DISTINCT kode_pelanggan) FROM tr_penjualan;
-- Praktek #13
-- Gabungakan 
SELECT 
COUNT(*) AS Jumlah_transaksi,
COUNT(DISTINCT nama_produk) AS Jumlah_Produk_terjual,
COUNT(DISTINCT kode_pelanggan) AS Jumlah_pelanggan_yang_transaksi
FROM tr_penjualan;

-- GROUP BY
-- Mengelompokkan isi data dari sebuah kolom
-- Bisa dikelompokkan pada 1 kolom, 2 kolom, dan gabungan kolom dan fungsi agregasi
-- Praktek #14
-- Ambil kelompok produk dari nama produk
SELECT nama_produk FROM tr_penjualan GROUP BY nama_produk;

-- Praktek #15
-- kelompok dengan 2 kolom
-- Ambil nama produk dan qty yang dikelompokkan berdasarkan nama dan qty
SELECT nama_produk, qty FROM tr_penjualan
GROUP BY nama_produk, qty;

-- Praktek #16 
-- Kolompok dengan 1 kolom dan 1 hasil agregasi kolom
-- Ambil nama produk terjual berserta total qty nya
SELECT nama_produk, SUM(qty)
FROM tr_penjualan GROUP BY nama_produk
ORDER BY SUM(qty); 
-- Praktek #17 diurutkan dengan ORDER BY
SELECT nama_produk, SUM(qty)
FROM tr_penjualan GROUP BY nama_produk
ORDER BY SUM(qty) DESC;

-- HAVING adalah filtering untuk GROUP BY
-- Praktek #18
-- Ambil nama produk terjual berserta total qty nya, tampilkan total qty > 3
SELECT nama_produk, SUM(qty)
FROM tr_penjualan GROUP BY nama_produk
HAVING SUM(qty) > 3
ORDER BY SUM(qty) DESC;

-- Latihan Mandiri 
-- Soal 1

-- Soal 2

-- Soal 3








