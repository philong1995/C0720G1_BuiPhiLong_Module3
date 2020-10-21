create database bai_tap_1;

use bai_tap_1;

create table categories(
id int primary key auto_increment,
name varchar(50) not null unique,
descriptions varchar(500)
);

create table students(
id int primary key auto_increment,
name varchar(50) not null unique,
birthDay date not null,
studentCode char(10) not null,
email varchar(50) not null,
adress varchar(255) not null,
numberPhone char(10) not null
);

create table books(
id int primary key auto_increment,
name varchar(255) not null,
publishingCompany varchar(255),
publishingYear date not null,
categoryId int not null,
foreign key (categoryId) references categories (id)
);

create table borrowOrder(
id int primary key auto_increment,
dateBorrowed date not null,
payDay date not null,
studentId int not null ,
foreign key(studentId) references students(id)
);

create table borrowOrderDetail(
bookId int not null,
borrowOrderId int not null,
foreign key (bookId) references books (id),
foreign key (borrowOrderId) references borrowOrder (id)
);