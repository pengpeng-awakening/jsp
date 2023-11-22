s<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String driverName="com.mysql.jdbc.Driver";
	String dbUrl = "jdbc:mysql://localhost:3306/book";
	String userName="root";
	String pass="";	
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	String bookName=null;
	try{
	request.setCharacterEncoding("UTF-8");
	bookName=request.getParameter("name");
	Class.forName(driverName);//加载驱动
	con=DriverManager.getConnection(dbUrl, userName, pass);//得到连接对象
	stmt=con.createStatement();
	String sql="select * from book_info";
	if(bookName!=null&&bookName.length()>0){
		sql+=" where book_name='"+bookName+"'";
		}	
	rs=stmt.executeQuery(sql);
	rs.last();
	//rs.first();
	//rs.absolute(2);
	out.print(rs.getString("book_name"));
	}catch(Exception e){
		out.print(e.getMessage());
	}
%>
<br>
	数据库表共有：<font size="4" color="red">
	<%=rs.getRow()%>
	</font>
	条记录<br>
	您查询的图书是：<%=bookName %>>
	<table border="1" bordercolor="#FF0000" bgcolor="#EFEFEF" width="400">
	<tr>
	<td><b>ID</b></td><td><b>书名</b></td>
	<td><b>价格</b></td><td><b>库存</b></td>
	<td><b>作者</b></td><td><b>图书简介</b></td>
	</tr>
	
	<%
		rs.beforeFirst();//将游标移到第一条记录前
		while(rs.next()){
			%>
	<tr align="center">
	<td><b><%=rs.getInt(1)%></b></td><td><b><%=rs.getString(2)%></b></td>
	<td><b><%=rs.getString("price")%></b></td><td><b><%=rs.getString("stock")%></b></td>
	<td><b><%=rs.getString(5)%></b></td><td><b><%=rs.getString(6)%></b></td>
	</tr>
			<%
		}
		rs.close();
		stmt.close();
		con.close();
	%>
	</table>
	
	
	
	
</body>
</html>