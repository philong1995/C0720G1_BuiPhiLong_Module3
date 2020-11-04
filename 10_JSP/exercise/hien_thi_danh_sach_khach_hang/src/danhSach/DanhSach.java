package danhSach;

import khachHang.KhachHang;

import java.util.ArrayList;
import java.util.List;

public class DanhSach {
    static List<KhachHang> danhSachKhachHang = new ArrayList<>();

    static {
        danhSachKhachHang.add(new KhachHang("Nguyễn Văn A", "01/04/1995", "Quảng Bình", "Avatar1"));
        danhSachKhachHang.add(new KhachHang("Nguyễn Văn B", "02/05/1996", "Quảng Trị", "Avatar2"));
        danhSachKhachHang.add(new KhachHang("Nguyễn Văn C", "03/06/1997", "Thừa Thiên - Huế", "Avatar3"));
        danhSachKhachHang.add(new KhachHang("Nguyễn Văn D", "04/07/1998", "Đà Nẵng", "Avatar4"));
    }

    public static List<KhachHang> tatCaKhachHang(){
        return danhSachKhachHang;
    }
}
