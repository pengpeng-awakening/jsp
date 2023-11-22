<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor=cyan><font size=3></font>
<tabel>
<tr><td>姓名</td><td>学号</td><td>性别</td><td>年龄</td></tr>
<tr><td>张小小</td><td>01</td><td>男</td><td>18</td></tr>
<tr><td>李达</td><td>02</td><td>女</td><td>19</td></tr>
</tabel>
<br>
需要将此表格保存为Excel文档么？
<from action="" method="get" name=form>
<input type="submit" value="yes" name="submit">
</from>

<br>
</body>
</html>