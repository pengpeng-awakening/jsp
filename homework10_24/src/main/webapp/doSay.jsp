<%@page import="java.util.Date"%>
<%@page import="homework10_24.Message"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.logging.SimpleFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="messages" class="homework10_24.Message" scope="request"></jsp:useBean>
<%
	ArrayList<Message> book=(ArrayList<Message>)application.getAttribute("book");
	if(book==null)	book=new ArrayList<Message>();
	
	messages.setName((String)session.getAttribute("username"));
	messages.setDate(new Date().toLocaleString());
	messages.setContent(request.getParameter("content"));
	messages.setTitle(request.getParameter("title"));
	book.add(messages);
	application.setAttribute("book",book);
	response.sendRedirect("show.jsp");
%>
</body>
</html>