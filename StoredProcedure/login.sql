CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(
	IN username varchar(45),
    IN passwords varchar(45)
)
BEGIN
	SELECT admin.id 
    FROM
		admin
	WHERE
		admin.username = username AND admin.pass = passwords;
END