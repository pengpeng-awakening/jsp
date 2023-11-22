<%@page import="homework10_21.UserBean"%>
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
	UserBean us=(UserBean)request.getAttribute("us");
	out.print("注册成功<br>姓名："+us.getName()+",职业："+us.getJob());
%>
</body>
</html>