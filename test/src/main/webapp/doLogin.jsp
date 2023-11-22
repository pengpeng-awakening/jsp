<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String name=request.getParameter("username");
String pass=request.getParameter("password"); 
if(name!=null&&pass!=null)
	if("pengpeng".equals(name)&&"123456".equals(pass)){
%>
<jsp:forward page="success.jps"/>
<%}else{ %>
<jsp:forward page="error.jps"/>
<%} %>
