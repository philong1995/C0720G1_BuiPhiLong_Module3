drop database bai_tap_1;

create database bai_tap_1;

use bai_tap_1;

create table bang(
id int,
ten varchar(15) not null,
tuoi int not null,
khoahoc varchar(50) not null,
sotien float not null
);

-- add khoá chính sau khi tạo table mà chưa có khoá chính:
alter table bang add primary key (id);

-- thêm thông tin vào bảng nếu bảng không có khoá chính: 
insert into bang value (1,'Hoang',21,'CNTT',400000); 
insert into bang value (2,'Viet',19,'DTVT',320000);
insert into bang value (3,'Thanh',18,'KTDN',400000);
insert into bang value (4,'Nhan',19,'CK',450000);
insert into bang value (5,'Huong',20,'TCNH',500000);
insert into bang value (5,'Huong',20,'TCNH',200000);

-- hiện thị tất cả các dòng có tên là Huong :
select * from bang where ten = 'Huong';

-- lấy ra tổng số tiền của Huong :
select sum(sotien) from bang where ten ='Huong';

-- lấy ra tên danh sách của tất cả học viên, không trùng lặp( dùng lệnh distinct):
select distinct ten from bang;

-- sắp xếp lại: 
select * from bang order by id asc;