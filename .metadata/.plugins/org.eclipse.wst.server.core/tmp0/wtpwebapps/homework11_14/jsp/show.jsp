<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆成功</title>
</head>
<body>
登陆成功<br>
<%
	request.setCharacterEncoding("utf-8");
	String name=(String)session.getAttribute("Loginname");
	System.out.println(name);
%>
<%=name%>
</body>
</html>