-- ## 1
-- A 
insert into mahasiswa values('A-12345','Denada Ajah','1991-02-14','P','1112223','Jl. Sukabirus No.24','D3n4d4@iflab.com');
-- B 
UPDATE perpustakaan.mahasiswa SET alamat='Jl. Kecebong No. 6' WHERE NIM='A-12345';
-- C
DELETE FROM perpustakaan.mahasiswa WHERE NIM='A-12345';

-- ## 2
SELECT NIM, Nama_mahasiswa, Jns_kelamin  FROM mahasiswa WHERE NIM LIKE 'a%';
-- A
UPDATE perpustakaan.mahasiswa SET Jns_kelamin='Lelaki' WHERE Jns_kelamin='L';
-- B
UPDATE perpustakaan.mahasiswa SET Jns_kelamin='Perempuan' WHERE Jns_kelamin='P';

-- ubah tipe variabel
ALTER TABLE perpustakaan.mahasiswa MODIFY COLUMN Nama_mahasiswa VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL;
