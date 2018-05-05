CREATE DEFINER=`root`@`localhost` PROCEDURE `jumlahInvestasi`(
in daerah int
)
BEGIN
DECLARE jumlah int;
set jumlah = (select sum(nilaiInvestasi) from customer where idLOkasi = daerah);

select jumlah;
END