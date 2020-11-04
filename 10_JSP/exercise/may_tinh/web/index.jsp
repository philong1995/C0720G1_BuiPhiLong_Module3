<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/4/20
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="/calculate">
  <fieldset>
    <legend>Calculator</legend>
    <table>
      <tr>
        <td>Số thứ nhất: </td>
        <td><input name="soThuNhat" type="text"/></td>
      </tr>
      <tr>
        <td>Phép Tính: </td>
        <td>
          <select name="phepTinh">
            <option value="+">Cộng</option>
            <option value="-">Trừ</option>
            <option value="*">Nhân</option>
            <option value="/">Chia</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>Số thứ hai: </td>
        <td><input name="soThuHai" type="text"/></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Tính"/></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>