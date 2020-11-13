<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/12/20
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Manager</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<center>
    <h1><a href="/customer?action=listCus">LIST CUSTOMER</a></h1>
    <h2>
        <a href="/customer?action=create">Add new customer</a>
    </h2>
</center>
<form method="post" action="/customer" class="form-inline" >
    <a class="navbar-brand"> </a>
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="name">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="find" name="action">Search</button>
</form>
<div>
    <table border="1" class="table table-striped" style="color: darkblue">
        <tr>
            <th>ID</th>
            <th>Type ID</th>
            <th>Name Customer</th>
            <th>Birthday</th>
            <th>Gender</th>
            <th>ID Card</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach var="customer" items="${listCus}">
            <tr>
                <td><c:out value="${customer.id}"/></td>
                <td><c:out value="${customer.typeID}"/></td>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.birthday}"/></td>
                <td><c:out value="${customer.gender}"/></td>
                <td><c:out value="${customer.idCard}"/></td>
                <td><c:out value="${customer.phone}"/></td>
                <td><c:out value="${customer.email}"/></td>
                <td><c:out value="${customer.address}"/></td>
                <td>
                    <a href="/customer?action=edit&id=${customer.id}" class="btn btn-primary">Edit</a>
                    <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#modelDelete" onclick="onDelete(${customer.id})">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div class="modal fade" id="modelDelete" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Do you want delete this customer?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="/customer?action=delete" method="get">
                    <input type="hidden" name="id" id="deleteid">
                    <input type="hidden" name="action" value="delete">
                    <div class="modal-body">
                        <p>Yes is delete, No if you don't want.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">No</button>
                        <button type="submit" class="btn btn-danger">Yes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<center>
    <a href="/customer">HOME</a>
</center>
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
<script>
    function onDelete(id) {
        document.getElementById("deleteid").value = id;
    }
</script>
</html>
