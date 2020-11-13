create database case_study;
use case_study;

create table position (
position_id int primary key auto_increment,
position_name varchar(45) not null
);

insert into position values 
(null,'Lễ tân'),
(null,'Phục vụ'),
(null,'Chuyên viên'),
(null,'Giám sát'),
(null,'Quản lí'),
(null,'Giám đốc');

create table education_degree (
education_degree_id int primary key auto_increment,
education_degree_name varchar(45) not null
);

insert into education_degree values 
(null,'Trung cấp'),
(null,'Cao đẳng'),
(null,'Đại học'),
(null,'Sau đại học');

create table division (
division_id int primary key auto_increment,
division_name varchar(45) not null
);

insert into division values
	(null,'Sale - Marketing'),
    (null,'Hành chính'),
    (null,'Phục vụ'),
    (null,'Quản lí');

create table users (
username varchar(255) primary key,
password varchar(255)
);

create table role (
role_id int primary key auto_increment,
role_name varchar(255) not null
);

create table user_role (
role_id int not null,
username varchar(255) not null,
foreign key (role_id) references role (role_id),
foreign key (username) references users (username)
);

create table employee (
employee_id int primary key auto_increment,
employee_name varchar(45) not null,
employee_birthday date not null,
employee_id_card varchar(45) not null,
employee_salary double not null,
employee_phone varchar(45) not null,
employee_email varchar(45) not null,
employee_address varchar(45) not null,
position_id int not null,
education_degree_id int not null,
division_id int not null,
username varchar(255),
foreign key (position_id) references position (position_id),
foreign key (education_degree_id) references education_degree (education_degree_id),
foreign key (division_id) references division (division_id),
foreign key (username) references users (username)
);

create table attach_service (
attach_service_id int primary key auto_increment,
attach_service_name varchar(45) not null,
attach_service_cost double not null,
attach_service_unit int not null,
attach_service_status varchar(45) not null
);

create table customer_type (
customer_type_id int primary key auto_increment,
customer_type_name varchar(45) not null
);

insert into customer_type values
	(null,'Diamond'),
    (null,'Platinum'),
    (null,'Gold'),
    (null,'Silver'),
    (null,'Member');

create table customer (
customer_id int primary key auto_increment,
customer_type_id int not null,
customer_name varchar(45) not null,
customer_birthday date not null,
customer_gender bit(1),
customer_id_card varchar(45) not null,
customer_phone varchar(45) not null,
customer_email varchar(45) not null,
customer_address varchar(45) not null,
foreign key (customer_type_id) references customer_type (customer_type_id)
);

insert into customer values
	(null,1,'Phi Long','1995-04-01',0,'197347541','0375120295','philong@gmail.com','Đà Nẵng');

create table service_type (
service_type_id int primary key auto_increment,
service_type_name varchar(45) not null
);

create table rent_type (
rent_type_id int primary key auto_increment,
rent_type_name varchar(45) not null,
rent_type_cost double not null
);

create table service (
service_id int primary key auto_increment,
service_name varchar(45) not null,
service_area int not null,
service_cost double not null,
service_max_people int not null,
rent_type_id int not null,
service_type_id int not null,
standard_room varchar(45) not null,
descriptione_other_convenience varchar(45) not null,
pool_areana double not null,
number_a_floor int not null,
foreign key (rent_type_id) references rent_type (rent_type_id),
foreign key (service_type_id) references service_type (service_type_id)
);

create table contract (
contract_id int primary key auto_increment,
contract_start_date date not null,
contract_end_date date not null,
contract_deposit double not null,
contract_total_money double not null,
employee_id int not null,
customer_id int not null,
service_id int not null,
foreign key (employee_id) references employee (employee_id),
foreign key (customer_id) references customer (customer_id),
foreign key (service_id) references service (service_id)
);

create table contract_detail (
contract_detail_id int primary key auto_increment,
contract_id int not null,
attach_service_id int not null,
quantity int not null,
foreign key (attach_service_id) references attach_service (attach_service_id),
foreign key (contract_id) references contract (contract_id)
);


