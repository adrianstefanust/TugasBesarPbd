CREATE DEFINER=`root`@`localhost` PROCEDURE `insertLokasi`(
in namaLokasi varchar(100),
in namaParent varchar(100)
)
BEGIN
declare idParent int;
set idParent = (select idLokasi from lokasi where lokasi.nama=namaParent);
INSERT INTO lokasi (idParent, nama) 
SELECT 
	* 
FROM 
	(select idParent,namaLokasi) as tmp
where NOT EXISTS
	(
	select nama from lokasi where lokasi.nama=namaLokasi
    );
END