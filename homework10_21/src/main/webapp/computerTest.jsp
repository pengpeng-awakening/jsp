<%@page import="homework10_21.computer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cc" class="homework10_21.computer"></jsp:useBean>
<jsp:setProperty property="*" name="cc"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<font size="2">
<form action="" method="post">
	<input type="text" name="numberOne" size=6 value=0>
		<select name="operator">
			<option value="+">+
			<option value="-">-
			<option value="*">*
			<option value="/">/
		</select>
	<input type="text" name="numberTwo" size=6 value=0>
	<br>
	<input type="submit" value="提交">
</form>
<br>
<jsp:getProperty name="cc" property="numberOne"/>
<jsp:getProperty name="cc" property="operator"/>
<jsp:getProperty name="cc" property="numberTwo"/>=
<jsp:getProperty name="cc" property="result"/>
<br>
<%=cc.getNumberOne() %>
<%=cc.getOperator() %>
<%=cc.getNumberTwo() %>=
<%=cc.getResult() %>
</font>
		
</body>
</html>