<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page %>
<jsp:useBean id="tri" class="homework10_21.Triangle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" Method="post">
&quot;输入三角形三边
		边A:<input type=text name="sideA" value=0 size=5>
		边B:<input type=text name="sideB" value=0 size=5>
		边C:<input type=text name="sideC" value=0 size=5>
		<input type=submit value="提交">
</form>
<%-- 
<jsp:setProperty name="tri" property="sideA" param="sideA"/>
<jsp:setProperty name="tri" property="sideB" param="sideB"/>
<jsp:setProperty name="tri" property="sideC" param="sideC"/>
--%>
<jsp:setProperty property="*" name="tri"/>




<br>三角形的三边是：
<br>边A:<%=tri.getSideA() %>
<br>边B:<%=tri.getSideB() %>
<br>边C:<%=tri.getSideC() %>
<br>这三个边能构成三角形吗：
<%=tri.isTriangle() %>
<br>三角形的面积是：
<%=tri.getArea() %>

</body>
</html>