CREATE DEFINER=`root`@`localhost` PROCEDURE `revertHubungan`(
    IN idCustomer1 int,
    IN idCustomer2 int,
    in idHubungan int
)
BEGIN
	declare idHubSebelumnya int;
    declare idStatusSebelumnya int;
    declare idStatusSekarang int;
    SELECT idHubSebelum into idHubSebelumnya FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2
    AND hubungancustomer.idHubungan = idHubungan AND hubungancustomer.isValid = 1;
    SELECT idStatus into idStatusSekarang FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2
    AND hubungancustomer.idHubungan = idHubungan AND hubungancustomer.isValid = 1;
    
    if idHubSebelumnya is not null
    THEN
		SELECT idStatus into idStatusSebelumnya FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2
		AND hubungancustomer.idHubungan = idHubSebelumnya AND hubungancustomer.isValid = 0;
		UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubunganCustomer.idStatus = idStatusSekarang;
		UPDATE hubungancustomer SET hubungancustomer.isValid = 1 WHERE hubunganCustomer.idStatus = idStatusSebelumnya;
    END IF;
   
    SELECT * FROM hubungancustomer;
END