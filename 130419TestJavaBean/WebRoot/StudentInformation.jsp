<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="pxy.Student"%>
<jsp:useBean id="lisi" class="pxy.Student" scope="page"/>
<HTML><BODY bgcolor=cyan><FONT size=4>
<jsp:setProperty name="lisi" property="name" value="����"/>
    �����ǣ�<jsp:getProperty name="lisi" property="name"  />
<jsp:setProperty name="lisi" property="number" value="1999001"/>
<br>ѧ���ǣ�<jsp:getProperty name="lisi" property="number"/>
<jsp:setProperty name="lisi" property="height" value="<%=1.78%>"/>
<br>����ǣ�<jsp:getProperty name="lisi" property="height"/>��
<jsp:setProperty name= "lisi" property="weight" value="67.65"/>
<br>�����ǣ�<jsp:getProperty name="lisi" property="weight"/>����
</FONT></BODY></HTML>
