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
    DECLARE idsb int;
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
    SELECT NOW() INTO waktu;
    SET ct = (SELECT COUNT(idCustomer) FROM perubahanCustomer WHERE perubahanCustomer.idCustomer = idCustomer);
    IF ct  = 0 THEN
        IF tempNama != nama THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nama',tempnama,NULL,waktu,idAdmin);
            UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempIdLokasi != idLokasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','idLokasi',tempidLokasi,NULL,waktu,idAdmin);
            UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempTanggalLahir != tanggalLahir THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','tanggalLahir',temptanggalLahir,NULL,waktu,idAdmin);
            UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempAlamat != alamat THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','alamat',tempalamat,NULL,waktu,idAdmin);
            UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempNilaiInvestasi != nilaiInvestasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nilaiInvestasi',tempNilaiInvestasi,NULL,waktu,idAdmin);
            UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
        END IF;
    ELSE
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nama'ORDER BY id DESC LIMIT 1);
        SELECT idsb;
        IF tempNama != nama THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nama',tempnama,idsb,waktu,idAdmin);
            UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'idLokasi'ORDER BY id DESC LIMIT 1);
        IF tempIdLokasi != idLokasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','idLokasi',tempidLokasi,idsb,waktu,idAdmin);
            UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'tanggalLahir'ORDER BY id DESC LIMIT 1);
        IF tempTanggalLahir != tanggalLahir THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','tanggalLahir',temptanggalLahir,idsb,waktu,idAdmin);
            UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'alamat'ORDER BY id DESC LIMIT 1);
        IF tempAlamat != alamat THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','alamat',tempalamat,idsb,waktu,idAdmin);
            UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nilaiInvestasi'ORDER BY id DESC LIMIT 1);
        IF tempNilaiInvestasi != nilaiInvestasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nilaiInvestasi',tempNilaiInvestasi,idsb,waktu,idAdmin);
            UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
        END IF;
    END IF;
    DROP TEMPORARY Table customerSementara;
END