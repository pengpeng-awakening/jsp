<%@ page contentType="text/html;charset=utf-8" %>
<HTML><body bgcolor=cyan>
 <form action="example3_14_pane.jsp" method="post" name="form">
   输入名字：<input  type="text" name="peopleName">
   <br>留言标题：<input  type="text"  name="title">
   <br>留言：<br> <textArea name="messages" rows="10" cols=36 
                   wrap="physical"></textArea>
   <br><input type="submit" value="提交" name="submit">
 </form>
 <a href="example3_14_show.jsp">查看留言板</a>
</body></HTML>
