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
<title>Register</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
Bean b=new Bean();
DAO dao=new DAO();
b.setUsername(username);
b.setPassword(password);
int i=dao.register(b);
if(i>0){
	request.getRequestDispatcher("login.html").forward(request,response);
}
else{
	PrintWriter pw=response.getWriter();
	request.getRequestDispatcher("register.jsp").include(request,response);
	pw.print("Registration failed");
}
%>
</body>
</html>