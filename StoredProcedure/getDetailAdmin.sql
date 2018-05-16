CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailAdmin`(
	IN idAdminInput int
)
BEGIN
	Select admin.id, admin.username, admin.pass, admin.nama
    FROM
		admin
	WHERE
		admin.id = idAdminInput;
END