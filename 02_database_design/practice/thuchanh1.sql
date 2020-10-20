create database practice1;

use practice1;

create table contact(
contact_id int(11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthday date,
constraint contact_pk primary key(contact_id)
);

create table suppliers(
suppliers_id int(11) not null auto_increment,
suppliers_name varchar(50) not null,
account_rep varchar(30) not null default 'TBD',
constraint suppliers_pk primary key(suppliers_id)
);

-- xoá bảng :
drop table contact, suppliers;

-- thêm 1 cột abc_name sau cột last_name :
alter table contact
add abc_name varchar(40) not null
after last_name;

--  sửa dữ liêụ cột last_name từ chuỗi(30) thành chuỗi(50) và có null.
alter table contact
modify last_name varchar(50) null;

-- sửa cột abc_name thành cột middle_name :
alter table contact
change column abc_name middle_name varchar(20) not null;

-- đổi tên table contact thành people :
alter table contact
rename to people;