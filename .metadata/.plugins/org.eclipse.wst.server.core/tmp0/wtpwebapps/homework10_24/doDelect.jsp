<%@page import="homework10_24.Message"%>
<%@page import="java.util.ArrayList"%>
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
String i=request.getParameter("index");
ArrayList<Message> book=(ArrayList<Message>)application.getAttribute("book"); 
if(book!=null&&i!=null) book.remove(Integer.parseInt(i));
application.setAttribute("book", book);
response.sendRedirect("show.jsp");
%>
</body>
</html>