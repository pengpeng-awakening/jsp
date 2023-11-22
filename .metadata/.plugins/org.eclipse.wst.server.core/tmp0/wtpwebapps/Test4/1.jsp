<%@page import="java.awt.print.Printable"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.http.HttpHeaders"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="这是一个page指令属性练习页面"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>欢迎你，现在时间是<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E").format(new Date())%></h2>
<br>
页面描述信息为：<%=this.getServletInfo() %>
<br>
<%int i=4;
 System.out.print("8/i="+i);
 
%>








</body>
</html>