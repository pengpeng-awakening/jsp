<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
  <br>结账：    <a href="Show.jsp">结账页面</a> 
</head>
<HTML><body bgcolor=cyan><font size=2>
 <p>选择购买的书籍：
   <form action="SelectBook.jsp" method=post name=form>
       <input type="checkbox" name="choice" value="Java教程" >Java教程
       <input type="checkbox" name="choice" value="数据库原理" >数据库原理
   <br><input type="checkbox" name="choice" value="操作系统" >操作系统
       <input type="checkbox" name="choice" value="C语言教程" >C语言教程
       <br><input type="submit" value="提交" name="submit">
  </form> 
  <%
  request.setCharacterEncoding("utf-8");
  	String[] books=request.getParameterValues("choice");
  if(books!=null){
	  ArrayList list=new ArrayList();
	  for(String s:books) list.add(s);
	  session.setAttribute("books",list);
  }
	  %>
  </font></body></HTML>