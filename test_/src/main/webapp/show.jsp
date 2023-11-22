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
request.setCharacterEncoding("utf-8");
String size=request.getParameter("size");
String content=request.getParameter("content");
out.print("<"+size+">"+content+"</"+size+">");
%>
<a href="select.jsp">返回</a>

</body>
</html>