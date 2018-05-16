CREATE DEFINER=`root`@`localhost` PROCEDURE `insertHubunganCustomer`(
	in customer1 int,
    in customer2 int,
    in hubungan int
)
BEGIN
    
	INSERT INTO hubunganCustomer (idcustomer1, idCustomer2, idHubungan,isValid, idHubSebelum) 
		SELECT 
			customer1,
            customer2,
            hubungan,
            1,
            NULL
		WHERE NOT EXISTS
			(
			SELECT 
				idcustomer1,
				idcustomer2,
				idhubungan 
			FROM 
				hubungancustomer 
			WHERE 
				hubungancustomer.idcustomer1=customer1 
				AND 
				hubungancustomer.idcustomer2=customer2 
				AND 
				hubungancustomer.idhubungan = hubungan
			);
END