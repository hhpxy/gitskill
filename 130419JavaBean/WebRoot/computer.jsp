<%@ page contentType="text/html;Charset=GB2312" %>
<%@ page import="pxy.ComputerBean" %> 
 <jsp:useBean id="computer" class="pxy.ComputerBean" scope="session"/>
<HTML><BODY bgcolor=yellow><Font size=2>
  <jsp:setProperty name="computer" property="*"/>
  <FORM action="" method=post name=form>
    <Input type=text name="numberOne" 
           value=<jsp:getProperty name="computer" property="numberOne"/> size=5>
          <Select name="operator">
             <Option value="+">+
             <Option value="-">-
             <Option value="*">*
             <Option value="/">/
          </Select> 
    <Input type=text name="numberTwo" 
           value=<jsp:getProperty name="computer" property="numberTwo"/> size=5>
     =<jsp:getProperty name="computer" property="result"/> 
    <BR> <INPUT TYPE="submit" value="提交你的选择" name="submit">
  </FORM> 
</BODY></HTML>