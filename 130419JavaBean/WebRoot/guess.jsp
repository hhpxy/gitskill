<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="pxy.GuessNumber" %>
<jsp:useBean id="guess" class="pxy.GuessNumber" scope="session" />
<% String strGuess=response.encodeRedirectURL("guess.jsp"),
          strGetNumber=response.encodeRedirectURL("getNumber.jsp");
%> 
<HTML><BODY bgcolor=pink>
<jsp:setProperty name="guess" property="guessNumber" param="guessNumber"/>
   这是第<jsp:getProperty name="guess" property="guessCount" />猜，      
<jsp:getProperty name="guess" property="result"/>。
   您给出的数是 <jsp:getProperty name="guess" property="guessNumber"/>。
<% if(guess.isRight()==false){
%>   <FORM action="<%=strGuess%>" method=post >
       再输入你的猜测:<Input type=text name="guessNumber">
       <Input type=submit value="提交">
     </FORM>
<% }
%>
<BR><A href="<%=strGetNumber%>">链接到getNumber.jsp重新玩猜数。</A>
</BODY></HTML>
