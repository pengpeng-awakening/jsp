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
	String name=request.getParameter("name");
	if (name!=null && name.length()>0)
	session.setAttribute("Loginname", name);//保存用户对象到会话中
	response.sendRedirect("show.jsp");
%>
	
</body>
</html>