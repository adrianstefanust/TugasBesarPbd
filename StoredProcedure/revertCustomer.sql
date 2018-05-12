CREATE DEFINER=`root`@`localhost` PROCEDURE `revertCustomer`(
id int,
idAdmin int
)
BEGIN
DECLARE v_finished INTEGER DEFAULT 0;
DECLARE namaField1 varchar(1000);
declare valueSebelum1 varchar(1000);
DECLARE waktu datetime;
DECLARE temp varchar(1000);
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
	SET waktu= (SELECT NOW());
    get_id:LOOP
	
    IF v_finished = 1 
		THEN LEAVE get_id;
	END IF;
    SELECT valueSebelum1;
		IF namaField1 = 'nilaiInvestasi' THEN
			SET temp = (SELECT Customer.nilaiInvestasi FROM Customer WHERE id = idCustomer);
            call insertPerubahanCustomer(id,'Customer','nilaiInvestasi',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET nilaiInvestasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'alamat' THEN
			SET temp = (SELECT Customer.alamat FROM Customer WHERE id = idCustomer);
			call insertPerubahanCustomer(id,'Customer','alamat',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET alamat = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'nama' THEN
			SET temp = (SELECT Customer.nama FROM Customer WHERE id = idCustomer);
            call insertPerubahanCustomer(id,'Customer','nama',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET nama = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'idLokasi' THEN
			SET temp = (SELECT Customer.idLokasi FROM Customer WHERE id = idCustomer);
			call insertPerubahanCustomer(id,'Customer','idLokasi',temp,NULL,waktu,idAdmin);
            UPDATE Customer SET idLokasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'tanggalLahir' THEN
			SET temp = (SELECT Customer.tanggalLahir FROM Customer WHERE id = idCustomer);
             call insertPerubahanCustomer(id,'Customer','tanggalLahir',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET tanggalLahir = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
    FETCH myCursor INTO namaField1,valueSebelum1;
    END LOOP get_id;
    CLOSE myCursor;
    
END