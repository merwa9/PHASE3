<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.List" %>

<html>
<head>
<title>Purchase Report</title>
</head>
<body>
<h2>Purchase Report</h2>




 <input type="checkbox" id="Sortbydate" onclick="location.href = 'SortByDate.jsp';"> 
  <label for="Sortbydate"> Sort by date Ascending </label><br>

 <input type="checkbox" id="sortbycat" onclick="location.href = 'Category.jsp';"> 
  <label for="Sortbycat"> Sort by Category </label><br>

<%
try {
/* Create string of connection url  */
String connectionURL = "jdbc:mysql://localhost:3306/SportyShoes"; 
// declare a connection, statement and ResultSet 
Connection connection = null;

Statement statement = null;

ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.cj.jdbc.Driver"); 

/* Create a connection by using getConnection() method */
connection = DriverManager.getConnection(connectionURL, "root", "Manchester7");

/* createStatement() is used for create statement object that is used for sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = 
"SELECT products.ProductName, products.Price, products.Quantity, products.Catergory, Purchases.ProductName, Purchases.Email, Purchases.PurchaseDate FROM SportyShoes.products LEFT JOIN SportyShoes.Purchases ON products.ProductName = Purchases.ProductName ORDER BY Purchases.Email ; ";

rs = statement.executeQuery(QueryString);
%>
<center><TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<%
while (rs.next()) {
%>

  <tr>
    <TD><%=rs.getString(1)%></TD>
	<TD><%=rs.getString(2)%></TD>
	<TD><%=rs.getString(6)%></TD>
	<TD><%=rs.getString(7)%></TD>
  </tr>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>


<TABLE>
<TR>
<TD><FORM ACTION="NavigationServlet" method="get" >
<button type="submit"><-- back</button></TD>
</TR>
</TABLE>
</font>
</body>
</html>