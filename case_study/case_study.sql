-- cau 1 :

create database case_study;

use case_study;

create table ViTri(
IdViTri int primary key auto_increment,
TenViTri varchar(45) not null
);

create table TrinhDo(
IdTrinhDo int primary key auto_increment,
TrinhDo varchar(45) not null
);

create table BoPhan(
IdBoPhan int primary key auto_increment,
TenBoPhan varchar(45) not null
);

create table NhanVien(
IdNhanVien int primary key auto_increment,
HoTen varchar(45) not null,
IdViTri int not null,
IdTrinhDo int not null,
IdBoPhan int not null,
NgaySinh date not null,
SoCMND varchar(45) not null,
Luong varchar(45) not null,
SDT varchar(45) not null,
Email varchar(45) not null,
DiaChi varchar(45) not null,
foreign key (IdViTri) references ViTri (IdViTri),
foreign key (IdBoPhan) references BoPhan (IdBoPhan),
foreign key (IdTrinhDo) references TrinhDo (IdTrinhDo)
);

create table KhachHang(
IDKhachHang int primary key auto_increment,
IDLoaiKhach int not null,
HoTen varchar(45) not null,
NgaySinh date not null,
SoCMND varchar(45) not null,
SDT varchar(45) not null,
Email varchar(45) not null,
DiaChi varchar(45) not null,
foreign key (IDLoaiKhach) references LoaiKhach (IDLoaiKhach)
);

create table LoaiKhach(
IDLoaiKhach int primary key auto_increment,
TenLoaiKhach varchar(45) not null
);

create table HopDong(
IDHopDong int primary key auto_increment,
IDNhanVien int not null,
IDKhachHang int not null,
IDDichVu int not null,
NgayLamHopDong date,
NgayKetThuc date,
TienDatCoc int,
TongTien int,
foreign key (IDNhanVien) references NhanVien (IdNhanVien),
foreign key (IDKhachHang) references KhachHang (IDKhachHang),
foreign key (IDDichVu) references DichVu (IDDichVu)
);

create table HopDongChiTiet(
IDHopDongChiTiet int primary key auto_increment,
IDHopDong int not null,
IDDichVuDiKem int not null,
IDSoLuong int not null,
foreign key (IDDichVuDiKem) references DichVuDiKem (IDDichVuDiKem),
foreign key (IDHopDong) references HopDong (IDHopDong)
);

create table DichVuDiKem(
IDDichVuDiKem int primary key auto_increment,
TenDichVuDiKem varchar(45) not null,
Gia int not null,
DonVi int not null,
TrangThaiKhaDung varchar(45) not null
);

create table DichVu(
IDDichVu int primary key auto_increment,
TenDichVu varchar(45) not null,
DienTich int not null,
SoTang int not null,
SoNguoiToiDa varchar(45) not null,
ChiPhiThue varchar(45) not null,
IDKieuThue int not null,
IDLoaiDichVu int not null,
TrangThai varchar(45) not null,
foreign key (IDLoaiDichVu) references LoaiDichVu (IDLoaiDichVu),
foreign key (IDKieuThue) references KieuThue (IDKieuThue)
);

create table KieuThue(
IDKieuThue int primary key auto_increment,
TenKieuThue varchar(45) not null,
Gia int not null
);

create table LoaiDichVu(
IDLoaiDichVu int primary key auto_increment,
TenLoaiDichVu varchar(45) not null
);

insert into BoPhan values (null ,'Sale – Marketing');
insert into BoPhan values (null ,'Hành Chính');
insert into BoPhan values (null ,'Phục vụ');
insert into BoPhan values (null ,'Quản lý');

insert into NhanVien values(null,'Nguyễn A',1,3,3,'1998-01-10',1234567890,6000000,0987654321,'nguyena@gmail.com','Huế');
insert into NhanVien values(null,'Nguyễn B',2,3,3,'2000-02-11',1234567891,3500000,0987654322,'nguyenb@gmail.com','Quảng Trị');
insert into NhanVien values(null,'Nguyễn C',3,3,2,'1995-03-12',1234567892,8000000,0987654323,'nguyenc@gmail.com','Đà nẵng');
insert into NhanVien values(null,'Nguyễn D',4,3,2,'1994-04-13',1234567893,10000000,0987654324,'nguyend@gmail.com','Quảng Bình');
insert into NhanVien values(null,'Nguyễn E',5,3,4,'1992-05-14',1234567894,15000000,0987654325,'nguyene@gmail.com','Quảng Trị');
insert into NhanVien values(null,'Nguyễn F',6,4,4,'1990-06-15',1234567895,30000000,0987654326,'nguyenf@gmail.com','Dà Nẵng');

insert into TrinhDo values (null ,'Trung cấp');
insert into TrinhDo values (null ,'Cao đẳng');
insert into TrinhDo values (null ,'Đại học');
insert into TrinhDo values (null ,'Sau đại học');

