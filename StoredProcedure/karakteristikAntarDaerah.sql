CREATE DEFINER=`root`@`localhost` PROCEDURE `karakteristikAntarDaerah`(
jenis int
)
BEGIN
	declare kriteriaKarakteristik int;
	declare iterator int;
	set iterator =0;
    drop table IF EXISTS tblHasil;
	drop table IF EXISTS tblParent;
    drop table IF EXISTS tblChild;
    drop table IF EXISTS tblPulau;
	drop table IF EXISTS tblProvinsi;
    drop table IF EXISTS karProv;
    
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
	CREATE TEMPORARY TABLE tblPulau	
(
	id int
);
	CREATE TEMPORARY TABLE tblProvinsi
(
	id int
);

insert into tblParent select idLokasi from lokasi where idParent is null;

    
	while (iterator < 3)
	do
		insert into tblChild 
        select idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        if iterator = 0
		then
        insert into tblPulau 
        select id from tblChild;
        end if;

        if iterator = 1
		then
        insert into tblProvinsi 
        select id from tblChild;
        end if;

        if iterator = 2
		then
        insert into tblHasil 
        select id from tblChild;
        end if;
        
        delete from tblParent;
        
        insert into tblParent
        select id from tblChild;
        
        delete from tblChild;
        
        set iterator = iterator + 1;
        
    end while;
    CREATE TEMPORARY TABLE karProv(
		idLokasi int,
        idParent int,
        namaLokasi varchar(100),
        jumlah float,
        average float,
        count int
    );
	INSERT INTO karProv
    SELECT 
		Lokasi.idLokasi,
        Lokasi.idParent,
        Lokasi.nama, 
        SUM(nilaiInvestasi) as 'Jumlah Investasi', 
        AVG(nilaiInvestasi) as 'Rata-rata Investasi',
        COUNT(nilaiInvestasi) as'Jumlah Customer'
	FROM 	
		Customer
	JOIN 
		(SELECT 
			idLokasi,idParent,nama
		FROM 
			Lokasi
		JOIN 
			(SELECT  
				id 
			FROM 
				tblProvinsi) as tempProv
		ON 
			tempProv.id = Lokasi.idParent) as tempLokasi
	ON 
		customer.idLokasi = tempLokasi.idLokasi
	JOIN 
		Lokasi
	ON 
		Lokasi.idLokasi = tempLokasi.idParent
	GROUP BY 
		tempLokasi.idParent;
	if jenis = 1 then
		SELECT * FROM karProv;
	ELSEIF jenis = 0 THEN
		SELECT
			Lokasi.idParent,
            Lokasi.nama,
            SUM(jumlah)as 'Jumlah Investasi' ,
            AVG(average)as 'Rata-rata investasi',
            SUM(count)as 'Jumlah Penduduk'
		FROM
			karProv
		JOIN
			Lokasi
		ON 
			karProv.idParent = Lokasi.idLokasi
		GROUP BY
			karProv.idParent;
	ELSEIF jenis = 2 THEN
        SELECT 
		Lokasi.idLokasi,
        Lokasi.idParent,
        Lokasi.nama, 
        SUM(nilaiInvestasi) as 'Jumlah Investasi', 
        AVG(nilaiInvestasi) as 'Rata-rata Investasi',
        COUNT(nilaiInvestasi) as'Jumlah Customer'
	FROM 	
		Customer
	JOIN 
		tblHasil
	ON 
		customer.idLokasi = tblHasil.id
	JOIN 
		Lokasi
	ON 
		Lokasi.idLokasi = Customer.idLokasi
	GROUP BY 
		Lokasi.idLokasi;
    END IF;
END