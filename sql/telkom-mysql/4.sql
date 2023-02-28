-- ## 1
CREATE table history_buku AS SELECT kode_buku , judul ,pengarang ,penerbit  FROM perpustakaan.buku WHERE tahun < ALL (SELECT tahun  FROM perpustakaan.buku WHERE tahun = 2007);

-- ## 2
SELECT kode_buku , judul ,pengarang ,penerbit  FROM perpustakaan.buku WHERE id_kategori = 3;

-- ## 3
CREATE table inventaris AS SELECT * FROM perpustakaan.inventarisperpus;

-- ## 4
SELECT * FROM perpustakaan.petugas WHERE id_petugas IN (SELECT id_petugas  FROM perpustakaan.inventarisperpus WHERE kondisi="Perlu diganti");

-- ## 5
UPDATE inventaris SET kondisi = "Perlu Diganti" WHERE id_petugas = "0005" AND nama_inventaris LIKE "Kursi Panjang%";