CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCustomer`(
in nama varchar (100),
in idLokasi int,
in tanggalLahir date,
in alamat varchar(100),
in nilaiInvestasi int(11),
in idAdmin int(11)
)
BEGIN
INSERT INTO customer (nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi,idAdmin, tanggalMasuk) 
SELECT * FROM (select nama,idLokasi,tanggalLahir,alamat,nilaiInvestasi,idAdmin,  NOW()) as tmp
where NOT EXISTS
	(
	select nama,tanggalLahir,alamat from customer where customer.nama=nama and customer.tanggalLahir=tanggalLahir and customer.alamat = alamat
    );

END