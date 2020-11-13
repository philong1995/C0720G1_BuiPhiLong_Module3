<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/11/20
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Furama</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/case_study.css">
  </head>
  <body>
  <nav class="navbar" style="background: white">
    <a class="navbar-brand" href="/customer">
      <img src="picture/a29ab34a61c2f5504cad588f169cd4f3.png" width="45" height="30" class="d-inline-block align-top" alt="">
      FURAMA ENTERTAIMENT
    </a>
    <a class="navbar-brand">
      Bùi Phi Long
    </a>
  </nav>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">HOME</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto" style="margin: auto">
        <li class="nav-item" >
          <a class="nav-link" href="#">Employee</a>
        </li>
        <li class="nav-item" style="margin-left: 150px">
          <a class="nav-link" href="/customer?action=listCus">Customer</a>
        </li>
        <li class="nav-item" style="margin-left: 150px">
          <a class="nav-link" href="#">Service</a>
        </li>
        <li class="nav-item" style="margin-left: 150px">
          <a class="nav-link" href="#">Contract</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
  <div id="content" >
    <img src="picture/beautiful-villa.jpg">
  </div>
  <div class="card-footer text-center" style="clear: both">
    2 days ago
  </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
