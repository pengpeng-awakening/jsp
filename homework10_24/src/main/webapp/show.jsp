<%@page import="homework10_24.Message"%>
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
<%	request.setCharacterEncoding("utf-8");
	ArrayList list=(ArrayList)application.getAttribute("book");
	String user=(String)session.getAttribute("username");
	if(list!=null){
			for(int i=0;i<list.size();i++){
			Message	message=(Message)list.get(i);
			%>
				<table border="1">
					<tr>
						<td width="25%">用户名：</td>
						<td><%=message.getName() %></td>
					</tr>
					<tr>
						<td>主题：</td>
						<td><%=message.getTitle() %></td>
					</tr>
					<tr>
						<td>内容：</td>
						<td>
						<textarea rows="10" cols="40" name="content"><%=message.getContent() %></textarea>
						</td>
					</tr>
					<tr>
						<td>留言时间：</td>
						<td><%=message.getDate() %></td>
					</tr>
					<%
					if(message.getName().equals(user)){
					%>
					<tr>
						<td colspan="2" align="center">
						<a href="doDelect.jsp?index=<%=i%>" >删除</a>
						<a href="doUpdate.jsp?index=<%=i%>" >修改</a>
						</td>
					</tr>
					<%} %>
				</table>	
				<br>
				<br>
				<br>
				<%
				}
			}
%>
<a href="say.jsp">返回留言版页面</a>

</body>
</html>