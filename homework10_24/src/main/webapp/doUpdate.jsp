<%@page import="java.util.ArrayList"%>
<%@page import="homework10_24.Message"%>
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
String i=request.getParameter("index");
ArrayList<Message> book=(ArrayList<Message>)application.getAttribute("book"); 
Message message=(Message)book.get(Integer.parseInt(i));
session.setAttribute("index", i);
%>
<form action="doUpdate2.jsp" method="post">
				<table border="1">
					<tr>
						<td width="25%">用户名：</td>
						<td><%=message.getName() %></td>
						<td align="center">修改</td>
					</tr>
					<tr>
						<td>主题：</td>
						<td><%=message.getTitle() %></td>
						<td align="center"><input type="text" name="title_after"></td>
					</tr>
					<tr>
						<td>内容：</td>
						<td>
						<textarea rows="10" cols="40" name="content"><%=message.getContent()%></textarea>
						</td>
						<td>
						<textarea rows="10" cols="40" name="content_after"></textarea>
						</td>
					</tr>
					<tr>
						<td>留言时间：</td>
						<td colspan="2"><%=message.getDate()%></td>
					</tr>
					<tr>
					<% request.setAttribute("index", i);%>
					<td colspan="3" align="center"><input type="submit"></td>
					</tr>
					</table>
					</form>
</body>
</html>