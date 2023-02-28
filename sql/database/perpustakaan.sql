CREATE TABLE mahasiswa (
  NIM char(7) NOT NULL,
  Nama_mahasiswa varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  TTL date DEFAULT NULL,
  Jns_kelamin varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  telp char(7) DEFAULT NULL,
  alamat varchar(50) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  PRIMARY KEY (NIM)
);

CREATE TABLE supplier (
  id_supplier char(4) NOT NULL,
  nama_supplier varchar(50) DEFAULT NULL,
  alamat_supplier varchar(50) DEFAULT NULL,
  no_telp char(7) DEFAULT NULL,
  PRIMARY KEY (id_supplier)
);

CREATE TABLE lokasi (
  id_lokasi char(4) NOT NULL,
  letak char(8) DEFAULT NULL,
  PRIMARY KEY (id_lokasi)
);

CREATE TABLE petugas (
  id_petugas char(4) NOT NULL,
  nama_petugas varchar(50) DEFAULT NULL,
  alamat varchar(50) DEFAULT NULL,
  no_telp char(7) DEFAULT NULL,
  PRIMARY KEY (id_petugas)
);

CREATE TABLE kategori (
  id_kategori char(4) NOT NULL,
  jenis varchar(50) DEFAULT NULL,
  id_lokasi char(4) DEFAULT NULL,
  PRIMARY KEY (id_kategori),
  KEY fk_kategori_lokasi (id_lokasi),
  CONSTRAINT fk_kategori_lokasi FOREIGN KEY (id_lokasi) REFERENCES lokasi (id_lokasi) ON DELETE CASCADE
);

CREATE TABLE inventarisperpus (
  id_inventaris char(6) NOT NULL,
  nama_inventaris varchar(50) DEFAULT NULL,
  tgl_beli date DEFAULT NULL,
  kondisi varchar(50) DEFAULT NULL,
  id_petugas char(4) DEFAULT NULL,
  PRIMARY KEY (id_inventaris),
  KEY fk_inventaris_petugas (id_petugas),
  CONSTRAINT fk_inventaris_petugas FOREIGN KEY (id_petugas) REFERENCES petugas (id_petugas) ON DELETE CASCADE
);

CREATE TABLE rekappeminjaman (
  id_rekap char(4) NOT NULL,
  tgl_rekap date DEFAULT NULL,
  id_petugas char(4) DEFAULT NULL,
  PRIMARY KEY (id_rekap),
  KEY fk_rekap_petugas (id_petugas),
  CONSTRAINT fk_rekap_petugas FOREIGN KEY (id_petugas) REFERENCES petugas (id_petugas) ON DELETE CASCADE
);

CREATE TABLE buku (
  kode_buku char(8) NOT NULL,
  judul varchar(50) DEFAULT NULL,
  pengarang varchar(50) DEFAULT NULL,
  penerbit varchar(50) DEFAULT NULL,
  tahun int DEFAULT NULL,
  tgl_pembelian date DEFAULT NULL,
  harga_beli int DEFAULT NULL,
  id_supplier char(4) DEFAULT NULL,
  id_kategori char(4) DEFAULT NULL,
  PRIMARY KEY (kode_buku),
  KEY fk_buku_supplier (id_supplier),
  KEY fk_buku_kategori (id_kategori),
  CONSTRAINT fk_buku_kategori FOREIGN KEY (id_kategori) REFERENCES kategori (id_kategori) ON DELETE CASCADE,
  CONSTRAINT fk_buku_supplier FOREIGN KEY (id_supplier) REFERENCES supplier (id_supplier) ON DELETE CASCADE
);

CREATE TABLE dipinjam (
  id_pinjam char(4) NOT NULL,
  tgl_pinjam date DEFAULT NULL,
  tgl_kembali date DEFAULT NULL,
  kode_buku char(8) DEFAULT NULL,
  NIM char(7) DEFAULT NULL,
  id_rekap char(4) DEFAULT NULL,
  PRIMARY KEY (id_pinjam),
  KEY fk_dipinjam_buku (kode_buku),
  KEY fk_dipinjam_mahasiswa (NIM),
  KEY fk_dipinjam_rekap (id_rekap),
  CONSTRAINT fk_dipinjam_buku FOREIGN KEY (kode_buku) REFERENCES buku (kode_buku) ON DELETE CASCADE,
  CONSTRAINT fk_dipinjam_mahasiswa FOREIGN KEY (NIM) REFERENCES mahasiswa (NIM) ON DELETE CASCADE,
  CONSTRAINT fk_dipinjam_rekap FOREIGN KEY (id_rekap) REFERENCES rekappeminjaman (id_rekap) ON DELETE CASCADE
);

