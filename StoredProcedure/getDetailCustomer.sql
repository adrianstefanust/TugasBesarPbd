CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailCustomer`(
	in idCustomer int
)
BEGIN
	SELECT customer.idCustomer, customer.nama, customer.alamat, customer.idLokasi, customer.tanggalLahir,
    customer.nilaiInvestasi
    FROM
    customer
    WHERE
    customer.idCustomer = idCustomer;
END