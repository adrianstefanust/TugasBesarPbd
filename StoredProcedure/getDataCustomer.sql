CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataCustomer`(
)
BEGIN

Select
	customer.idCustomer, customer.nama, lokasi.nama as lokasi, customer.tanggalLahir, customer.tanggalMasuk, customer.alamat, customer.nilaiInvestasi
FROM
	Customer JOIN Lokasi
ON
	customer.idLokasi = lokasi.idLokasi
ORDER BY
	customer.nama asc;
END