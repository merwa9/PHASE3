<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
</head>
<body>
<center><h1>View Customer</h1></center>

<form action="ViewUserServlet" method="get">

<center> Customer Name: <input type="text" name="UserName" /></center>
<center>  <input type="submit" name="Search"/></center>

</form>


<FORM ACTION="NavigationServlet" method="get" >
<center><button type="submit"><-- back</button></center>

</body>
</html>