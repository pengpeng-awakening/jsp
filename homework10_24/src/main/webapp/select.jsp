<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String name=(String)request.getParameter("name");
	if(name!=null) session.setAttribute("username", name);
%>
<body>
<div align="center">
<h2>实现留言板</h2>
<a href="say.jsp">我要留言</a>&nbsp;&nbsp;&nbsp;
<a href="show.jsp">查看留言版</a>
</div>

</body>
</html>