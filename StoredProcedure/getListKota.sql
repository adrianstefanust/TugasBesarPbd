CREATE DEFINER=`root`@`localhost` PROCEDURE `getlistkota`(
)
BEGIN
 declare kriteriaKarakteristik int;
 declare iterator int;
 set iterator =0;
    drop table IF EXISTS tblHasil;
 drop table IF EXISTS tblParent;
    drop table IF EXISTS tblChild;
    
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


insert into tblParent select idLokasi from lokasi where idParent is null;

    
 while (iterator < 3)
 do
  insert into tblChild 
        select idLokasi 
        from 
   lokasi join 
   tblParent
  on tblParent.id = lokasi.idParent;
        
        if iterator = 2
  then
        insert into tblHasil 
        select id from tblChild;
        end if;
        
        delete from tblParent;
        
        insert into tblParent
        select id from tblChild;
        
        delete from tblChild;
        
        set iterator = iterator + 1;
        
    end while;
    
 select 
  id,nama 
 from 
  tblhasil 
 join 
  lokasi 
 on 
  lokasi.idlokasi = tblhasil.id;
END