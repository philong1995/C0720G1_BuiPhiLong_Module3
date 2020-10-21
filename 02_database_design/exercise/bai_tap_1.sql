create database bai_tap_1;

use bai_tap_1;

create table Customers(
customers_number int primary key,
fullname varchar(255),
address varchar(255),
email varchar(255),
phone int(11)
);

create table Accounts(
number_account int primary key,
account_type varchar(255),
date date,
balance float,
customers_number int,
foreign key (customers_number) references Customers (customers_number)
);

create table Transactions(
tran_number int primary key,
account_number int,
date datetime,
amounts float,
descriptions varchar(255),
foreign key (account_number) references Accounts (number_account)
);

drop database bai_tap_1;