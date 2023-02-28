DROP TABLE IF EXISTS tiket;
DROP TABLE IF EXISTS pelanggan;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS tiket;
DROP TABLE IF EXISTS harga;
DROP TABLE IF EXISTS jadwal;
DROP TABLE IF EXISTS studio;
DROP TABLE IF EXISTS kursi;

CREATE TABLE kursi (
  id_kursi int NOT NULL,
  id_studio int NOT NULL,
  kolom varchar(2) NOT NULL,
  baris varchar(2) NOT NULL,
  no_kursi int NOT NULL,
  status_kursi tinyint(1) NOT NULL,
  PRIMARY KEY (id_kursi,id_studio)
);

CREATE TABLE studio (
  id_studio int NOT NULL,
  nama_studio varchar(20) NOT NULL,
  id_kursi int NOT NULL,
  PRIMARY KEY (id_studio,nama_studio),
  KEY studio_FK (id_kursi,id_studio),
  CONSTRAINT studio_FK FOREIGN KEY (id_kursi, id_studio) REFERENCES kursi (id_kursi, id_studio)
);

CREATE TABLE jadwal (
  id_jadwal int NOT NULL,
  id_studio int NOT NULL,
  tanggal date NOT NULL,
  jam_mulai datetime NOT NULL,
  jam_selesai datetime NOT NULL,
  nama_studio varchar(100) NOT NULL,
  id_film int NOT NULL,
  PRIMARY KEY (id_jadwal),
  KEY jadwal_studio_FK (id_studio,nama_studio),
  CONSTRAINT jadwal_studio_FK FOREIGN KEY (id_studio, nama_studio) REFERENCES studio (id_studio, nama_studio)
);

CREATE TABLE harga (
  id_harga int NOT NULL,
  harga int NOT NULL,
  weekend tinyint(1) NOT NULL,
  PRIMARY KEY (id_harga)
);

CREATE TABLE film (
  id_film int NOT NULL,
  judul varchar(30) NOT NULL,
  type varchar(10) NOT NULL,
  durasi int NOT NULL,
  sinopsis varchar(255) NOT NULL,
  id_jadwal int DEFAULT NULL,
  PRIMARY KEY (id_film),
  KEY jadwal_FK (id_jadwal),
  CONSTRAINT jadwal_FK FOREIGN KEY (id_jadwal) REFERENCES jadwal (id_jadwal)
);

CREATE TABLE pelanggan (
  id_pelanggan int NOT NULL,
  name varchar(30) NOT NULL,
  password varchar(20) NOT NULL,
  email varchar(255) NOT NULL,
  alamat varchar(255) NOT NULL,
  no_telepon varchar(13) DEFAULT NULL,
  PRIMARY KEY (id_pelanggan)
);

CREATE TABLE tiket (
  id_tiket int NOT NULL AUTO_INCREMENT,
  id_pelanggan int NOT NULL,
  id_jadwal int NOT NULL,
  id_harga int NOT NULL,
  id_film int NOT NULL,
  no_kursi varchar(5) NOT NULL,
  tanggal_pembelian date NOT NULL,
  total_harga int NOT NULL,
  PRIMARY KEY (id_tiket),
  KEY pelanggan_FK (id_pelanggan),
  KEY harga_FK (id_harga),
  KEY film_FK (id_film),
  KEY jadwal_FK (id_jadwal),
  CONSTRAINT film_FK FOREIGN KEY (id_film) REFERENCES film (id_film),
  CONSTRAINT harga_FK FOREIGN KEY (id_harga) REFERENCES harga (id_harga),
  CONSTRAINT pelanggan_FK FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan)
);

INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (1, 1, 'A', '1', 1, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (2, 1, 'A', '2', 2, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (3, 1, 'A', '3', 3, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (4, 1, 'A', '4', 4, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (5, 1, 'A', '5', 5, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (6, 1, 'A', '6', 6, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (7, 1, 'A', '7', 7, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (8, 1, 'A', '8', 8, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (9, 1, 'A', '9', 9, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (10, 1, 'A', '10', 10, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (11, 1, 'B', '1', 11, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (12, 1, 'B', '2', 12, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (13, 1, 'B', '3', 13, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (14, 1, 'B', '4', 14, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (15, 1, 'B', '5', 15, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (16, 1, 'B', '6', 16, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (17, 1, 'B', '7', 17, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (18, 1, 'B', '8', 18, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (19, 1, 'B', '9', 19, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (20, 1, 'B', '10', 20, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (1, 2, 'A', '1', 1, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (2, 2, 'A', '2', 2, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (3, 2, 'A', '3', 3, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (4, 2, 'A', '4', 4, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (5, 2, 'A', '5', 5, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (6, 2, 'A', '6', 6, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (7, 2, 'A', '7', 7, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (8, 2, 'A', '8', 8, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (9, 2, 'A', '9', 9, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (10, 2, 'A', '10', 10, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (11, 2, 'B', '1', 11, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (12, 2, 'B', '2', 12, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (13, 2, 'B', '3', 13, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (14, 2, 'B', '4', 14, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (15, 2, 'B', '5', 15, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (16, 2, 'B', '6', 16, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (17, 2, 'B', '7', 17, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (18, 2, 'B', '8', 18, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (19, 2, 'B', '9', 19, 0);
INSERT INTO kursi (id_kursi, id_studio, kolom, baris, no_kursi, status_kursi) VALUES (20, 2, 'B', '10', 20, 0);

INSERT INTO studio (id_studio, nama_studio, id_kursi) VALUES (1, 'Studio 1', 1);
INSERT INTO studio (id_studio, nama_studio, id_kursi) VALUES (2, 'Studio 2', 2);

INSERT INTO jadwal (id_jadwal, id_studio, tanggal, jam_mulai, jam_selesai, nama_studio, id_film) VALUES (1, 1, '2022-05-01', '2022-05-01 12:00:00', '2022-05-01 15:00:00', 'Studio 1', 1);
INSERT INTO jadwal (id_jadwal, id_studio, tanggal, jam_mulai, jam_selesai, nama_studio, id_film) VALUES (2, 2, '2022-05-02', '2022-05-02 14:00:00', '2022-05-02 17:00:00', 'Studio 2', 2);

INSERT INTO harga (id_harga, harga, weekend) VALUES (1, 25000, 0);
INSERT INTO harga (id_harga, harga, weekend) VALUES (2, 30000, 1);

INSERT INTO film (id_film, judul, type, durasi, sinopsis, id_jadwal) VALUES (1, 'Film 1', 'Action', 120, 'Sinopsis Film 1', 1);
INSERT INTO film (id_film, judul, type, durasi, sinopsis, id_jadwal) VALUES (2, 'Film 2', 'Comedy', 110, 'Sinopsis Film 2', 2);

INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (1, 'John Doe', 'password1', 'johndoe@example.com', '123 Main St', '+1234567890');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (2, 'Jane Smith', 'password2', 'janesmith@example.com', '456 Park Ave', '+0987654321');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (3, 'Bob Johnson', 'password3', 'bobjohnson@example.com', '789 Elm St', '+2345678901');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (4, 'Samantha Williams', 'password4', 'samanthawilliams@example.com', '321 Oak St', '+3456781290');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (5, 'Michael Brown', 'password5', 'michaelbrown@example.com', '654 Pine St', '+4567890234');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (6, 'Emily Davis', 'password6', 'emilydavis@example.com', '987 Cedar St', '+5678902345');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (7, 'Matthew Miller', 'password7', 'matthewmiller@example.com', '246 Birch St', '+6789023456');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (8, 'Jacob Garcia', 'password8', 'jacobgarcia@example.com', '369 Maple St', '+7890123456');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (9, 'Nicholas Rodriguez', 'password9', 'nicholasrodriguez@example.com', '159 Willow St', '+8901234567');
INSERT INTO pelanggan (id_pelanggan, name, password, email, alamat, no_telepon) VALUES (10, 'Anthony Martinez', 'password10', 'anthonymartinez@example.com', '753 Oak St', '+9012345678');
 
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (1, 1, 1, 1, 'A1', '2022-01-01', 25000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (2, 2, 2, 1, 'A2', '2022-01-02', 30000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (3, 1, 1, 1, 'A3', '2022-01-03', 25000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (4, 2, 2, 1, 'A4', '2022-01-04', 30000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (5, 1, 1, 1, 'A5', '2022-01-05', 25000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (6, 2, 2, 1, 'A6', '2022-01-06', 30000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (7, 1, 1, 1, 'A7', '2022-01-07', 25000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (8, 2, 2, 1, 'A8', '2022-01-08', 30000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (9, 1, 1, 1, 'A9', '2022-01-09', 25000);
INSERT INTO tiket (id_pelanggan, id_jadwal, id_harga, id_film, no_kursi, tanggal_pembelian, total_harga) VALUES (10, 2, 2, 1, 'A10', '2022-01-10', 30000);
