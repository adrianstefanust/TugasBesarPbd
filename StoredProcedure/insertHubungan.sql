CREATE PROCEDURE `insertHubungan` 
(
in nama varchar(100)
)
BEGIN
INSERT INTO hubungan (nama) 
SELECT * FROM (select nama) as tmp
where NOT EXISTS
	(
	select nama from hubungan where hubungan.nama=nama 
    );
END
