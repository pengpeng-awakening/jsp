<%@page import="java.util.Date"%>
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
String i=(String)session.getAttribute("index");
ArrayList<Message> book=(ArrayList<Message>)application.getAttribute("book"); 
Message message=book.get(Integer.parseInt(i));
if((String)request.getParameter("title_after")!=null)
message.setTitle((String)request.getParameter("title_after"));
if((String)request.getParameter("content_after")!=null)
message.setContent((String)request.getParameter("content_after"));
message.setDate(new Date().toLocaleString());
response.sendRedirect("show.jsp");
%>
</body>
</html>