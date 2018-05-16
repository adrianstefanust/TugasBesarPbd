CREATE DEFINER=`root`@`localhost` PROCEDURE `updateHubungan`(
	IN idHubunganLama int,
	IN  idHubunganBaru int,
    IN  idCustomer1 int,
    IN idCustomer2 int
)
BEGIN
	DECLARE idStatusSementara int;
	CREATE TEMPORARY TABLE tableSementara (idHubungan int); 
	INSERT INTO tableSementara 
		SELECT idStatus FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2 AND hubungancustomer.isValid =1 AND hubungancustomer.idHubungan = idHubunganLama;
      
	Select idHubungan into idStatusSementara FROM tableSementara;
	
    UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubungancustomer.idStatus = idStatusSementara;
    
    INSERT INTO hubungancustomer (idCustomer1, idCustomer2, idHubungan, isValid, idHubSebelum) VALUES(idCustomer1, idCustomer2, idHubunganBaru, 1, idHubunganLama);
    SELECT * from hubungancustomer;
END