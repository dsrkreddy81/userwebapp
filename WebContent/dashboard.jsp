<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="userauthenticate.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>
<h1>Welcome<%
HttpSession hs=request.getSession();
String username=(String)hs.getAttribute("username");
PrintWriter pw=response.getWriter();
pw.print(username);
%></h1>
<a href="password.html"><button>Change Password</button></a>
<a href="display.jsp"><button>Display</button></a>
<a href="logout.jsp"><button>Logout</button></a>
</body>
</html>