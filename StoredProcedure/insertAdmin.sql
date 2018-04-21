CREATE DEFINER=`root`@`localhost` PROCEDURE `insertAdmin`(
in username varchar(100),
in pass varchar(100),
in nama varchar(100)
)
BEGIN
INSERT INTO admin (username,pass, nama) 
SELECT * FROM (select username,pass,nama) as tmp
where NOT EXISTS
	(
	select username from admin where admin.username=username 
    );

END