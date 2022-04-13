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
<title>Change Password</title>
</head>
<body>
<%
HttpSession hs=request.getSession();
String username=(String)hs.getAttribute("username");
String password=request.getParameter("password");
Bean b=new Bean();
DAO dao=new DAO();
b.setPassword(password);
int i=dao.password(b,username, password);
if(i>0){
	request.getRequestDispatcher("dashboard.jsp").forward(request, response);
}
else{
	PrintWriter pw=response.getWriter();
	request.getRequestDispatcher("password.html").include(request,response);
	pw.print("Password change failed");
}
%>
</body>
</html>