CREATE DEFINER=`root`@`localhost` PROCEDURE `CustomerInvestasiTerbesar`()
BEGIN


DECLARE v_finished INTEGER DEFAULT 0;
declare curId int;
declare jumlahInvestasi int;
declare valuesekarang1 int;
declare myCursor cursor for
select 
	idCustomer,valueSebelum,valueSekarang 
from 
	perubahanCustomer 
where 
	namaField = 'nilaiInvestasi' ;-- and tanggalBerubah > (SELECT DATE_SUB(NOW(), INTERVAL 1 MONTH));

DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
drop table IF EXISTS tblCustomer;
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        nilaiInvestasi int,
        valuesekarang int);
open myCursor;
get_id:LOOP
	
IF v_finished = 1 
	THEN LEAVE get_id;
	END IF;
    if	(select exists (select tblCustomer.id from customer cross join tblCustomer where tblCustomer.id = curId))
    then
    
    update 
		tblCustomer
    set 
		tblCustomer.valuesekarang =valuesekarang1
    where 
		tblCustomer.id = curId;
    else
    insert into tblCustomer
    select 
		curId,jumlahInvestasi,valuesekarang1;
	end if;
 FETCH myCursor INTO curId,jumlahInvestasi,valuesekarang1;
    END LOOP get_id;
    CLOSE myCursor;
        

 
 select 
	Customer.nama, (tblCustomer.valuesekarang - tblCustomer.nilaiInvestasi  ) as jumlah
FROM
	tblCustomer
JOIN
	Customer 
ON
	Customer.idCustomer = tblCustomer.id
order BY
 jumlah desc limit 3;

END