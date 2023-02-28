// 1 
SELECT c.nama_pelanggan, p.nama FROM costomer c INNER JOIN pegawai p ON c.id_sales = p.NIP;

// 2
SELECT a.nama, a.jabatan, b.nama FROM pegawai a JOIN pegawai b ON a.pic = b.NIP;

// 3
SELECT c.nama_pelanggan, t.tanggal FROM transaksi t INNER JOIN costomer c ON t.id_pelanggan = c.id_pelanggan;

// 4
SELECT p1.nama AS nama_pegawai FROM pegawai p1 JOIN pegawai p2 ON p1.pic = p2.NIP WHERE p2.nama LIKE 'brian';

// 5
SELECT p.nama_produk FROM produk p JOIN (SELECT AVG(harga) AS avg_price FROM produk) avg ON p.harga > avg.avg_price;