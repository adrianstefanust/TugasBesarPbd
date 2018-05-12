CREATE DEFINER=`root`@`localhost` PROCEDURE `revertCustomer`(
id int
)
BEGIN
DECLARE waktu datetime;
DECLARE v_finished INTEGER DEFAULT 0;
DECLARE namaField1 varchar(1000);
declare valueSebelum1 varchar(1000);
DECLARE que varchar(1000);

declare myCursor cursor for
    SELECT namaField,valueSebelum
    FROM perubahanCustomer 
    WHERE 
	idCustomer = id AND 
    tanggalBerubah = (SELECT
		tanggalBerubah
		FROM perubahancustomer
		WHERE idCustomer = id
		ORDER BY tanggalberubah desc
		LIMIT 1);
        
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
	open myCursor;
    get_id:LOOP
   
    IF v_finished = 1 
		THEN LEAVE get_id;
	END IF;
    FETCH myCursor INTO namaField1,valueSebelum1;
    SELECT valueSebelum1;
		IF namaField1 = 'nilaiInvestasi' THEN
			UPDATE Customer SET nilaiInvestasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'alamat' THEN
			UPDATE Customer SET alamat = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'nama' THEN
			UPDATE Customer SET nama = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'idLokasi' THEN
			UPDATE Customer SET idLokasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'tanggalLahir' THEN
			UPDATE Customer SET tanggalLahir = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
    END LOOP get_id;
    CLOSE myCursor;
    
    
   
END