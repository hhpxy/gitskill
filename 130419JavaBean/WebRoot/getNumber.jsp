<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="pxy.GuessNumber" %> 
<jsp:useBean id="guess" class="pxy.GuessNumber" scope="session"/>
<HTML><BODY bgcolor=cyan><FONT size=2>
<% int n=(int)(Math.random()*100)+1;
   String str=response.encodeRedirectURL("guess.jsp");
%>
<jsp:setProperty  name= "guess"  property="answer" value="<%=n%>"/>
  随机给你一个1到100之间的数，请猜测这个数是多少？
<Form action="<%=str%>" method=post >
  输入你的猜测: <Input type=text name="guessNumber">
<Input type=submit value="提交">
</FONT></FORM></BODY></HTML>
