CREATE DEFINER=`root`@`localhost` PROCEDURE `editDataAdmin`(
	IN idAdmin int,
    IN username varchar(45),
    IN pass varchar(45),
    IN nama varchar(45)
)
BEGIN
	update admin set admin.username = username, admin.pass = pass, admin.nama = nama
    WHERE
    admin.id = idAdmin;
END