CREATE DEFINER=`root`@`localhost` PROCEDURE `getEventUlangTahun`()
BEGIN
	Select 
    DAY(customer.tanggalLahir) as tanggalLahirCust,
    customer.nama,
    customer.tanggalLahir,
     TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE())+1 as 'Umur'
    FROM
    customer
    WHERE
    	DATE_FORMAT(tanggalLahir,'%m-%d') between (DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 1 DAY),'%m-%d'))AND (DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 7 DAY),'%m-%d'))
	ORDER BY
		customer.tanggalLahir asc;
END