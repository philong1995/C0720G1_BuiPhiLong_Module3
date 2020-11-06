<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/6/20
  Time: 7:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Sản Phẩm</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Thêm Sản Phẩm Mới</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Trở Về</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông Tin Sản Phẩm</legend>
        <table>
            <tr>
                <td>Tên Sản Phẩm: </td>
                <td><input type="text" name="tenSanPham" id="tenSanPham"></td>
            </tr>
            <tr>
                <td>Giá Sản Phẩm: </td>
                <td><input type="text" name="giaSanPham" id="giaSanPham"></td>
            </tr>
            <tr>
                <td>Mô Tả: </td>
                <td><input type="text" name="moTa" id="moTa"></td>
            </tr>
            <tr>
                <td>Hãng Sản Xuất: </td>
                <td><input type="text" name="hangSanXuat" id="hangSanXuat"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tạo Sản Phẩm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
