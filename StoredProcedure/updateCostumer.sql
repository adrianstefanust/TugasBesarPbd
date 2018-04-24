CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCustomer`(
in idCustomer int,
in nama varchar (100),
in idLokasi INT,
in tanggalLahir date,
in alamat varchar(100),
in nilaiInvestasi int
)
BEGIN
	DECLARE tempNama int;
	DECLARE tempidLokasi int;
	DECLARE tempTanggalLahir int;
	DECLARE tempAlamat int;
	DECLARE tempNilaiInvestasi int;
	CREATE TEMPORARY TABLE customerSementara (nama varchar(100), idLokasi int, tanggalLahir date, alamat varchar(100), nilaiInvestasi int);
    INSERT INTO customerSementara
	SELECT
		nama,
        idLokasi,
        tanggalLahir,
        alamat,
        nilaiInvestasi
	FROM 
		Customer
	WHERE
		Customer.idCustomer = idCustomer;
        
	Select nama into tempNama FROM customerSementara;
    Select idLokasi into tempIdLokasi FROM customerSementara;
    Select tanggalLahir into tempTanggalLahir FROM customerSementara;
    Select alamat into tempAlamat FROM customerSementara;
    Select nilaiInvestasi into tempNilaiInvestasi FROM customerSementara;
	
    IF tempNama != nama THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','nama',tempnama,NULL,1);
		UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
    ELSEIF tempIdLokasi != idLokasi THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','idLokasi',tempidLokasi,NULL,1);
        UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
    ELSEIF tempTanggalLahir != tanggalLahir THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','tanggalLahir',temptanggalLahir,NULL,1);
        UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
    ELSEIF tempAlamat != alamat THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','alamat',tempalamat,NULL,1);
        UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
    ELSEIF tempNilaiInvestasi != nilaiInvestasi THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','nilaiInvestasi',tempnilaiInvestasi,NULL,1);
        UPDATE customer SET customer.nilaiInvestasi = nama WHERE customer.nilaiInvestasi = idCustomer;
	END IF;
    
	DROP TABLE customerSementara;
END