CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataInvestasi`(
 in daerah int
 )
BEGIN
DECLARE jumlah int;
set jumlah = (select avg(nilaiInvestasi) from customer where idLokasi = daerah);
END