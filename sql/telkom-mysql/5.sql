-- ## 1 
-- A 
SELECT kode_buku, judul, penerbit, harga_beli From buku WHERE harga_beli > ALL ( SELECT harga_beli from buku WHERE kode_buku LIKE '%1');
-- B 
SELECT kode_buku, judul, harga_beli FROM buku WHERE  harga_beli > (SELECT  avg(harga_beli) FROM buku) ORDER BY harga_beli ASC;

-- ## 2 
-- A 
SELECT petugas.nama_petugas, inventarisperpus.nama_inventaris, COUNT(*) Jumlah FROM petugas JOIN inventarisperpus ON petugas.id_petugas = inventarisperpus.id_petugas WHERE inventarisperpus.kondisi LIKE 'baik' GROUP BY petugas.nama_petugas, inventarisperpus.nama_inventaris WITH ROLLUP
-- B 
SELECT petugas.nama_petugas, inventarisperpus.kondisi, count(*) as Total FROM inventarisperpus INNER JOIN petugas WHERE petugas.id_petugas = inventarisperpus.id_petugas GROUP BY petugas.nama_petugas, inventarisperpus.kondisi WITH ROLLUP