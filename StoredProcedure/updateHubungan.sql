DROP PROCEDURE IF EXISTS updateHubungan;
DROP Table tableSementara;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateHubungan`(
	IN  idHubunganBaru int,
    IN  idCustomer1 int,
    IN idCustomer2 int,
    IN tanggal date
)
BEGIN
	DECLARE idStatusSementara int;
	CREATE TEMPORARY TABLE tableSementara (idHubungan int); 
	INSERT INTO tableSementara 
		SELECT idStatus FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2 AND hubungancustomer.isValid =1;
      
	Select idHubungan into idStatusSementara FROM tableSementara;
	
    UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubungancustomer.idStatus = idStatusSementara;
    
    INSERT INTO hubungancustomer (idCustomer1, idCustomer2, idHubungan, tanggal, isValid) VALUES(idCustomer1, idCustomer2, idHubunganBaru, tanggal, 1);
    SELECT * from hubungancustomer;
END;

