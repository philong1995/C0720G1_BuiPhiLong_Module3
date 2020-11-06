<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/6/20
  Time: 6:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi Tiết Sản Phẩm </title>
</head>
<body>
<h1>Chi Tiết Sản Phẩm</h1>
<p>
    <a href="/products">Trở Về</a>
</p>
<table>
    <tr>
        <td>Tên Sản Phẩm: </td>
        <td>${requestScope["xemSanPham"].getTenSanPham()}</td>
    </tr>
    <tr>
        <td>Giá Sản Phẩm: </td>
        <td>${requestScope["xemSanPham"].getGiaSanPham()}</td>
    </tr>
    <tr>
        <td>Mô Tả: </td>
        <td>${requestScope["xemSanPham"].getMoTa()}</td>
    </tr>
    <tr>
        <td>Hãng Sản Xuất: </td>
        <td>${requestScope["xemSanPham"].getHangSanXuat()}</td>
    </tr>
</table>
</body>
</html>
