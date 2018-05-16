CREATE DEFINER=`root`@`localhost` PROCEDURE `getJumlahCustomer`()
BEGIN
	SELECT
		Count(customer.idCustomer) as totalCustomer
	FROM
		Customer;
END