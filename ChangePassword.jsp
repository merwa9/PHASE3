<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page import="java.io.*" %> 
<%@ page import="java.util.List" %>

<head>
<meta charset="UTF-8">
<title>Change Password</title>
</head>
<body>
<center><h2> Change Password</h2></center>
<form action="PasswordChangeServlet" method="get">
<center> Enter Username: <input type="text" name="username"/></center>
<center> Enter Old Password: <input type="password" name="password"/></center>
<center> Enter New Password: <input type="password" name="newpassword"/></center>
<center>  <input type="submit" name="Login"/></center>
</form>


<FORM ACTION="NavigationServlet" method="get" >
<center><button type="submit"><-- back</button></center>


</body>
</html>