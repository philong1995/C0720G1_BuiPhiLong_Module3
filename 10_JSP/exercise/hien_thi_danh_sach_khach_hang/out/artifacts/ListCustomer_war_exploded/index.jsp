<%@ page import="java.util.List" %>
<%@ page import="khachHang.KhachHang" %>
<%@ page import="danhSach.DanhSach" %><%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/4/20
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c"	%>
<html>
  <head>
    <title>Danh Sách Khách Hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
  <body>
  <%
    List<KhachHang> danhSach = DanhSach.tatCaKhachHang();
    request.setAttribute("danhSachKhachHang",danhSach);
  %>
  <h2 style="text-align: center">Danh sách khách hàng</h2>
  <table class="table">
    <thead class="thead-light">
    <tr>
      <th scope="col">Tên</th>
      <th scope="col">Ngày sinh</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="KhachHang" items="${danhSachKhachHang}">
    <tr>
      <td scope="row"><c:out value="${KhachHang.ten}"/></td>
      <td><c:out value="${KhachHang.ngaySinh}"/></td>
      <td><c:out value="${KhachHang.diaChi}"/></td>
      <td>@<c:out value="${KhachHang.anhDaiDien}"/></td>
    </tr>
    </c:forEach>
    </tbody>
  </table>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
