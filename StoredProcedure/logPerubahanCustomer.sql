CREATE DEFINER=`root`@`localhost` PROCEDURE `LogPerubahanCustomer`()
BEGIN
DECLARE v_finished INTEGER DEFAULT 0;
declare namaLokasiSebelum varchar(100);
declare namaLokasiSekarang varchar(100);
declare id int;
declare idCustomer int;
declare namaField varchar(100);
declare valueSebelum varchar(100);
declare idSebelum int;
declare valueSekarang varchar(100);
declare tanggalBerubah datetime;
declare idAdmin int;
declare isValid int;
declare myCursor cursor for
    select 
		*
    from 
		perubahanCustomer;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
drop table IF EXISTS tblResult;
CREATE TEMPORARY TABLE tblResult (
		id int, 
        idCustomer int,
        namaField varchar(100),
        valueSebelum varchar(100),
        idSebelum int,
        valueSekarang varchar(100),
        tanggalBerubah datetime,
        idAdmin int,
        isValid int
        );
    open myCursor;
    get_id:LOOP
    IF v_finished = 1 
		THEN LEAVE get_id;
	END IF;
    FETCH myCursor INTO id,idCustomer,namaField,valueSebelum,idSebelum,valueSekarang,tanggalBerubah,idAdmin,isValid;
    if namaField = 'idLokasi'
    then
    set namaLokasiSebelum = (select lokasi.nama from lokasi where idLokasi = CAST(valueSebelum AS UNSIGNED));
    set namaLokasiSekarang = (select lokasi.nama from lokasi where idLokasi = CAST(valueSekarang AS UNSIGNED));
    insert into tblResult
    select 
		id,
        idCustomer,
        namaField,
        namaLokasiSebelum,
        idSebelum,
        namaLokasiSekarang,
        tanggalBerubah,
        idAdmin,
        isValid;
    else 
    insert into tblResult
    select 
		id,
        idCustomer,
        namaField,
        valueSebelum,
        idSebelum,
        valueSekarang,
        tanggalBerubah,
        idAdmin,
        isValid;
    end if;
    END LOOP get_id;
    CLOSE myCursor;
    select * from tblResult;
END