<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
  <br>选择图书：<a href="SelectBook.jsp">选择图书页面</a>
  <br>结账：    <a href="Show.jsp">结账页面</a> 
</head>
<body bgcolor=cyan><font size=3>
  <p>输入姓名
   <form action="Login.jsp" method=post name=form>
       <input type="text" name="name"> 
       <input type="submit" value="确定" name=submit>
  </form> 
  <%
  request.setCharacterEncoding("utf-8");
  String name=request.getParameter("name");
	if(name==null)name="";
	else session.setAttribute("LoginName", name);
  %>
  
  
  </font></body></html>>