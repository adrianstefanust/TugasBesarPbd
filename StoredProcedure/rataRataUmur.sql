CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataUmur`(
in daerah int
)
BEGIN
DECLARE rata2 int;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblCustomer;
CREATE TEMPORARY TABLE tblHasil (
		nama varchar(100), 
        nilai int);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
insert into tblCustomer select idCustomer,TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) from customer where idLokasi=daerah;

set rata2=(select avg(umur) from tblCustomer);
insert into tblHasil select 'rata_rata_umur',rata2;

select * from tblHasil;
END