<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 11/3/20
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <head>
    <title>Calculate Discount</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <h1>Calculate Discount</h1>
  <form method="post" action="/calculate">
    <input type="text" name="calculate" placeholder="Enter your price: "/>
    <input type = "submit" id = "submit" value = "Calculate"/>
  </form>
  </body>
</html>
