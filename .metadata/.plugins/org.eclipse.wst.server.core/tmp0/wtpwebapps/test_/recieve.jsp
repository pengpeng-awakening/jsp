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
获取文本框的信息如下：<br>
<%
request.setCharacterEncoding("utf-8");
//String name=request.getParameter("name");
//String school=request.getParameter("school");
//String gender=request.getParameter("gender");
Student s1=new Student("","","","");
request.getAttribute("stu1");
%>
<%-- 您的姓名：<%=name %>
<br>
您的学校：<%=school %>
<br>
您的性别为：<%=gender %>
<br>
您喜欢的专业是：
<%
String[] course=request.getParameterValues("course");
if(course!=null)  for(String s:course)out.print(s+"  ");
else out.print("没有选择喜欢的专业!"); --%>
out.print(stu1);
%>
<a href="recieveChinese.jsp" name="返回" value="返回">返回</a>
</body>
</html>