insert into ViTri values (null ,'Lễ tân');
insert into ViTri values (null ,'Phục vụ');
insert into ViTri values (null ,'Chuyên viên');
insert into ViTri values (null ,'Giám sát ');
insert into ViTri values (null ,'Quản lý ');
insert into ViTri values (null ,'Giám đốc');

insert into LoaiKhach values (null, 'Diamond');
insert into LoaiKhach values (null, 'Platinium');
insert into LoaiKhach values (null, 'Gold');
insert into LoaiKhach values (null, 'Silver');
insert into LoaiKhach values (null, 'Member');

insert into LoaiDichVu values (null,'Villa');
insert into LoaiDichVu values (null,'House');
insert into LoaiDichVu values (null,'Room');

insert into KieuThue values(null,'Giờ',100000);
insert into KieuThue values(null,'Ngày',1000000);
insert into KieuThue values(null,'Tháng',20000000);
insert into KieuThue values(null,'Năm',200000000);

insert into DichVu values(null,'Villa A',200,4,10,2000000,2,1,'Còn');
insert into DichVu values(null,'Villa B',200,4,10,2000000,3,1,'Đã thuê');
insert into DichVu values(null,'House A',100,2,4,500000,2,2,'Còn');
insert into DichVu values(null,'House B',100,2,4,500000,3,2,'Đã thuê');
insert into DichVu values(null,'Room A',30,1,2,100000,2,3,'Còn');
insert into DichVu values(null,'Room B',30,1,2,100000,1,3,'Đã thuê');

insert into DichVuDiKem values (null ,'Massage',500000,1,'Có phí');
insert into DichVuDiKem values (null ,'Karaoke',100000,1,'Có phí');
insert into DichVuDiKem values (null ,'Thức ăn',50000,1,'Miễn phí');
insert into DichVuDiKem values (null ,'Nước uống',10000,1,'Miễn phí');
insert into DichVuDiKem values (null ,'Thuê xe tham quan',200000,1,'Có phí');

insert into KhachHang values(null,1,'Bùi Phi Long','1995-04-01',197347541,0375120295,'long@gmail.com','Quảng Trị');
insert into KhachHang values(null,2,'Nguyễn Thị Minh Thư','1998-10-16',197347542,0352978743,'thu@gmail.com','Huế');
insert into KhachHang values(null,3,'Trần ABC','1993-01-01',1234567890,0123456789,'tranabc@gmail.com','Đà Nẵng');

insert into HopDongChitiet values(null,1,1,1);
insert into HopDongChitiet values(null,2,2,2);
insert into HopDongChitiet values(null,3,3,3);

insert into HopDong values(null,1,1,1,'2020-10-20','2020-10-25',1000000, 10000000);
insert into HopDong values(null,1,2,3,'2020-10-21','2020-10-26',500000, 2500000);
insert into HopDong values(null,1,3,5,'2020-10-22','2020-10-27',50000, 500000);

-- cau 2: 

select * from NhanVien 
where ( HoTen like '%B%' or HoTen like '%T%' or HoTen like '%K%') and length(HoTen) <= 45;

-- cau 3:

select * from KhachHang
where (year(now()) - year(NgaySinh) <= 50 and year(now()) - year(NgaySinh) >= 18) and (DiaChi = 'Đà Nẵng' or DiaChi = 'Quảng Trị');

-- cau 4:

select KhachHang.HoTen as 'Tên Khách Hàng', count(HopDong.IDKhachHang) as 'Số Lần Thuê' from KhachHang
join HopDong on KhachHang.IDKhachHang = HopDong.IDKhachHang
join LoaiKhach on KhachHang.IDLoaiKhach = LoaiKhach.IDLoaiKhach
where LoaiKhach.TenLoaiKhach = 'Diamond' or LoaiKhach.TenLoaiKhach = 'Platinum'
group by HopDong.IDKhachHang
order by HopDong.IDKhachHang;

-- cau 5:



-- cau 6: 

select DichVu.IDDichVu, DichVu.TenDichVu, DichVu.DienTich, DichVu.ChiPhiThue, LoaiDichVu.TenLoaiDichVu 
from DichVu
left join LoaiDichVu on DichVu.IDLoaiDichVu = LoaiDichVu.IDLoaiDichVu
left join HopDong on DichVu.IDDichVu = HopDong.IDDichVu
where HopDong.IDHopDong <=> null
group by DichVu.IDDichVu;

-- cau 7: 


-- cau 8:

select KhachHang.HoTen from KhachHang
union
select KhachHang.HoTen from KhachHang;

select distinct KhachHang.HoTen from KhachHang;

select KhachHang.HoTen from KhachHang
group by KhachHang.HoTen;

-- cau 9:

-- cau 10: 

-- cau 11:




