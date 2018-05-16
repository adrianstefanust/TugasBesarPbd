CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataAdministrator`()
BEGIN
Select
	admin.id,
	admin.nama,
    admin.username
FROM
	admin
ORDER BY
	admin.nama asc;
END