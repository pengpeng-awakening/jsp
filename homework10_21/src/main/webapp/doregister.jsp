<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="us" class="homework10_21.UserBean" scope="page"/>
<jsp:setProperty property="*" name="us"/>
<%if(us.isRegisterOK()){
request.setAttribute("us", us);
%>
<jsp:forward page="success.jsp"/>
<%}else{%>
<jsp:forward page="fail.jsp"/>
<%} %>
</body>
</html>