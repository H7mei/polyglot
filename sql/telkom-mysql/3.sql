-- ## 1
SELECT m.Nama_mahasiswa, b.kode_buku, p.nama_petugas  FROM mahasiswa m, buku b, dipinjam d,  rekappeminjaman r ,petugas p WHERE m.NIM=d.NIM AND d.kode_buku=b.kode_buku AND d.id_rekap=r.id_rekap AND r.id_petugas=p.id_petugas;

-- ## 2
SELECT Nama_mahasiswa FROM mahasiswa WHERE Nama_mahasiswa LIKE 'A%';

-- ## 3
select nama_supplier, alamat_supplier,count(kode_buku), sum(harga_beli) as total, (sum(harga_beli) * 10/100) as "Harga Diskon" from supplier INNER JOIN buku on supplier.id_supplier = buku.id_supplier GROUP BY supplier.id_supplier;

SELECT s.nama_supplier, s.alamat_supplier, count(b.id_supplier) as JUMLAH_BUKU, SUM(b.harga_beli) as TOTAL_HARGA, ROUND(SUM(b.harga_beli) * count(b.id_supplier) - (SUM(b.harga_beli) * count(b.id_supplier) * 10/100)) AS HARGA_DISKON from supplier s, buku b where b.id_supplier = s.id_supplier GROUP BY s.id_supplier;