INSERT INTO mahasiswa VALUES('A-06012','Disha Fitriani','1988-02-14','P','7789309','Jl. Sapphir No. 5 Bdg','dishacute@yahoo.com');
INSERT INTO mahasiswa VALUES('B-06029','Jaka Pradipta','1988-01-20','L','9867678','Sukabirus 88a','Knight_of_hell@gmail.com');
INSERT INTO mahasiswa VALUES('A-07211','Rini Agustin','1989-08-17','P','7793022','Jl. Mawar No. 5 Jkt','achiell@ymail.com');
INSERT INTO mahasiswa VALUES('A-07094','Ujang Marujang','1989-05-15','L','3823999','Jl. Kepatihan Timur','ujangkasep@yahoo.co.id');
INSERT INTO mahasiswa VALUES('A-08125','Donni Hutapea','1990-10-20','L','9920390','Kosan Blackhouse','Don_20@yahoo.com');
INSERT INTO mahasiswa VALUES('B-06021','Yusantina C.','1988-03-28','P','9928909','Jl. Rantau no.1','pinkgirlyever@yahoo.co.id');
INSERT INTO mahasiswa VALUES('B-07001','Anna Apriliana','1989-04-03','P','9920829','Jl. Galaxi No. 29','anna.apriliana@ymail.com');
INSERT INTO mahasiswa VALUES('B-08100','Alyssa S.','1991-12-25','P','7283900','Jl. Lentera No. 12','alyssa.s@gmail.com');
INSERT INTO mahasiswa VALUES('A-06303','Annissa W.','1989-06-20','P','7289202','Jl. Wiro No. 212','rev.nissa@gmail.com');
INSERT INTO mahasiswa VALUES('B-06902','Uya Kuya','1988-02-29','L','8982989','Jl. Kecubung No. 5','uyaemangkuya@kuda.com');

INSERT INTO supplier VALUES('0002','CV. Setia Karya','Jl. Matahari no.1-2','3487290');
INSERT INTO supplier VALUES('0003','CV. Didik Guna','Jl. Sukabumi no.102','3476989');
INSERT INTO supplier VALUES('0005','CV. Abadi','Jl. Rasamala No. C7','7348394');
INSERT INTO supplier VALUES('0001','CV. Cahaya Ilmu','Jl. Pendidikan No.1','2920090');
INSERT INTO supplier VALUES('0004','CV. Palasarionline.com','Jl. Palasari No. 10','9938899');

INSERT INTO lokasi VALUES('L002','Lemari 4');
INSERT INTO lokasi VALUES('L005','Lemari 1');
INSERT INTO lokasi VALUES('L001','Lemari 3');
INSERT INTO lokasi VALUES('L003','Lemari 5');
INSERT INTO lokasi VALUES('L004','Lemari 6');
INSERT INTO lokasi VALUES('L006','Lemari 2');

INSERT INTO petugas VALUES('0005','Jajang','Gg. Slamet No.C1','1231342');
INSERT INTO petugas VALUES('0001','Jakaria','Jl. Perintis, kav. 12',null);
INSERT INTO petugas VALUES('0002','Mamat','Gg. Senggol no.302','1223427');
INSERT INTO petugas VALUES('0003','Ridho','Gg. Goyang No.55',null);
INSERT INTO petugas VALUES('0004','Tatang','Gg. Slamet No. C24','1232341');

INSERT INTO kategori VALUES('0001','Fiksi','L004');
INSERT INTO kategori VALUES('0002','Science (Ilmu Umum)','L005');
INSERT INTO kategori VALUES('0004','Politik','L001');
INSERT INTO kategori VALUES('0005','Agama','L002');
INSERT INTO kategori VALUES('0006','Komputer','L006');
INSERT INTO kategori VALUES('0003','Kuliner','L003');

INSERT INTO inventarisperpus VALUES('B-0006','Meja Administrasi 1','2008-03-12','Baik','0002');
INSERT INTO inventarisperpus VALUES('B-0001','Kursi Panjang 1','2006-06-20','Baik','0005');
INSERT INTO inventarisperpus VALUES('B-0002','Kursi Panjang 2','2006-06-20','Baik','0005');
INSERT INTO inventarisperpus VALUES('B-0003','Kursi Panjang 3','2006-06-20','Baik','0004');
INSERT INTO inventarisperpus VALUES('B-0005','Meja Belajar 1','2007-10-29','Perlu diganti','0003');
INSERT INTO inventarisperpus VALUES('B-0009','Meja Administrasi 2','2008-04-30','Baik','0002');
INSERT INTO inventarisperpus VALUES('B-0008','Rak Arsip','2008-08-22','Baik','0001');
INSERT INTO inventarisperpus VALUES('B-0007','Meja Belajar 2','2007-10-29','Perlu diganti','0002');
INSERT INTO inventarisperpus VALUES('B-0004','Meja Belajar 3','2006-01-09','Baik','0001');

INSERT INTO rekappeminjaman VALUES('0001','2010-02-16','0001');
INSERT INTO rekappeminjaman VALUES('0002','2010-02-16','0002');
INSERT INTO rekappeminjaman VALUES('0003','2010-02-17','0003');
INSERT INTO rekappeminjaman VALUES('0004','2010-02-18','0004');
INSERT INTO rekappeminjaman VALUES('0005','2010-02-19','0005');

