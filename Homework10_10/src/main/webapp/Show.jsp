<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="org.apache.tomcat.util.descriptor.web.LoginConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.util.*" %>
<HTML>
<head> 
  <br>选择图书：<a href="SelectBook.jsp">选择图书页面</a>
  <br>结账：    <a href="Show.jsp">结账页面</a> 
</head>

<%! public String handleStr(String s) {
       try {  
    	   byte [] bb= s.getBytes("utf-8");
              s = new String(bb,"utf-8");
       }
       catch(Exception exp){}
       return s;
    }
    %>
<body bgcolor=#EEEEFF><font size=2>
<%
	String personName=(String)session.getAttribute("LoginName");
	ArrayList bookList =null;
	if(personName==null||personName.length()==0){
		out.print("请到确认姓名的页面输入登录名称！");
		}
		else bookList=(ArrayList)session.getAttribute("books");
	
%>
<br>
<%
request.setCharacterEncoding("utf-8");
%>
<%=handleStr(personName)%>的购书信息如下：
<%=bookList %>
<br>
</font>

</body></HTML>