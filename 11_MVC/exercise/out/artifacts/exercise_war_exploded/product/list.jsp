<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/5/20
  Time: 10:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sản Phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<h1 style="text-align: center;color: blue">Sản Phẩm</h1>
<p>
    <a href="/products?luaChon=create">Thêm Sản Phẩm Mới</a>
</p>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Sản Phẩm</th>
        <th scope="col">Giá</th>
        <th scope="col">Mô Tả</th>
        <th scope="col">Hãng Sản Xuất</th>
        <th scope="col">Lựa Chọn</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items='${requestScope["timSanPham"]}' var="sanPhamChon">
        <tr>
            <td>${sanPhamChon.getId()}</td>
            <td><a href="/products?luaChon=view&id=${sanPhamChon.getId()}">${sanPhamChon.getTenSanPham()}</a></td>
            <td>${sanPhamChon.getGiaSanPham()}</td>
            <td>${sanPhamChon.getMoTa()}</td>
            <td>${sanPhamChon.getHangSanXuat()}</td>
            <td>
                <a href="/products?luaChon=edit&id=${sanPhamChon.getId()}" class="btn btn-primary">Edit</a>
                <a href="/products?luaChon=delete&id=${sanPhamChon.getId()}" class="btn btn-danger">Delete</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
