create database bai_tap_2;

use bai_tap_2;

create table customers(
customerNumber int primary key,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) null,
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit float null,
salesRepEmployeeNumber int not null,
foreign key (salesRepEmployeeNumber) references employees (employeeNumber)
);

create table orders(
orderNumber int primary key,
orderDate date not null,
requiredDate date not null,
shippedDate date null,
status varchar(15) not null,
comments text null,
quantityOrdered int not null,
priceEach float not null,
customer_number int not null,
foreign key (customer_number) references customers(customerNumber)
);

create table OrderDetails(
order_Number int,
product_Code varchar(15),
foreign key (order_Number) references orders (orderNumber),
foreign key (product_Code) references products (productCode)
);

create table payments(
customer_Number int not null,
checkNumber varchar(50) not null,
paymentDate date not null,
amount float not null,
foreign key (customer_number) references customers(customerNumber)
);

create table products(
productCode varchar(15) primary key,
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice float not null,
MSRP float not null,
product_Line varchar(50) not null,
foreign key (product_Line) references productlines (productLine)
);

create table productlines(
productLine varchar(50) primary key,
textDescription text null,
image text null
);

create table employees(
employeeNumber int primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null,
reportTo int not null,
foreign key (reportTo) references employees (employeeNumber),
office_Code varchar(10) not null,
foreign key (office_Code) references offices(officeCode)
);

create table offices(
officeCode varchar(10) primary key,
city varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50) null,
state varchar(50) null,
country varchar(50) not null,
postalCode varchar(15) not null
);

drop database bai_tap_2;