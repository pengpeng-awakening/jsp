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
String size=request.getParameter("size");
String content="";
if("h1".equals(size))
//	content="字体是不是太大了呢";
    response.sendRedirect("show.jsp");
else if("h5".equals(size)) 
//	content="字体是不是太小了呢";
	response.sendRedirect("show.jsp");
%>

<%-- 
<jsp:forward page="show.jsp">
<jsp:param value="<%=content %>" name="content"/>
</jsp:forward>
--%>

</body>
</html>