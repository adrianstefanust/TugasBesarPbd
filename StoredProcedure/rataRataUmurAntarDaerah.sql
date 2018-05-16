CREATE DEFINER=`root`@`localhost` PROCEDURE `RataRataUmurAntarDaerah`(
in daerah1 int,
in daerah2 int
)
BEGIN
DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer1;
drop table IF EXISTS tblCustomer2;
drop table IF EXISTS tbldaerah1;
drop table IF EXISTS tbldaerah2;
drop table IF EXISTS tblParent1;
drop table IF EXISTS tblParent2;
drop table IF EXISTS tblChild1;
drop table IF EXISTS tblChild2;

CREATE TEMPORARY TABLE tblResult (
		namaDaerah varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer1 (
		id varchar(100), 
        umur int);
CREATE TEMPORARY TABLE tblCustomer2 (
		id varchar(100), 
        umur int);

   CREATE TEMPORARY TABLE tbldaerah1 
(
	id int
);
CREATE TEMPORARY TABLE tbldaerah2
(
	id int
);
	CREATE TEMPORARY TABLE tblParent1
(
	id int
);
CREATE TEMPORARY TABLE tblParent2
(
	id int
);
	CREATE TEMPORARY TABLE tblChild1
(
	id int
);
CREATE TEMPORARY TABLE tblChild2
(
	id int
);
insert into tblParent1 select idLokasi from lokasi where idLokasi = daerah1 ;
insert into tblParent2 select idLokasi from lokasi where idLokasi = daerah2 ;
insert into tbldaerah1 select idLokasi from lokasi where idLokasi = daerah1 ;
insert into tbldaerah2 select idLokasi from lokasi where idLokasi = daerah2 ;

	while ( p != 0)
	do
		insert into 
			tblChild1
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent1
		on tblParent1.id = lokasi.idParent;
        
        insert into 
			tblChild2
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent2
		on tblParent2.id = lokasi.idParent;
        
       
        insert into 
			tbldaerah1 
        select 
			id 
		from 
			tblChild1;
            
		insert into 
			tbldaerah2
        select 
			id 
		from 
			tblChild2;
        
        
        delete from tblParent1;
		delete from tblParent2;
        
        insert into 
			tblParent1
        select 
			id 
		from 
			tblChild1;
            
		insert into 
			tblParent2
        select 
			id 
		from 
			tblChild2;
        
        delete from tblChild1;
        delete from tblChild2;
        
        set p=  (select count(id) from tblParent1);
    end while;

insert into 
		tblCustomer1
	select 
		idCustomer,
        TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) 
	from 
		customer cross join 
        tbldaerah1 
	where idLokasi=tbldaerah1.id;

	set rata2=(select avg(umur) from tblCustomer1);
	insert into 
		tblResult 
	select (select lokasi.nama from lokasi where lokasi.idLokasi = daerah1),rata2;
    
insert into 
		tblCustomer2
	select 
		idCustomer,
        TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) 
	from 
		customer cross join 
        tbldaerah2 
	where idLokasi=tbldaerah2.id;

	set rata2=(select avg(umur) from tblCustomer2);
	insert into 
		tblResult 
	select (select lokasi.nama from lokasi where lokasi.idLokasi = daerah2),rata2;

select * from tblResult;






select * from tblResult;


END