-- ## 1 
DELIMITER $$
CREATE PROCEDURE selectMahasiswa()
BEGIN
    SELECT * FROM mahasiswa;
END$$
DELIMITER ;

CALL selectMahasiswa()

-- ## 2
DELIMITER $$
CREATE PROCEDURE selectNama(nama VARCHAR(255))
BEGIN
    SELECT * FROM mahasiswa WHERE Nama_mahasiswa LIKE CONCAT('%', nama , '%');
END$$
DELIMITER ;

CALL selectNama('A');

-- ## 3 
DROP PROCEDURE IF EXISTS selectNomerTiga;
DELIMITER $$
CREATE PROCEDURE selectNomerTiga(nama VARCHAR(255), klm VARCHAR(2))
BEGIN
    DECLARE kelamin VARCHAR(255);
    
    IF klm = 'L' THEN  	
         	SET kelamin = 'LAKI - LAKI';
    ELSE
    	SET kelamin = 'PEREMPUAN';
    END IF;
    
    SELECT * FROM mahasiswa WHERE Nama_mahasiswa LIKE CONCAT('%', nama , '%');
    SELECT kelamin;
END$$
DELIMITER ;

CALL selectNomerTiga('annisa', 'L');
