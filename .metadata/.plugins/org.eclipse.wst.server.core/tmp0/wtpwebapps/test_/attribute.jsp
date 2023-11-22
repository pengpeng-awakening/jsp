<%@page import="test_.Student"%>
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
Student s1=new Student("黄","女","武汉交通职业学院","音乐");
request.setAttribute("stu1", s1);
%>
<jsp:forward page="recieve.jsp">
</jsp:forward>

</body>
</html>