<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="userauthenticate.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
table th,td{
  border: 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
<%
Connection con=DB.DB();
PreparedStatement ps=con.prepareStatement("select * from register");
ResultSet rst=ps.executeQuery();
%>
<h3 align="center">Previous Records</h3>
<table align="center">
<tr><td>Username</td><td>Password</td></tr>
<% while(rst.next())
	{
%>
 <tr><td><%= rst.getString(1) %></td><td><%= rst.getString(2) %></td></tr>
	<% 
	}
	%>
</table>
</body>
</html>