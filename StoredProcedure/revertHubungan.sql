DROP PROCEDURE IF EXISTS revertHubungan;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `revertHubungan`(
    IN idCustomer1 int,
    IN idCustomer2 int
)
BEGIN
	DECLARE v_finished INTEGER DEFAULT 0;
	declare idStatusSebelumnya int;
    
    declare myCursor cursor for
    SELECT hubungancustomer.idStatus FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2 AND hubungancustomer.isValid = 0 ORDER BY hubungancustomer.idStatus asc;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
    
    open myCursor;
    
    get_id:LOOP
    
    IF v_finished = 1 
		THEN LEAVE get_id;
	END IF;
    FETCH myCursor INTO idStatusSebelumnya;
    END LOOP get_id;
    CLOSE myCursor;
    
    UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubungancustomer.isValid = 1;
    UPDATE hubungancustomer SET hubungancustomer.isValid = 1 WHERE hubungancustomer.idStatus = idStatusSebelumnya;
END;