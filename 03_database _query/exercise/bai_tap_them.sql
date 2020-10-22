create database bai_tap_them;

use bai_tap_them;

create table Categories(
Id int auto_increment primary key,
Name nvarchar(50) not null unique,
Description nvarchar(500) null
);

create table Suppliers(
Id int auto_increment primary key,
Name nvarchar(100) not null,
Email varchar(50) not null unique,
PhoneNumber varchar(50) null,
Address nvarchar(500) not null
);

create table Customers(
Id varchar(50) primary key,
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
PhoneNumber varchar(50) null,
Address nvarchar(500) not null,
Email varchar(50) not null unique,
BirthDay date null
);

create table Employees(
Id varchar(50) primary key,
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
PhoneNumber varchar(50) null,
Address nvarchar(500) not null,
Email varchar(50) not null unique,
Birthday date null
);

create table Products(
Id int primary key auto_increment,
Name nvarchar(50) not null,
UmageUrl nvarchar(1000) not null,
Price int default 0,
Discount int default 0,
Stock int default 0,
CategoryId int not null,
SupplierId int not null,
foreign key (CategoryId) references Categories (Id),
foreign key (SupplierId) references Suppliers (Id),
constraint check1 check (Price >= 0),
constraint check2 check (Discount between 0 and 100)
);

create table Orders(
Id int auto_increment primary key,
CreatedDate datetime not null default current_timestamp,
ShippedDate datetime null,
Status_Orders varchar(50) not null default 'waiting',
Description blob null,
ShippingAddress nvarchar(500) not null,
ShippingCity nvarchar(50) not null,
PaymentType varchar(20) not null default 'cash',
CustomerId varchar(50) not null,
EmployeeId varchar(50) not null,
foreign key (CustomerId) references Customers (Id),
foreign key (EmployeeId) references Employees (Id),
constraint check3 check (Status_Orders = 'WAITING' or Status_Orders = 'COMPLETED' or Status_Orders = 'CANCELED'),
constraint check4 check (PaymentType = 'CREDIT CARD' or PaymentType = 'CASH'),
constraint check5 check (ShippedDate >= CreatedDate)
);

create table OrderDetails(
Id int auto_increment primary key,
OrderId int not null,
ProductId int not null,
Quantity int not null,
foreign key (OrderId) references Orders (Id),
foreign key (ProductId) references Products (Id)
);