INSERT INTO buku VALUES('FIK-0020','Bintang Kejoraku','Ronald P. Pohan','Buku Sukses',2003,'2003-03-13',25000,'0003','0001');
INSERT INTO buku VALUES('POL-0012','Uang Rakyat Kemana?','Effendi Gazali','Elex Media Komputindo',2008,'2009-08-20',55000,'0001','0004');
INSERT INTO buku VALUES('SCI-0102','How to eat the sun','Thomas A. Edison','Backdoor Publishing',1943,'1990-04-19',210000,'0001','0002');
INSERT INTO buku VALUES('SCI-2001','The Goal','Steven Gerrard','Liverpool Wall',2006,'2008-10-10',121000,'0002','0002');
INSERT INTO buku VALUES('FIK-9291','Kobo Chan','Masashi Ueda','Elex Media Komputindo',1995,'1995-07-20',2000,'0003','0001');
INSERT INTO buku VALUES('AGA-0002','Tuntunan Shalat Lengkap','H. Umar','Dept. Agama Republik Indonesia',2000,'2000-02-24',25000,'0001','0005');
INSERT INTO buku VALUES('KUL-0212','Wisata Kuliner Bandung','Bondan','Gagas Media',2008,'2008-12-29',35000,'0002','0003');
INSERT INTO buku VALUES('KOM-0199','Basis Data Oracle','Iman Hakim','Informatika',2008,'2008-12-29',55000,'0004','0006');
INSERT INTO buku VALUES('KUL-0105','Membuat aneka kue kering dan jajanan pasar','Ajeng Widarti','Boga Rasa',2007,'2007-07-12',36000,'0005','0003');
INSERT INTO buku VALUES('FIK-0017','Jangan Engkau Pergi','Alex Junior','Erlangga',2001,'2002-10-12',20000,'0003','0001');
INSERT INTO buku VALUES('SCI-2286','The Lost Symbol','Dan Brown','Gramedia',2010,'2010-02-01',145000,'0001','0002');
INSERT INTO buku VALUES('POL-0109','Matinya Supremasi Hukum di Indonesia','Fathir Muhammad','Pena Dunia',2007,'2008-02-12',60000,'0001','0004');
INSERT INTO buku VALUES('SCI-1193','Da Vinci Code','Dan Brown','Gramedia',2006,'2006-03-13',128000,'0002','0002');
INSERT INTO buku VALUES('KOM-1021','Membangun kerajaan bisnis melalui facebook','Ilham Munandar','Guna Karya Media',2009,'2009-10-20',12000,'0005','0006');
INSERT INTO buku VALUES('SCI-2012','Benarkah 2012 Akhir Dunia?','Udin Marudin','Benteng',2009,'2009-08-29',65000,'0001','0002');
INSERT INTO buku VALUES('KOM-0092','Pemrograman AJAX','Budi Prihatin','Andi Jogjakarta',2009,'2009-05-02',55000,'0004','0006');
INSERT INTO buku VALUES('KOM-0012','Kemanan Jaringan untuk Transaksi Perbankan','Asep Saepudin','Informatika',2009,'2009-02-20',47500,'0004','0006');
INSERT INTO buku VALUES('FIK-0218','Doraemon','Fujiko F. Fujio','Elex Media Komputindo',1995,'1996-07-20',20000,'0003','0001');
INSERT INTO buku VALUES('KOM-0173','Animasi Flash CS3','Rahman Setia','Andi Jogjakarta',2009,'2009-12-14',77500,'0005','0006');

INSERT INTO dipinjam VALUES('0001','2010-02-15','2010-02-16','FIK-9291','A-07094','0001');
INSERT INTO dipinjam VALUES('0002','2010-02-15','2010-02-16','KOM-0199','B-07001','0001');
INSERT INTO dipinjam VALUES('0003','2010-02-15','2010-02-16','KOM-0092','A-08125','0001');
INSERT INTO dipinjam VALUES('0004','2010-02-16','2010-02-17','SCI-0102','B-08100','0002');
INSERT INTO dipinjam VALUES('0005','2010-02-16','2010-02-17','SCI-1193','B-06021','0002');
INSERT INTO dipinjam VALUES('0006','2010-02-16','2010-02-17','KUL-0105','B-07001','0002');
INSERT INTO dipinjam VALUES('0007','2010-02-17','2010-02-18','KUL-0212','A-06012','0003');
INSERT INTO dipinjam VALUES('0008','2010-02-17','2010-02-18','KOM-1021','A-07094','0003');
INSERT INTO dipinjam VALUES('0009','2010-02-18','2010-02-19','SCI-2001','A-07211','0004');
INSERT INTO dipinjam VALUES('0010','2010-02-18','2010-02-19','KOM-0012','A-07211','0004');
INSERT INTO dipinjam VALUES('0011','2010-02-18','2010-02-19','KOM-0173','A-06303','0004');
INSERT INTO dipinjam VALUES('0012','2010-02-19','2010-02-20','FIK-0218','A-06012','0005');
INSERT INTO dipinjam VALUES('0013','2010-02-19','2010-02-20','SCI-2012','A-06012','0005');
INSERT INTO dipinjam VALUES('0014','2010-02-19','2010-02-20','SCI-2286','B-06021','0005');
INSERT INTO dipinjam VALUES('0015','2010-02-19','2010-02-20','KOM-0199','B-08100','0005');