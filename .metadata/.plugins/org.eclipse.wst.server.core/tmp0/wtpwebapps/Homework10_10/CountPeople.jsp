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
int num=0;
Integer count=(Integer)application.getAttribute("count");
if(count==null) application.setAttribute("count", 1);
else application.setAttribute("count",count+1);//设置的属性名字，属性的大小
%>
网站当前的访问次数是：
<%
if(count!=null) out.print(count);
else out.print("暂时无人访问");
%>
</body>
</html>