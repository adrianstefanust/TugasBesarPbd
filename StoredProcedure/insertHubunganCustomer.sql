CREATE DEFINER=`root`@`localhost` PROCEDURE `insertHubunganCustomer`(
	in customer1 int,
    in customer2 int,
    in hubungan int
)
BEGIN
    
	INSERT INTO hubunganCustmer (idcustomer1, idCustomer2, idHubungan,tanggal,isValid) 
		SELECT 
			customer1,
            customer2,
            hubungan,
            NOW(),
            1
		WHERE NOT EXISTS
			(
			SELECT 
				idcustomer1,
				idcustomer2,
				idhubungan 
			FROM 
				hungancusotmer 
			WHERE 
				hubungancustomer.idcustomer1=customer1 
				AND 
				hubungancustomer.idcustomer2=customer2 
				AND 
				hubungancustomer.idhubungan = hubungan
			);
END