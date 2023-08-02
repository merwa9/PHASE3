<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
<center><h1>Add Product</h1></center>
</body>

<form action="AddProductServlet" method="get">

<center> Product Name: <input type="text" name="product"/></center>
<center> Price (£): <input type="text" name="price"/></center>
<center> Stock Quantity: <input type="text" name="quantity"/></center>
<center>  <input type="submit" name="Add Product"/></center>
</form>

<form action="NavigationServlet" method="get"><center>
<button type="submit"><-- back</button></center>
</form>

</html>