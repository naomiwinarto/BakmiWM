CREATE DATABASE BakmiWM

USE BakmiWM

CREATE TABLE Position(
	PositionID CHAR(5) PRIMARY KEY CHECK(PositionID LIKE 'SP[0-9][0-9][0-9]'),
	positionName VARCHAR(32) NOT NULL
)

CREATE TABLE Staff(
	StaffID CHAR(5) PRIMARY KEY CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),
	StaffName VARCHAR(255) NOT NULL,
	StaffGender VARCHAR(10) NOT NULL CHECK(StaffGender IN ('Male', 'Female')),	
	StaffDOB DATE NOT NULL CHECK(year(StaffDOB) < 2005),
	StaffPhone VARCHAR(24) NOT NULL,
	StaffEmail VARCHAR(255) NOT NULL,
	StaffAddress VARCHAR(255) NOT NULL CHECK(LEN(StaffAddress) > 15),
	StaffSalary INT NOT NULL,
	PositionID CHAR(5) FOREIGN KEY (PositionID) REFERENCES Position(PositionID) ON UPDATE CASCADE ON DELETE NO ACTION NOT NULL,
	CONSTRAINT CheckPhoneStaff CHECK(ISNUMERIC(StaffPhone) = 1)
)

CREATE TABLE Customer(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(255) NOT NULL,
	CustomerGender VARCHAR(10) NOT NULL CHECK(CustomerGender IN ('Male', 'Female')),
	CustomerPhone VARCHAR(24) NOT NULL,
	CustomerEmail VARCHAR(255) NOT NULL,
	CustomerAddress VARCHAR(255) NOT NULL,
	CONSTRAINT CheckPhoneCustomer CHECK(ISNUMERIC(CustomerPhone) = 1)
)

CREATE TABLE SouvenirTransaction(
	SouvenirTranID CHAR(5) PRIMARY KEY CHECK(SouvenirTranID LIKE 'ST[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY (StaffID) REFERENCES staff(StaffID) NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) NOT NULL,
	SouvenirTranDate DATE NOT NULL	
)

CREATE TABLE Souvenir(
	SouvenirID CHAR(5) PRIMARY KEY CHECK(SouvenirID LIKE 'SO[0-9][0-9][0-9]'),
	SouvenirName VARCHAR(255) NOT NULL,
	BuyPrice INT NOT NULL,
	SellPrice INT NOT NULL
)

CREATE TABLE SouvenirTranDetail(
	SouvenirTranID CHAR(5) FOREIGN KEY (SouvenirTranID) REFERENCES SouvenirTransaction(SouvenirTranID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	SouvenirID CHAR(5) FOREIGN KEY (SouvenirID) REFERENCES souvenir(SouvenirID) NOT NULL,
	Qty INT NOT NULL,
	PRIMARY KEY (SouvenirTranID, SouvenirID)
)

CREATE TABLE MenuCategory(
	MenuCatID CHAR(5) PRIMARY KEY CHECK(MenuCatID LIKE 'MC[0-9][0-9][0-9]'),
	MenuCatName VARCHAR(255) NOT NULL
)

CREATE TABLE Menu(
	MenuID CHAR(5) PRIMARY KEY CHECK(MenuID LIKE 'ME[0-9][0-9][0-9]'),
	MenuName VARCHAR(255) NOT NULL,
	MenuPrice INT NOT NULL CHECK(MenuPrice BETWEEN 1000 AND 10000000),
	MenuCatID CHAR(5) FOREIGN KEY (MenuCatID) REFERENCES MenuCategory(MenuCatID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)

CREATE TABLE MenuTransaction(
	MenuTranID CHAR(5) PRIMARY KEY CHECK(MenuTranID LIKE 'MT[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY (StaffID) REFERENCES staff(StaffID) NOT NULL,
	CustomerID CHAR(5) FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) NOT NULL,
	MenuTranDate DATE NOT NULL,
)

CREATE TABLE MenuTranDetail(
	MenuTranID CHAR(5) FOREIGN KEY (MenuTranID) REFERENCES MenuTransaction(MenuTranID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	MenuID CHAR(5) FOREIGN KEY (MenuID) REFERENCES Menu(MenuID) NOT NULL,
	Qty INT NOT NULL,
	PRIMARY KEY (MenuTranID, MenuID)
)