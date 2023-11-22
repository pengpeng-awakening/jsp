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
String name=request.getParameter("peopleName");
String title=request.getParameter("title");
String message=request.getParameter("messages");
if(name==null||name.equals(""))
	name="guest"+(int)(Math.random()*10000);
	if(title==null||name.equals(""))
		title="无标题";
		if(message==null||name.equals(""))
			message="无信息";
		String s=name+"#"+title+"#"+message;
		ArrayList  list=(ArrayList)application.getAttribute("messages");
		if(list==null) list=new ArrayList();
		list.add(s);
		application.setAttribute("messages",list);
		out.print("您的留言信息已提交！");
%>
<a href="example3_14_input.jsp">返回留言版页面</a>
<a href="example3_14_show.jsp">查看留言版</a>

</body>
</html>

