CREATE DEFINER=`root`@`localhost` PROCEDURE `dynamicsql`(
nama varchar(1000),
idLokasi int,
umurBawah int,
umurAtas int,
nilaiInvestasiBawah int,
nilaiInvestasiAtas int
)
BEGIN
	DECLARE s VARCHAR(1000);
    set s = 'SELECT * FROM CUSTOMER WHERE ';
    IF nama != '' THEN 
		SET s = CONCAT(s," LOWER(nama) LIKE '%",LOWER(nama),"%' AND");
    END IF;
    IF idLokasi != 0 THEN 
		SET s = CONCAT(s,' idLokasi =',idLokasi,' AND');
    END IF;
    IF umurbawah != 0 THEN 
		SET s = CONCAT(s," TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE()) > ",umurBawah,' AND');
    END IF;
    IF umuratas != 0 THEN 
		SET s = CONCAT(s," TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE()) < ",umurAtas,' AND');
    END IF;    
    IF nilaiInvestasiBawah != 0 THEN 
		SET s = CONCAT(s,' nilaiInvestasi > ',NilaiInvestasibawah,' AND');
    END IF;
    IF nilaiInvestasiAtas != 0 THEN 
		SET s = CONCAT(s,' nilaiInvestasi < ',NilaiInvestasiatas,' AND');
    END IF;
    SET @z =  SUBSTRING(s, 1, LENGTH(s)-3);
	PREPARE stmt1 FROM @z;
	EXECUTE stmt1 ;
	DEALLOCATE PREPARE stmt1;
END