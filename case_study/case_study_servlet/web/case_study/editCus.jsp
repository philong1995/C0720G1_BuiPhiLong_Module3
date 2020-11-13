<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/12/20
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<center>
    <h1 style="color: blue">INFOMATION CUSTOMER</h1>
    <h2>
        <h2><a href="customer?action=listCus">BACK</a></h2>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5" class="table table-striped">
                <h2>
                    Edit Infomation Customer
                </h2>
            <c:if test="${customer != null}">
                <input type="hidden" name="id" value="<c:out value='${customer.id}' />"/>
            </c:if>
            <tr>
                <th>Type ID Customer :</th>
                <td>
                    <select class="custom-select custom-select-sm" name="typeID">
                        <option selected >Open this select menu</option>
                        <option value="1">Diamond</option>
                        <option value="2">Platinum</option>
                        <option value="3">Gold</option>
                        <option value="4">Silver</option>
                        <option value="5">Member</option>
                    </select>
<%--                    <input type="text" name="typeID" size="45"--%>
<%--                           value="<c:out value='${customer.typeID}' />"--%>
<%--                    />--%>
                </td>
            </tr>
            <tr>
                <th>Name Customer :</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${customer.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Birthday Customer :</th>
                <td>
                    <input type="date" name="birthday" size="45"
                           value="<c:out value='${customer.birthday}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Gender Customer:</th>
                <td>
<%--                    <input type="text" name="gender" size="15"--%>
<%--                           value="<c:out value='${customer.gender}' />"--%>
<%--                    />--%>
                    <select class="custom-select custom-select-sm" name="gender" >
                        <option selected>Open this select menu</option>
                        <option value="0">Male</option>
                        <option value="1">Female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>ID card Customer :</th>
                <td>
                    <input type="text" name="idCard" size="45"
                           value="<c:out value='${customer.idCard}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Phone Number :</th>
                <td>
                    <input type="text" name="phone" size="15"
                           value="<c:out value='${customer.phone}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Email Customer :</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="<c:out value='${customer.email}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Address Customer :</th>
                <td>
                    <input type="text" name="address" size="45"
                           value="<c:out value='${customer.address}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
</body>
</html>
