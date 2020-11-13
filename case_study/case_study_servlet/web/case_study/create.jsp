<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/12/20
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>ADD NEW CUSTOMER</h1>
</center>
<div align="center">
    <form method="post" action="/customer" class="needs-validation" novalidate>
        <div style="width: 300px">
            <div>
                <label for="validationCustom01">Type ID : </label>
                <select class="form-control custom-select custom-select-sm" name="typeID" id="validationCustom01" required>
                    <option selected></option>
                    <option value="1">Diamond</option>
                    <option value="2">Platinum</option>
                    <option value="3">Gold</option>
                    <option value="4">Silver</option>
                    <option value="5">Member</option>
                </select>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please choose a Type ID!!!
                </div>
            </div>
            <div>
                <label for="validationCustom02">New Name Customer: </label>
                <input type="text" class="form-control" id="validationCustom02" name="name" placeholder="Name customer" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a Name Customer!!!
                </div>
            </div>
            <div>
                <label for="validationCustom03">Birthday: </label>
                <input type="date" class="form-control" id="validationCustom03" name="birthday" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a dd/mm/yyyy !!!
                </div>
            </div>
            <div>
                <label for="validationCustom04">Gender: </label>
                <select class="custom-select custom-select-sm" name="gender" id="validationCustom04" required>
                    <option selected></option>
                    <option value="0">Male</option>
                    <option value="1">Female</option>
                </select>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a gender!!!
                </div>
            </div>
            <div>
                <label for="validationCustom05">ID Card: </label>
                <input type="text" class="form-control" name="idCard" id="validationCustom05" placeholder="ID Card" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a ID Card!!!
                </div>
            </div>
            <div>
                <label for="validationCustom06">Phone number: </label>
                <input type="text" class="form-control" name="phone" id="validationCustom06" placeholder="091|090|+8490|+8491xxxxxxx" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a phone number!!!
                </div>
            </div>
            <div>
                <label for="validationCustom07">Email: </label>
                <input type="text" class="form-control" name="email" id="validationCustom07" placeholder="Email" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a email !!!
                </div>
            </div>
            <div>
                <label for="validationCustom08">Address: </label>
                <input type="text" class="form-control" name="address" id="validationCustom08" placeholder="Address" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
                <div class="invalid-feedback">
                    Please enter a address !!!
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                <label class="form-check-label" for="invalidCheck">
                    Agree to terms and conditions
                </label>
                <div class="invalid-feedback">
                    You must agree before submitting.
                </div>
            </div>
        </div>
        <button class="btn btn-primary" type="submit" name="action" value="create">Create</button>
    </form>

    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
<%--    <form method="post" action="/customer">--%>
<%--        <table border="1" cellpadding="5" class="table table-striped">--%>
<%--            <caption style="text-align: center">--%>
<%--                <h2><a href="customer?action=listCus">BACK</a></h2>--%>
<%--            </caption>--%>
<%--            <tr>--%>
<%--                <th>Type ID :</th>--%>
<%--                <td>--%>
<%--                    <select class="custom-select custom-select-sm" name="typeID" >--%>
<%--                        <option selected>Open this select menu</option>--%>
<%--                        <option value="1">Diamond</option>--%>
<%--                        <option value="2">Platinum</option>--%>
<%--                        <option value="3">Gold</option>--%>
<%--                        <option value="4">Silver</option>--%>
<%--                        <option value="5">Member</option>--%>
<%--                    </select>--%>
<%--&lt;%&ndash;                    <input type="text" name="typeID" id="typeID" size="45"/>&ndash;%&gt;--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>New name customer :</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="name" id="name" size="45"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Birthday customer :</th>--%>
<%--                <td>--%>
<%--                    <input type="date" name="birthday" id="birthday" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Gender :</th>--%>
<%--                <td>--%>
<%--                    <select class="custom-select custom-select-sm" name="gender" >--%>
<%--                        <option selected>Open this select menu</option>--%>
<%--                        <option value="0">Male</option>--%>
<%--                        <option value="1">Female</option>--%>
<%--                    </select>--%>
<%--&lt;%&ndash;                    <input type="text" name="gender" id="gender" size="15"/>&ndash;%&gt;--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>ID Card :</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="idCard" id="idCard" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Phone number :</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="phone" id="phone" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Email :</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="email" id="email" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <th>Address :</th>--%>
<%--                <td>--%>
<%--                    <input type="text" name="address" id="address" size="15"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td colspan="2" align="center">--%>
<%--                    <input type="submit" name= "action" value="create"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--    </form>--%>
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
