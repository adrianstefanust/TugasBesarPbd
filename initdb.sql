
DROP TABLE PerubahanCustomer;
DROP TABLE HubunganCustomer;
DROP TABLE Customer;
DROP TABLE Lokasi;
DROP TABLE Hubungan;
DROP TABLE Admin;


CREATE TABLE Admin (
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(30) NOT NULL,
	pass VARCHAR(30) NOT NULL,
	nama VARCHAR(50) NOT NULL
);
CREATE TABLE Lokasi (
	idLokasi INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	idParent INT(6) UNSIGNED,
	nama VARCHAR(100) NOT NULL
);
CREATE TABLE Hubungan(
	idHubungan INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nama VARCHAR(100) NOT NULL
);
CREATE TABLE Customer(
	idCustomer INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nama VARCHAR(100) NOT NULL,
    idLokasi INT(6) UNSIGNED,
    tanggalLahir date,
    alamat VARCHAR(100),
    nilaiInvestasi VARCHAR(50)
);
CREATE TABLE PerubahanCustomer(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	idCustomer INT(6) UNSIGNED NOT NULL,
    namaTabel VARCHAR(100) NOT NULL,
    namaField VARCHAR(100) NOT NULL,
    valueSebelum VARCHAR(100) NOT NULL,
    idSebelum INT(6),
    tanggalBerubah date,
    idAdmin INT(6) UNSIGNED NOT NULL
);
CREATE TABLE HubunganCustomer(
	idStatus INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	idCustomer1 INT(6) UNSIGNED NOT NULL,
    idCustomer2 INT(6) UNSIGNED NOT NULL,
    idHubungan INT(6) UNSIGNED NOT NULL,
    tanggal date,
    isValid INT(1)
);

ALTER TABLE HubunganCustomer ADD FOREIGN KEY (`idCustomer1`) REFERENCES Customer(`idCustomer`);
ALTER TABLE HubunganCustomer ADD FOREIGN KEY (`idCustomer2`) REFERENCES Customer(`idCustomer`);
ALTER TABLE HubunganCustomer ADD FOREIGN KEY (`idHubungan`) REFERENCES Hubungan(`idHubungan`);
ALTER TABLE PerubahanCustomer ADD FOREIGN KEY (`idCustomer`) REFERENCES Customer(`idCustomer`);
ALTER TABLE PerubahanCustomer ADD FOREIGN KEY (`idAdmin`) REFERENCES Admin(`id`);
ALTER TABLE Customer ADD FOREIGN KEY (`idLokasi`) REFERENCES Lokasi(`idLokasi`);
ALTER TABLE Lokasi ADD FOREIGN KEY (`idParent`) REFERENCES Lokasi(`idLokasi`);