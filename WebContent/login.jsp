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
<title>Login</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
Bean b=new Bean();
DAO dao=new DAO();
b.setUsername(username);
b.setPassword(password);
boolean i=dao.login(username,password);
if(i==true){
	HttpSession hs=request.getSession();
	hs.setAttribute("username",username);
	request.getRequestDispatcher("dashboard.jsp").include(request,response);
}
else{
	PrintWriter pw=response.getWriter();
	request.getRequestDispatcher("login.jsp").include(request,response);
	pw.print("Login failed");
}
%>
</body>
</html>