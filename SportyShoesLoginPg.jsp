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
<%@ page import= "java.sql.PreparedStatement" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
</head>
<body>

<center><h1>Sporty Shoes</h1></center>
<form action="PasswordServlet" method="get">

<center> Enter Username: <input type="text" name="username"/></center>
<center> Enter Password: <input type="password" name="password"/></center>
<center>  <input type="submit" name="Login"/></center>
</form>


  		
        





</body>
</html>