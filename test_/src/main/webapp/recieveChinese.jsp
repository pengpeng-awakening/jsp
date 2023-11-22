<%@page import="test_.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="recieve.jsp">
请输入您的姓名：<input type="text" name="name"><br>
请输入您的学校：<input type="text" name="school"><br>
请选择您的性别：<input type="radio" name="gender" value="男">男
			<input type="radio" name="gender" value="女">女<br>
您最喜欢课程是：<br><input type="checkbox" name="course" value="文学">文学<br>
			<input type="checkbox" name="course" value="土木工程">土木工程<br>
			<input type="checkbox" name="course" value="计算机网络技术">计算机网络技术<br>
			<input type="checkbox" name="course" value="计算机应用技术">计算机应用技术<br>
			<input type="checkbox" name="course" value="物流技术">物流技术<br>
<input type="submit" name="btn1" value="确认">
</form>
</body>
</html>