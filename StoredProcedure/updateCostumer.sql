DROP PROCEDURE IF EXISTS 'updateHubungan';
DROP TEMPORARY Table IF EXISTS customerSementara;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCustomer`(
in idCustomer int,
in nama varchar (100),
in idLokasi INT,
in tanggalLahir date,
in alamat varchar(100),
in nilaiInvestasi int(11),
in idAdmin int
)
BEGIN


	DECLARE tempNama varchar(100);
	DECLARE tempidLokasi int;
	DECLARE tempTanggalLahir date;
	DECLARE tempAlamat varchar(100);
	DECLARE tempNilaiInvestasi int(11);
    
	CREATE TEMPORARY TABLE customerSementara (
		nama varchar(100), 
        idLokasi int,
        tanggalLahir date,
        alamat varchar(100),
        nilaiInvestasi int);
    INSERT INTO customerSementara
	SELECT
		Customer.nama,
        Customer.idLokasi,
        Customer.tanggalLahir,
        Customer.alamat,
        Customer.nilaiInvestasi
	FROM 
		Customer
	WHERE
		Customer.idCustomer = idCustomer;
        
	Select customerSementara.nama into tempNama FROM customerSementara;
    Select customerSementara.idLokasi into tempIdLokasi FROM customerSementara;
    Select customerSementara.tanggalLahir into tempTanggalLahir FROM customerSementara;
    Select customerSementara.alamat into tempAlamat FROM customerSementara;
    Select customerSementara.nilaiInvestasi into tempNilaiInvestasi FROM customerSementara;
		
    IF tempNama != nama THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','nama',tempnama,NULL,idAdmin);
		UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
    END IF;
    IF tempIdLokasi != idLokasi THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','idLokasi',tempidLokasi,NULL,idAdmin);
        UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
    END IF;
    IF tempTanggalLahir != tanggalLahir THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','tanggalLahir',temptanggalLahir,NULL,idAdmin);
        UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
    END IF;
    IF tempAlamat != alamat THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','alamat',tempalamat,NULL,idAdmin);
        UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
    END IF;
    IF tempNilaiInvestasi != nilaiInvestasi THEN 
		call insertPerubahanCustomer(idcustomer,'Customer','nilaiInvestasi',tempNilaiInvestasi,NULL,idAdmin);
        UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
	END IF;
    DROP TEMPORARY Table customerSementara;
END