<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="pxy.GuessNumber" %>
<jsp:useBean id="guess" class="pxy.GuessNumber" scope="session" />
<% String strGuess=response.encodeRedirectURL("guess.jsp"),
          strGetNumber=response.encodeRedirectURL("getNumber.jsp");
%> 
<HTML><BODY bgcolor=pink>
<jsp:setProperty name="guess" property="guessNumber" param="guessNumber"/>
   ���ǵ�<jsp:getProperty name="guess" property="guessCount" />�£�      
<jsp:getProperty name="guess" property="result"/>��
   ������������ <jsp:getProperty name="guess" property="guessNumber"/>��
<% if(guess.isRight()==false){
%>   <FORM action="<%=strGuess%>" method=post >
       ��������Ĳ²�:<Input type=text name="guessNumber">
       <Input type=submit value="�ύ">
     </FORM>
<% }
%>
<BR><A href="<%=strGetNumber%>">���ӵ�getNumber.jsp�����������</A>
</BODY></HTML>