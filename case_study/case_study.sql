-- cau 1 :

create database case_study;

use case_study;

create table ViTri(
IdViTri int primary key,
TenViTri varchar(45) not null
);

create table TrinhDo(
IdTrinhDo int primary key,
TrinhDo varchar(45) not null
);

create table BoPhan(
IdBoPhan int primary key,
TenBoPhan varchar(45) not null
);

create table NhanVien(
IdNhanVien int primary key,
HoTen int not null,
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
IDKhachHang int primary key,
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
IDLoaiKhach int primary key,
TenLoaiKhach varchar(45) not null
);

create table HopDong(
IDHopDong int primary key,
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
IDHopDongChiTiet int primary key,
IDHopDong int not null,
IDDichVuDiKem int not null,
IDSoLuong int not null,
foreign key (IDDichVuDiKem) references DichVuDiKem (IDDichVuDiKem),
foreign key (IDHopDong) references HopDong (IDHopDong)
);

create table DichVuDiKem(
IDDichVuDiKem int primary key,
TenDichVuDiKem varchar(45) not null,
Gia int not null,
DonVi int not null,
TrangThaiKhaDung varchar(45) not null
);

create table DichVu(
IDDichVu int primary key,
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
IDKieuThue int primary key,
TenKieuThue varchar(45) not null,
Gia int not null
);

create table LoaiDichVu(
IDLoaiDichVu int primary key,
TenLoaiDichVu varchar(45) not null
);

-- cau 2: 

select * from NhanVien 
where ( HoTen like HoTen = '%H%' or HoTen = '%T%' or HoTen = '%K%') and length(HoTen) <= 15;

-- cau 3:

select * from KhachHang
where (year(now()) - year(NgaySinh) <= 50 or year(now()) - year(NgaySinh) >= 18) and (DiaChi = 'Đà Nẵng' or DiaChi = 'Quảng Trị');

-- cau 4:

select KhachHang.HoTen as 'Tên Khách Hàng', count(HopDong.IDKhachHang) as 'Số Lần Thuê' from KhachHang
join HopDong on KhachHang.IDKhachHang = HopDong.IDKhachHang
join LoaiKhach on KhachHang.IDLoaiKhach = LoaiKhach.IDLoaiKhach
group by HopDong.IDKhachHang 
order by HopDong.IDKhachHang;
