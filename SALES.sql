CREATE DATABASE SALES;
USE SALES;

CREATE TABLE Departments (
Id INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(25) NOT NULL,
PRIMARY KEY(Id)
);

INSERT INTO Departments
VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Tech')
;

CREATE TABLE Employees (
Id INT NOT NULL AUTO_INCREMENT,
FName VARCHAR(35) NOT NULL,
LName VARCHAR(35) NOT NULL,
PhoneNumber VARCHAR(11),
ManagerId INT,
DepartmentId INT NOT NULL,
Salary INT NOT NULL,
HireDate DATETIME NOT NULL,
PRIMARY KEY(Id),
FOREIGN KEY (ManagerId) REFERENCES Employees(Id),
FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);

INSERT INTO Employees
VALUES
(1, 'James', 'Smith', 1234567890, NULL, 1, 1000, '2002-01-01'),
(2, 'John', 'Johnson', 2468101214, '1', 1, 400, '2005-03-23'),
(3, 'Michael', 'Williams', 1357911131, '1', 2, 600, '2009-05-12'),
(4, 'Johnathon', 'Smith', 1212121212, '2', 1, 500, '2016-07-24')
;

CREATE TABLE Customers (
Id INT NOT NULL AUTO_INCREMENT,
FName VARCHAR(35) NOT NULL,
LName VARCHAR(35) NOT NULL,
Email varchar(100) NOT NULL,
PhoneNumber VARCHAR(11),
PreferredContact VARCHAR(5) NOT NULL,
PRIMARY KEY(Id)
);

INSERT INTO Customers
VALUES
(1, 'William', 'Jones', 'william.jones@example.com', '3347927472', 'PHONE'),
(2, 'David', 'Miller', 'dmiller@example.net', '2137921892', 'EMAIL'),
(3, 'Richard', 'Davis', 'richard0123@example.com', NULL, 'EMAIL')
;

CREATE TABLE Cars (
Id INT NOT NULL AUTO_INCREMENT,
CustomerId INT NOT NULL,
EmployeeId INT NOT NULL,
Model varchar(50) NOT NULL,
Status varchar(25) NOT NULL,
TotalCost INT NOT NULL,
PRIMARY KEY(Id),
FOREIGN KEY (CustomerId) REFERENCES Customers(Id),
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id)
);
INSERT INTO Cars
VALUES
('1', '1', '2', 'Ford F-150', 'READY', '230'),
('2', '1', '2', 'Ford F-150', 'READY', '200'),
('3', '2', '1', 'Ford Mustang', 'WAITING', '100'),
('4', '3', '3', 'Toyota Prius', 'WORKING', '1254')
;