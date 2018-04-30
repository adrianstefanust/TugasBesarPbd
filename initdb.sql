DROP TABLE PerubahanCustomer;
DROP TABLE HubunganCustomer;
DROP TABLE Customer;
DROP TABLE Lokasi;
DROP TABLE Hubungan;
DROP TABLE Admin;

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
	nilaiInvestasi int
	);
	CREATE TABLE PerubahanCustomer(
	id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	idCustomer INT(6) UNSIGNED NOT NULL,
	namaTabel VARCHAR(100) NOT NULL,
	namaField VARCHAR(100) NOT NULL,
	valueSebelum VARCHAR(100) NOT NULL,
	idSebelum INT(6),
	tanggalBerubah datetime,
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
	
INSERT INTO Lokasi(idLokasi,idParent,nama) values (1,null,'Indonesia');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (2,1,'Jawa');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (3,2,'Jawa Barat');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (4,2,'Jawa Timur');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (5,2,'Jawa Tengah');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (6,3,'Bandung');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (7,3,'Tasikmalaya');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (8,3,'Purwakarta');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (9,3,'Cirebon');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (10,5,'Purwokerto');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (11,5,'Tegal');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (12,5,'Banyumas');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (13,5,'Semarang');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (14,5,'Solo');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (15,5,'Pekalongan');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (16,4,'Surabaya');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (17,4,'Madiun');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (18,4,'Madura');
INSERT INTO Lokasi(idLokasi,idParent,nama) values (19,4,'Mojokerto');


insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (1, 'Evania Diggin', 10, '1990-03-30', '86 Sachs Point', 14234216);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (2, 'Lexine Searston', 7, '1997-02-14', '59224 Jenifer Circle', 18275499);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (3, 'Janina Coombs', 6, '1973-04-30', '2 Hooker Avenue', 40859247);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (4, 'Lotta Yarnall', 7, '1980-12-23', '3 Doe Crossing Avenue', 13434991);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (5, 'Darin Sillis', 14, '1981-02-26', '8049 Eagle Crest Plaza', 14684698);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (6, 'Rasla BouldstridCustomerge', 15, '1982-08-03', '68 Mosinee Junction', 8056164);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (7, 'Cilka GowdridCustomerge', 11, '1956-12-11', '39965 Drewry Avenue', 49514607);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (8, 'Rudie Easun', 15, '1982-08-17', '070 6th Circle', 48092072);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (9, 'April Bothwell', 7, '1989-07-10', '360 Shoshone Plaza', 33081105);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (10, 'Cristian Cattlemull', 9, '1992-05-01', '562 Ohio Plaza', 12173357);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (11, 'Tabatha Caplin', 6, '1988-05-27', '4 Artisan Plaza', 33363083);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (12, 'Vinni Slocom', 16, '1977-01-07', '8335 Dovetail Drive', 6193702);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (13, 'Junina Devers', 7, '1966-08-10', '109 Canary Parkway', 40038339);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (14, 'Dee Skase', 9, '1961-01-08', '4553 Hanson Crossing', 25449958);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (15, 'Tybi Hearnden', 10, '1961-05-17', '661 Blaine Road', 22835070);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (16, 'Andie Fretson', 9, '1960-07-16', '7856 Cardinal Point', 27634181);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (17, 'Levy Bagnell', 6, '1956-04-08', '75 Hanson Crossing', 15084076);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (18, 'Niccolo Taphouse', 7, '1964-04-20', '21 Kenwood Parkway', 4226268);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (19, 'Hendrika Kahn', 12, '1997-11-02', '01062 Express Circle', 1299712);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (20, 'Allyn Cassedy', 12, '1992-06-25', '7919 Havey Park', 48004958);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (21, 'Meredeth Schermick', 17, '1959-02-21', '08385 Dapin Drive', 5186036);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (22, 'Lulu Fawcett', 19, '1989-12-25', '152 Hintze Crossing', 13846420);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (23, 'Nancy Lyste', 16, '1996-02-12', '1 Nobel Park', 30622945);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (24, 'Willi Cowdrey', 12, '1966-01-15', '4600 NorthridCustomerge Hill', 7379407);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (25, 'Cate Gerb', 16, '1977-04-08', '085 Canary Drive', 18140401);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (26, 'Art Toner', 6, '1994-01-06', '6584 Chinook Parkway', 4952421);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (27, 'Crosby Cettell', 9, '1984-06-29', '0 Eggendart Center', 32204072);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (28, 'Jaime Dumbreck', 7, '1988-01-12', '9 Blue Bill Park Crossing', 46925964);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (29, 'Chicky Hawke', 18, '1998-03-24', '08 Morrow Point', 27493974);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (30, 'Andee Bainbrigge', 15, '2000-08-16', '65238 VidCustomeron Parkway', 28024630);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (31, 'Vanny Flamank', 8, '1978-11-04', '4 BaysidCustomere Park', 39252047);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (32, 'Pyotr Huc', 15, '1985-01-13', '47729 Manufacturers Trail', 46890926);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (33, 'Hobie Kleimt', 7, '1968-04-13', '0 Nevada Terrace', 26791041);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (34, 'Trevar Brixey', 8, '1992-10-18', '657 Glendale Circle', 40208481);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (35, 'Rees Antrack', 8, '1956-11-23', '9 Melody Terrace', 23354677);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (36, 'Kienan McFadzean', 14, '1966-12-18', '50607 Marquette Crossing', 21312120);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (37, 'Theodosia Pillinger', 18, '1991-09-11', '31554 Barby Plaza', 9862532);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (38, 'Walt Eddies', 9, '1971-12-12', '2 Moose Road', 37220074);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (39, 'Rocky Casassa', 15, '1977-04-24', '7 WayridCustomerge Trail', 35526340);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (40, 'Cherrita Keneford', 9, '1999-08-08', '62 Graedel Center', 32670241);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (41, 'Kameko Westcar', 13, '1974-08-25', '793 Valley Edge Alley', 15754759);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (42, 'Bernardo Leyden', 17, '1982-08-02', '8974 Holmberg Road', 21620557);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (43, 'Bili Spackman', 6, '1982-11-08', '6 Ramsey Trail', 20440110);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (44, 'Llewellyn Alfonsetti', 12, '1972-05-12', '461 Transport Pass', 45814624);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (45, 'Hewet Minifie', 15, '1999-12-12', '397 Esch Plaza', 46969155);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (46, 'Delilah Rosenauer', 13, '1980-08-18', '68136 Ronald Regan Center', 46647238);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (47, 'Janos Pinn', 17, '1964-10-28', '4682 American Drive', 5390554);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (48, 'Cosetta Pinnigar', 18, '1987-12-02', '07 Bellgrove Street', 48853958);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (49, 'Bili Ranaghan', 17, '1962-01-27', '36 Nelson Avenue', 48852419);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (50, 'Nev Wolpert', 11, '1985-06-15', '45 Emmet Way', 18630754);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (51, 'Merilee Treuge', 10, '1980-07-15', '65 Grayhawk Street', 25786920);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (52, 'Nichole Levett', 10, '1994-03-02', '37554 Spenser Place', 42636237);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (53, 'Errick Treadway', 19, '1971-03-08', '840 Lindbergh Street', 5297599);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (54, 'Olimpia Fumagalli', 17, '1976-10-29', '756 Almo Way', 21910731);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (55, 'Carlos Wondraschek', 17, '1955-11-24', '68 Garrison Center', 34227323);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (56, 'Gwendolen Charville', 9, '1958-06-04', '169 Menomonie Point', 15533980);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (57, 'Suzy Beavis', 8, '1982-04-19', '5770 Dakota Way', 10347826);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (58, 'Baxy Wallhead', 17, '1987-10-27', '21476 Eagan Center', 15093779);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (59, 'Katti Bourthouloume', 12, '1974-06-13', '9 Mayer Court', 48963827);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (60, 'Daniele Axtens', 15, '1985-10-11', '252 Maywood Place', 16905143);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (61, 'Wilie Chupin', 16, '1959-09-12', '93 Havey Avenue', 44242690);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (62, 'Burgess St. Hill', 16, '1995-08-30', '92300 Jenifer Lane', 35973236);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (63, 'Kev Izkovicz', 17, '1961-08-27', '9 SouthridCustomerge Place', 32850553);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (64, 'Olly Edgcumbe', 14, '1989-02-26', '82810 Commercial Lane', 20689607);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (65, 'Roman Ramstead', 6, '1969-03-22', '85221 Loftsgordon Court', 10373838);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (66, 'Baxter Mazey', 16, '1959-06-27', '7926 Drewry Parkway', 843259);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (67, 'Ignatius Fear', 11, '1993-12-25', '25 Daystar Trail', 10090421);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (68, 'Charleen Darragon', 11, '1975-06-28', '463 Huxley Junction', 14693828);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (69, 'Gawen Brimming', 19, '1972-02-22', '7 Rowland Way', 1170027);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (70, 'Carter Cecely', 16, '1963-10-27', '84261 Oneill Place', 42047713);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (71, 'Frederic Winning', 18, '1988-12-05', '5 Shopko Parkway', 6368340);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (72, 'Bobinette Riatt', 18, '1981-09-29', '05779 Green RidCustomerge Center', 41840970);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (73, 'Rey Wickersham', 6, '1980-03-17', '60039 Pearson Hill', 46660780);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (74, 'Rip Tweedie', 17, '1979-06-12', '598 Ryan Avenue', 42943874);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (75, 'Glenden Bowick', 10, '1962-06-18', '4 Mifflin Parkway', 38113462);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (76, 'Trudie Mullins', 12, '1999-01-31', '40 Gale Way', 26753215);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (77, 'Simonne Hansed', 13, '1999-05-01', '6936 School Crossing', 31119414);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (78, 'Kendre Ravillas', 16, '1987-02-08', '6050 Fulton Road', 16007157);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (79, 'Sissie Brinded', 11, '1993-07-16', '9955 Farwell Alley', 9407044);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (80, 'Barny Reaman', 7, '1996-08-30', '79793 Bartelt Center', 11012161);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (81, 'SidCustomernee McConnel', 7, '1994-03-09', '12006 Paget Alley', 23544182);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (82, 'Ameline Aizikovitch', 12, '1963-05-05', '71341 SutteridCustomerge Terrace', 46015532);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (83, 'Nathaniel Seamans', 9, '1998-01-08', '04 Scott Terrace', 27369680);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (84, 'Carley Shilvock', 6, '1957-10-30', '15 Del Mar Drive', 23359368);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (85, 'Otha Scarth', 15, '1975-03-04', '0304 Londonderry Road', 27967146);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (86, 'Waylin Rouby', 14, '1998-05-31', '3 Blackbird Pass', 21989619);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (87, 'Tillie Mattke', 15, '1992-06-11', '89 Mccormick Center', 28699347);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (88, 'Elle Stiven', 11, '1959-01-02', '534 Briar Crest Pass', 23423941);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (89, 'Fanchon Lashmore', 11, '1968-06-16', '73 NorthridCustomerge Pass', 6462990);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (90, 'Moyra Hartin', 17, '2000-11-08', '36 La Follette Drive', 43157224);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (91, 'Saloma Hubbucks', 19, '1979-03-26', '3539 Annamark Terrace', 48302125);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (92, 'Dareen Bande', 6, '1964-04-29', '868 Mockingbird Hill', 16511635);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (93, 'Marney Myhan', 15, '1996-08-29', '538 Fallview Lane', 47959247);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (94, 'Goraud Foyle', 12, '1964-01-26', '9 Derek Crossing', 46410320);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (95, 'Cally Hazeley', 11, '1959-05-10', '83 RiversidCustomere Terrace', 12680986);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (96, 'Thalia Tankard', 12, '1968-09-25', '54 Lakeland Street', 32179401);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (97, 'Irvin Lorain', 17, '1955-08-26', '5 Linden Lane', 23721811);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (98, 'Gretel Scone', 19, '1979-04-29', '819 Welch Avenue', 34997709);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (99, 'Kiel Kitchen', 6, '1990-12-07', '4 Macpherson Hill', 28133876);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (100, 'Manfred Hedley', 14, '1973-06-14', '28693 Glacier Hill Park', 13298480);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (101, 'Hobey Anglish', 16, '1964-02-06', '18 Dayton Terrace', 24244129);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (102, 'Garret Benford', 13, '1958-06-01', '5 Lien Drive', 32184399);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (103, 'Suzette Colleck', 11, '1965-11-13', '60233 Jana Hill', 32328874);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (104, 'Sabina Layhe', 18, '1957-04-21', '21 Northland Way', 21632828);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (105, 'Rodina Hadfield', 10, '1986-10-14', '30416 Paget Junction', 34559795);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (106, 'Meggie Skein', 15, '1990-04-17', '4 Judy Lane', 45515128);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (107, 'Carole Delmonti', 19, '1959-03-05', '1 Center Hill', 27980130);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (108, 'Horton BridCustomerden', 8, '1955-07-20', '2 SheridCustomeran Terrace', 6003937);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (109, 'Sim Raith', 15, '1957-06-15', '371 Birchwood Crossing', 15883100);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (110, 'Vonnie Plaskitt', 10, '1982-10-24', '64 Burning Wood Crossing', 31379010);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (111, 'Marcy Stodd', 12, '1973-05-25', '141 Delladonna Terrace', 1655437);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (112, 'Mikkel Boddis', 14, '1982-09-10', '61244 Kim Center', 21758634);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (113, 'Margi Petrovic', 11, '1967-04-01', '1479 Hintze Road', 39867363);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (114, 'Leland Czajkowski', 9, '1965-10-31', '66 Reindahl Lane', 12455599);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (115, 'Penrod RidCustomeres', 13, '1994-04-23', '4848 Memorial Road', 16705809);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (116, 'Rossie Pickle', 7, '1963-02-19', '649 Springs Court', 49079714);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (117, 'Almire Vasyukov', 8, '1991-10-09', '359 Burning Wood Point', 36355099);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (118, 'Kirstin Lawrenson', 19, '1999-10-18', '826 Ruskin Pass', 6527887);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (119, 'Emelia Gabbetis', 15, '1959-05-14', '0059 Dottie Plaza', 43284698);
insert into Customer (idCustomer, nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) values (120, 'Donia Kaes', 8, '1964-06-18', '8 Dahle Park', 37571026);

INSERT INTO admin (id,username,pass,nama) values (1,'admin1','admin1','adrian');
INSERT INTO admin (id,username,pass,nama) values (2,'admin2','admin2','hengky stephen');

INSERT INTO hubungan (idHubungan,nama) values (1,'suami');
INSERT INTO hubungan (idHubungan,nama) values (2,'istri');
INSERT INTO hubungan (idHubungan,nama) values (3,'anak');
INSERT INTO hubungan (idHubungan,nama) values (4,'adik');
INSERT INTO hubungan (idHubungan,nama) values (5,'kakak');
INSERT INTO hubungan (idHubungan,nama) values (6,'paman');
INSERT INTO hubungan (idHubungan,nama) values (7,'bibi');
INSERT INTO hubungan (idHubungan,nama) values (8,'ayah');
INSERT INTO hubungan (idHubungan,nama) values (9,'ibu');
INSERT INTO hubungan (idHubungan,nama) values (10,'sepupu');
INSERT INTO hubungan (idHubungan,nama) values (11,'keponakan');
INSERT INTO hubungan (idHubungan,nama) values (12,'kakek');
INSERT INTO hubungan (idHubungan,nama) values (13,'nenek');
