<%@page import="java.util.ArrayList"%>
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
	
	ArrayList list=(ArrayList)application.getAttribute("messages");
	if(list!=null){
		for(int i=0;i<list.size();i++){
			String message=(String)list.get(i);
			String[] a=message.split("#");
			out.print("No"+(i+1)+"留言人:"+a[0]+"<br>标题："+a[1]+"<br>留言内容:"+a[2]);
			out.print("<br><hr><br>");
		}
		}
		
	
%>
<a href="example3_14_input.jsp">返回留言版页面</a>
</body>
</html>
	