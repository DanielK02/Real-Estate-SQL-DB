-- Daniel Krigel 1018

-- CityID, CityName
insert into Cities values
(1, 'Tel-Aviv'),
(2, 'Haifa'),
(3, 'Ramat-Gan'),
(4, 'Caesarea'),
(5, 'Kfar-Saba')
insert into Cities values
(6, 'Hadera')

-- NeighourhoodID, NeighbourhoodName, CityID
insert into Neighbourhoods values
(1, 'Centeral TLV', 1),
(2, 'North TLV', 1),
(3, 'SouthTLV', 1),
(4, 'Central Haifa', 2),
(5, 'Downtown Haifa', 2),
(6, 'Hof Haifa', 2),
(7, 'Central Ramat-Gan', 3),
(8, 'West Ramat-Gan', 3),
(9, 'Neigbourhood 12', 4),
(10, 'Neighbourhood 13', 4),
(11, 'Central Kfar-Saba', 5),
(12, 'East Kfar-Saba', 5),
(13, 'Central Hadera', 6),
(14, 'New Givat Olga', 6),
(15, 'Brandeis', 6)

-- HouseTypeID, HouseTypeName, Description
insert into HouseType values
(1, 'Apartment', 'Apartment in a building'),
(2, 'Penthouse', 'Luxury Apartment in a building on the top floor, usually with 2 floors'),
(3, 'Villa', 'A private home, premium lifestyle'),
(4, 'Villa with a pool', 'A private home, premium lifestyle, pool included'),
(5, 'Mansion', 'The most luxourious lifestyle, huge space, pool, garage for multiple cars, just choose what to do with all the space!')

-- CustomerID, FirstName, LastName, HouseOwnerY/N, GenderM/F, Birthdate, Phone, HouseID

insert into Customers values
(1, 'Kazuma', 'Satou', 'Y', 'M', '1992-06-07', 0782316548, null),
(2, 'Walter', 'White', 'Y', 'M', '1968-11-12',  0159871594, null), 
(3, 'Asuka', 'Langley', 'Y', 'F', '1993-08-20',  0728924205, null), 
(4, 'Spike', 'Spiegel', 'Y', 'M', '1983-05-30',  0584214248, null), 
(5, 'Faye', 'Valentine', 'Y', 'F', '1994-09-22',  0482316548, null), 
(6, 'Abigail', 'Jones', 'Y', 'F', '1989-01-02',  0386154548, null), 
(7, 'Chris', 'Benson', 'Y', 'M', '1979-03-26',  0421942618, null), 
(8, 'Peter', 'Griffin', 'Y', 'M', '1963-05-15',  09876154367, null), 
(9, 'Sakuta', 'Azugasagawa', 'N', 'M', '1995-04-19',  0654789943, null),
(10, 'Mai', 'Sakurajima', 'Y', 'F', '1994-03-12',  0794225512, null),
(11, 'Homer', 'Simpson', 'N', 'M', '1964-02-26',  0667716548, null),
(12, 'Randy', 'Marsh', 'Y', 'M', '1975-10-23',  0654554387, null), 
(13, 'Thomas', 'Shleby', 'Y', 'M', '1955-08-16',  05002365456, null), 
(14, 'Annie', 'Edison', 'Y', 'F', '1987-08-03',  0766243223, null), 
(15, 'Bruce', 'Wayne', 'Y', 'M', '1980-04-13',  0335816544, null),
(16, 'Ai', 'Haysaka', 'N', 'F', '1992-08-30', 0552892840, null),
(17, 'Revy', 'Cutlass', 'N', 'F', '1991-06-12', 0568792840, null)


-- HouseID, HouseAddress, RoomNumber,TimeBuilt,HouseSize(meters),
-- ZipCode,NeighID,ForSale Y/N, OwnerAskingPrice,CurrentOwner, HouseType
insert into Houses values
(1, 'Kono 23', 6, '1999-05-27' , 200, 35787, 5, 'Y', 600000, 1, 2),
(2, 'HaNassi 6',3, '1995-09-13', 250, 22687, 3,'N', null, 2, 1),
(3, 'HaHof 5', 7, '2008-11-30', 420, 16879, 6,  'Y', 1250000, 3, 3),
(4, 'Bebop 2', 4,  '2004-02-11', 225, 98745, 1,  'Y', 650000, null, 1),
(5, 'HaCigar 12', 5, '2000-01-04', 285, 69420, 2,  'Y', 750000, 5, 1),
(6, 'HaYahalom 1', 16, '1982-08-26', 1000, 65789, 3, 'Y', 5500000, 9, 5),
(7, 'Tokyo HaKtana 2', 12, '2012-06-06', 600, 11358, 4, 'Y', 2300000, 6, 4),
(8, 'Rambam 16', 5, '1999-10-23', 400, 10023, 1,  'Y', 823000, 8, 2),
(9, 'HaZikit 23', 6, '1990-01-15', 200, 46887, 2,  'Y', 900000, 10, 3),
(10, 'Drift 6', 4, '2007-06-04', 280, 55648, 2,  'Y', 775000, 12, 2),
(11, 'HaKoah 4', 3, '2010-11-25', 185, 36987, 4,  'Y', 520000, 13, 1),
(12, 'Tslil 17', 8, '2020-08-13', 515, 20015, 7,  'Y', 950000, 14, 3),
(13, 'Shalom 10', 6, '1993-02-09', 505, 58889, 15,  'N', null, 15, 3),
(14, 'Limon 24', 8, '2002-12-18', 750, 77122, 8,  'Y', 1400000, 7, 4),
(15, 'Avocado 30', 5, '2013-01-21', 500, 96874, 13,  'Y', 810000, 11, 2)

