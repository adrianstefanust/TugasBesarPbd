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
    DECLARE waktu datetime;
    DECLARE ct int;
    DECLARE temp varchar(1000);
    DECLARE idsb int;
    DECLARE isVal int ;
    
	DROP TABLE  IF EXISTS customerSementara;
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
	SET isVal = 0 ;
    Select customerSementara.nama into tempNama FROM customerSementara;
    Select customerSementara.idLokasi into tempIdLokasi FROM customerSementara;
    Select customerSementara.tanggalLahir into tempTanggalLahir FROM customerSementara;
    Select customerSementara.alamat into tempAlamat FROM customerSementara;
    Select customerSementara.nilaiInvestasi into tempNilaiInvestasi FROM customerSementara;
    SELECT NOW() INTO waktu;
    SET ct = (SELECT COUNT(idCustomer) FROM perubahanCustomer WHERE perubahanCustomer.idCustomer = idCustomer);
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nama' AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	SELECT idsb;
	IF tempNama != nama THEN 
		SET temp = (SELECT nama FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'nama',tempnama,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'idLokasi'  AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempIdLokasi != idLokasi THEN 
		SET temp = (SELECT idLokasi FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'idLokasi',tempidLokasi,idsb,temp,waktu,idAdmin,isval);
		UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'tanggalLahir'  AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempTanggalLahir != tanggalLahir THEN 
		SET temp = (SELECT tanggalLahir FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'tanggalLahir',temptanggalLahir,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'alamat' AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempAlamat != alamat THEN 
		SET temp = (SELECT alamat FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'alamat',tempalamat,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nilaiInvestasi' AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempNilaiInvestasi != nilaiInvestasi THEN 
		SET temp = (SELECT nilaiInvestasi FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'nilaiInvestasi',tempNilaiInvestasi,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
	END IF;
    DROP TEMPORARY Table customerSementara;
END