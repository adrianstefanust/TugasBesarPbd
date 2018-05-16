CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailHubungan`(
	IN idStatus int
)
BEGIN
	declare namaCustomer1 varchar(45);
    declare namaCustomer2 varchar(45);
    
	Select 
    cust1.nama as namaCust1,
    cust2.nama as namaCust2, 
    hubungancustomer.idCustomer1,
    hubungancustomer.idCustomer2,
    hubungancustomer.idStatus,
    hubungancustomer.tanggal,
    hubungancustomer.idhubungan, 
    hubungan.nama
    FROM
    hubungancustomer join hubungan
    ON
    hubungancustomer.idHubungan = hubungan.idHubungan
    
    JOIN 
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust1
    ON
    hubungancustomer.idCustomer1 = cust1.idCustomer
    JOIN
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust2
    ON
    (hubungancustomer.idCustomer2 = cust2.idCustomer)
    WHERE
    hubungancustomer.idStatus = idStatus;
END