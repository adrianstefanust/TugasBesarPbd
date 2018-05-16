CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPerubahanCustomer`(
in idCustomer int,
in namaField varchar (100),
in valueSebelum varchar(100),
in idSebelum int,
in valueSekarang varchar (100),
in tanggalberubah datetime,
in idAdmin int,
in isValid tinyInt
)
BEGIN
 INSERT INTO perubahanCustomer
 (idcustomer,namaField,valueSebelum,idSebelum,valueSekarang,tanggalBerubah,idAdmin,isValid)
    SELECT 
  idcustomer,namaField,valueSebelum,idSebelum,valueSekarang,tanggalBerubah,idAdmin,isValid;
END