create database [RealEstateProject]
-- Daniel Krigel 1018
-- First create database on Master, then choose the database to create tables

Create table Cities (
CityID int primary key,
CityName char(100) unique not null
);
create table Neighbourhoods (
NeighbourhoodID int primary key,
NeighbourhoodName char(100) not null,
CityID int references Cities(CityID)
);

create table Customers (
CustomerID int primary key,
FirstName char(50) not null,
LastName char(50) not null,
HouseOwner char not null check (HouseOwner in ('Y','N')),
Gender char not null check (Gender in ('M','F')),
Birthdate date check(year(Birthdate) between 1900 and year(getdate())),
Phone decimal(10, 0)
);
create table Sales (
BuyerID int references Customers(CustomerID),
SellerID int references Customers(CustomerID),
SaleID int primary key,
SaleDate date check (year(SaleDate) between 2013 and year(getdate())),
AskingPrice decimal check (askingprice > 300000),
SalePrice decimal not null check (saleprice > 400000),
);
create table Houses(
HouseID int primary key,
HouseAddress char (50) not null,
Rooms int not null,
Built date not null,
HouseSize int not null,
ZipCode int not null,
NeighbourhoodID int references Neighbourhoods(NeighbourhoodID),
ForSale char not null check (forsale in ('Y', 'n')),
OwnerAskingPrice decimal,
CurrentOwner int references Customers(CustomerID),
);
create table HouseType (
HouseTypeID int primary key,
HouseTypeName char(50) not null unique,
Description char(255)
);
create table RealEstateAgents (
AgentID int primary key,
FirstName char(50) not null,
LastName char(50) not null,
Address char(100) not null,
City int references Cities(CityID),
Gender char not null check (Gender in ('M','F')),
Birthdate date check(year(Birthdate) between 1900 and year(getdate())),
Hiredate date check (year(Hiredate) between 2013 and year(getdate())),
Phone decimal(10, 0),
SpecialtyHouseType int references HouseType(HouseTypeID),
);

alter table Customers 
add HouseID int references Houses(HouseID)

alter table Sales 
add HouseID int references Houses(HouseID)

alter table Sales
add AgentID int references RealEstateAgents(AgentID)

alter table Houses 
add HouseTypeID int references HouseType(HouseTypeID)
