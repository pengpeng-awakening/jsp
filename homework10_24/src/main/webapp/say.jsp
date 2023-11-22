<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>留言板</title>
</head>
<body>
<form action="doSay.jsp" method="post">
<div>
	<table border="2">
		<tr>
			<td>用户名：</td>
			<td><%=(String)session.getAttribute("username")%></td>
		</tr>
		<tr>
			<td>主题</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>内容</td>
			<td>
				<textarea rows="10" cols="40" name="content"></textarea>
			</td>
		<tr>
			<td colspan="2">
				<input type="submit" name="提交">
				<input type="reset" name="重置">
			</td>
		</tr>
		
	</table>
</div>
</form>
</body>
</html>