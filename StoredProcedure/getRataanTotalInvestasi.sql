CREATE DEFINER=`root`@`localhost` PROCEDURE `getRataanTotalnvestasi`()
BEGIN
	Select
		SUM(customer.nilaiInvestasi) as totalInvestasi
	FROM
		Customer;
END