update Customers
set HouseID = 1
where CustomerID = 1

update Customers
set HouseID = 2
where CustomerID = 2

update Customers
set HouseID = 3
where CustomerID = 3

update Customers
set HouseID = 4
where CustomerID = 4

update Customers
set HouseID = 5
where CustomerID = 5

update Customers
set HouseID = 6
where CustomerID = 9

update Customers
set HouseID = 7
where CustomerID = 6

update Customers
set HouseID = 8
where CustomerID = 8

update Customers
set HouseID = 9
where CustomerID = 10

update Customers
set HouseID = 10
where CustomerID = 12

update Customers
set HouseID = 11
where CustomerID = 13

update Customers
set HouseID = 12
where CustomerID = 14

update Customers
set HouseID = 13
where CustomerID = 15

update Customers
set HouseID = 14
where CustomerID = 7

update Customers
set HouseID = 15
where CustomerID = 11



-- AgentID, FirstName, LastName, Address,CityID, GenderM/F,Birthdate,HireDate,Phone,HouseSpecialtyID
insert into RealEstateAgents values
(1, 'Daniel', 'Nitro', 'Amp Street 29',1,'M','1992-08-28','2013-04-03',0500012382,5),
(2, 'Eva', 'Zerotwo', 'End of the world street 1',2,'F','1987-03-18','2018-04-20',0546879879,2),
(3, 'Ryuko', 'Matoi', 'Academy 15',4,'F','1994-05-12','2014-08-08',0278632891,1),
(4, 'Bell', 'Cranel', 'Orario 7',6,'M','1993-02-15','2017-06-13',0354667382,3),
(5, 'Leonardo', 'Watch', 'Otherworld 3',5,'M','1991-03-03','2018-12-17',0598987382,2),
(6, 'Pack', 'Cat', 'Rez street 5',2,'M','1987-05-10','2015-02-25',0987878974,1),
(7, 'Takumi', 'Fujiwara', 'Drift street 6',3,'M','1990-06-20','2017-11-27',0100156878,2),
(8, 'Ash', 'Ketchum', 'Kanto 30',3,'M','1995-10-05','2018-04-06',0987897456,1),
(9, 'Anna', 'Schneider', 'Little America 12',1,'F','1992-05-19','2016-08-01',0984561561,3),
(10, 'Mikoto', 'Misaka', 'Railgun 2',6,'F','1994-11-11','2016-10-13',0555084978,4),
(11, 'Harley', 'Quinn', 'Gotham 5',2,'F','1989-04-10','2014-09-15',0536548999,1),
(12, 'Jack', 'White', 'Seven Street 8',4,'M','1982-07-16','2017-03-20',0544498789,4),
(13, 'Nate', 'Smith', 'Six Day War 12',6,'M','1978-02-06','2016-01-01',0599878978,3),
(14, 'Elon', 'Musk', 'Tesla 52',2,'M','1980-11-26','2018-07-05',0123564987,2),
(15, 'James', 'Bond', 'Secret Service 8',3,'M','1984-02-01','2018-11-15',0987897894,1)

-- BuyerID,SellerID,SaleID,SaleDate,AskingPrice,SalePrice,HouseID,AgentID
insert into Sales values
(1, 4, 00002,'2019-05-10', 555000, 580000, 1, 5),
(4, 8, 00001,'2019-04-03', 505000, 540000, 1, 5),
(2, 5, 00010,'2020-10-21', 500000, 510000, 2, 3),
(3, 6, 00009,'2020-08-16', 900000, 1000000, 3, 4),
(4, 2, 00005, '2019-07-28', 600000, 605000, 4, 14),
(11, 15, 00012,'2021-05-20', 575000, 600000, 13, 8),
(5, 12, 00004,'2019-06-30', 675000, 700000, 5, 11),
(6, 9, 00011,'2021-01-10', 1500000, 1750000, 7, 10),
(8, 1, 00003,'2019-06-04', 750000, 800000, 8, 2),
(9, 7, 00013,'2021-07-10', 4000000, 4500000, 6, 1),
(10, 3, 00008,'2019-12-27', 750000, 850000, 9, 3),
(12, 10, 00006,'2019-09-22', 700000, 710000, 10, 2),
(13, 16, 00015,'2022-03-11', 500000, 505000, 11, 11),
(14, 11, 00007,'2019-10-10', 800000, 850000, 12, 9),
(15, 13, 00014,'2022-01-05', 810000, 830000, 13, 13),
(7, 17, 00016,'2022-04-02', 750000, 850000, 14, 3)
