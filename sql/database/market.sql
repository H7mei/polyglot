DROP TABLE IF EXISTS costomer;
DROP TABLE IF EXISTS detail_transaksi;
DROP TABLE IF EXISTS pegawai;
DROP TABLE IF EXISTS kantor;
DROP TABLE IF EXISTS produk;
DROP TABLE IF EXISTS transaksi;

CREATE TABLE costomer(
   id_pelanggan   INTEGER  NOT NULL PRIMARY KEY,
   nama_pelanggan VARCHAR(6) NOT NULL,
   no_hp          VARCHAR(255)  NOT NULL,
   id_sales       INTEGER  NOT NULL
);

CREATE TABLE detail_transaksi(
   kode_produk  INTEGER  NOT NULL PRIMARY KEY,
   id_transaksi INTEGER  NOT NULL,
   jumlah       INTEGER  NOT NULL
);

CREATE TABLE pegawai(
   NIP         INTEGER  NOT NULL PRIMARY KEY,
   nama        VARCHAR(7) NOT NULL,
   kode_kantor VARCHAR(3) NOT NULL,
   pic         INTEGER,
   jabatan     VARCHAR(8) NOT NULL
);

CREATE TABLE kantor(
   kode_kantor   VARCHAR(3) NOT NULL PRIMARY KEY,
   alamat        VARCHAR(12) NOT NULL,
   notelp_kantor VARCHAR(10) NOT NULL,
   kota          VARCHAR(8) NOT NULL
);

CREATE TABLE produk(
   kode_produk   VARCHAR(255) NOT NULL PRIMARY KEY,
   nama_produk   VARCHAR(255) NOT NULL,
   harga         VARCHAR(255) NOT NULL,
   jenis         VARCHAR(255) NOT NULL
);

CREATE TABLE transaksi(
   id_transaksi  VARCHAR(255) NOT NULL PRIMARY KEY,
   tanggal       VARCHAR(255) NOT NULL,
   id_pelanggan  VARCHAR(255) NOT NULL,
   status        VARCHAR(255) NOT NULL
);


INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (201,'joko','081992819201',300);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (202,'inem','081818171819',300);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (203,'sekar','081928192818',301);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (204,'miska','098291827381',302);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (205,'husen','081928192812',301);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (206,'misel','091829182718',301);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (207,'yola','081928192819',300);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (208,'pasha','081928172812',303);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (209,'unyil','081982918291',301);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (210,'usro','081928192812',301);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (211,'melani','082918291829',300);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (212,'bunga','081728172918',304);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (213,'rendi','082918291829',305);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (214,'michel','082918291821',306);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (215,'pilip','082918291212',306);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (216,'santi','081928192812',315);
INSERT INTO costomer(id_pelanggan,nama_pelanggan,no_hp,id_sales) VALUES (217,'susan','081928391821',314);

INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (501,101,50);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (502,101,20);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (503,101,40);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (501,102,30);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (502,102,31);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (503,103,10);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (504,103,22);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (505,104,22);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (505,105,54);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (504,106,22);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (505,107,31);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (501,108,642);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (502,109,940);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (503,109,231);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (504,110,3121);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (505,111,2123);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (501,112,1212);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (502,112,41341);
INSERT INTO detail_transaksi(kode_produk,id_transaksi,jumlah) VALUES (504,111,2134);

INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (300,'patrick','m01',310,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (301,'mawar','m02',311,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (302,'budi','m01',310,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (303,'jini','m03',312,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (304,'anggi','m03',312,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (305,'vina','m03',312,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (306,'frans','m02',311,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (307,'mina','m02',311,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (308,'upi','m01',310,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (309,'viki','m02',311,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (310,'vio','m01',313,'manager');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (311,'josh','m02',313,'manager');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (312,'muki','m03',313,'manager');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (313,'brian','m01',NULL,'direktur');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (314,'cica','m01',310,'sales');
INSERT INTO pegawai(NIP,nama,kode_kantor,pic,jabatan) VALUES (315,'sindi','m01',310,'sales');

INSERT INTO kantor(kode_kantor,alamat,notelp_kantor,kota) VALUES ('m01','jl ketintang','031-502901','surabaya');
INSERT INTO kantor(kode_kantor,alamat,notelp_kantor,kota) VALUES ('m02','jl sawojajar','034-501291','malang');
INSERT INTO kantor(kode_kantor,alamat,notelp_kantor,kota) VALUES ('m03','jl sudirman','021-891021','jakarta');

INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('501','Tahu telor','11000','makanan');
INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('502','bakso','10000','makanan');
INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('503','seblak','9800','makanan');
INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('504','jeruk','5400','minuman');
INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('505','jus','5600','minuman');
INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('506','teh','3500','minuman');
INSERT INTO produk(kode_produk,nama_produk,harga,jenis) VALUES ('507','tahu campur','12500','makanan');

INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('101','12/2/2022','201','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('102','12/2/2022','205','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('103','12/2/2022','204','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('104','12/2/2022','208','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('105','12/3/2022','201','kredit');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('106','12/3/2022','202','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('107','12/3/2022','203','kredit');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('108','12/3/2022','204','kredit');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('109','12/3/2022','205','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('110','12/3/2022','206','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('111','12/2/2022','207','lunas');
INSERT INTO transaksi(id_transaksi,tanggal,id_pelanggan,status) VALUES ('112','12/2/2022','203','lunas');