CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataUmur`(
in daerah int
)
BEGIN
DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblParent;
drop table IF EXISTS tblChild;

CREATE TEMPORARY TABLE tblResult (
		nama varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
		insert into 
			tblChild 
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into 
			tblHasil 
        select 
			id 
		from 
			tblChild;
        
        
        delete from tblParent;
        
        insert into 
			tblParent
        select 
			id 
		from 
			tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;
   

	insert into 
		tblCustomer 
	select 
		idCustomer,
        TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) 
	from 
		customer cross join 
        tblHasil 
	where idLokasi=tblHasil.id;

	set rata2=(select avg(umur) from tblCustomer);
	insert into 
		tblResult 
	select 'rata_rata_umur',rata2;

select * from tblResult;

END