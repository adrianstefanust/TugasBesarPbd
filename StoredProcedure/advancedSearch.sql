CREATE DEFINER=`root`@`localhost` PROCEDURE `advancedSearch`(
nama varchar(1000),
idLokasi int,
umurBawah int,
umurAtas int,
nilaiInvestasiBawah int,
nilaiInvestasiAtas int
)
BEGIN
	DECLARE s VARCHAR(1000);
    set s = 'SELECT 
    customer.idCustomer,
    Customer.nama,
    Lokasi.nama as lokasi,
    tanggalLahir,
    Alamat,
    nilaiInvestasi
    FROM CUSTOMER JOIN LOKASI ON LOKASI.idLokasi = customer.idlokasi WHERE ';
    IF nama != '' THEN 
		SET s = CONCAT(s," LOWER(customer.nama) LIKE '%",LOWER(nama),"%' AND");
    END IF;
    IF idLokasi != 0 THEN 
		SET s = CONCAT(s,' customer.idLokasi =',idLokasi,' AND');
    END IF;
    IF umurbawah != 0 THEN 
		SET s = CONCAT(s," TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE()) >= ",umurBawah,' AND');
    END IF;
    IF umuratas != 0 THEN 
		SET s = CONCAT(s," TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE()) <= ",umurAtas,' AND');
    END IF;    
    IF nilaiInvestasiBawah != 0 THEN 
		SET s = CONCAT(s,' nilaiInvestasi >= ',NilaiInvestasibawah,' AND');
    END IF;
    IF nilaiInvestasiAtas != 0 THEN 
		SET s = CONCAT(s,' nilaiInvestasi <= ',NilaiInvestasiatas,' AND');
    END IF;
    if  SUBSTRING(s, -3, 3) = 'AND' THEN
		SET @z =  SUBSTRING(s, 1, LENGTH(s)-3);
	ELSE 
		SET @z =  SUBSTRING(s, 1, LENGTH(s)-6);
	END IF;
	PREPARE stmt1 FROM @z;
	EXECUTE stmt1 ;
	DEALLOCATE PREPARE stmt1;
END