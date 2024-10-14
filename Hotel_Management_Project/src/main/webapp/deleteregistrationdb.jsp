<%@page import="java.util.Scanner"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String phone=request.getParameter("phone");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotelmgmtjsp", "root", "Chaitu#321");
String query="delete from guest where mobile= ?";
PreparedStatement pre=con.prepareStatement(query);
pre.setString(1,phone);
int a=pre.executeUpdate();
if(a>0){
	%>
	<%="Registration Deleted" %>
	<% 
}
else{
	%>
	<%="Registration Not Deleted" %>
	<% 
}
%>
</body>
</html>