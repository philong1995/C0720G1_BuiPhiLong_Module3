create database bai_tap_lam_them;

use bai_tap_lam_them;

create table Products(
Id int,
Name nvarchar(50),
ImageUrl nvarchar(1000),
Prince int,
Discount int,
Stock int,
CategoryID int,
SupplierID int,
Description nvarchar(100)
);

use bai_tap_lam_them;
create table Orders(
Id int,
CreatedDate datetime,
ShippedDate datetime,
Status varchar(50),
Description nvarchar(100),
ShippingAddress nvarchar(500),
ShippingCity nvarchar(50),
PaymentType varchar(20),
CustomerID varchar(50),
EmployeeID varchar(50)
);