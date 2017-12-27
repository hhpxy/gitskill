<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="pxy.Triangle"%>
<jsp:useBean id="triangle" class="pxy.Triangle" scope="page"/>
<HTML><BODY ><FONT size=2>
<FORM action="" Method="post">
<P>输入三角形的边A:<Input type=text name="sideA" value=0>
<P>输入三角形的边B:<Input type=text name="sideB" value=0>
<P>输入三角形的边C:<Input type=text name="sideC" value=0>
<Input type=submit value="提交">
<P>你给出三角形的三边是：
<jsp:setProperty  name= "triangle"  property="*" />
<BR>边A是：<jsp:getProperty name="triangle" property="sideA"/>
<BR>边B是：<jsp:getProperty name="triangle" property="sideB"/>
<BR>边C是：<jsp:getProperty  name= "triangle"  property="sideC"/>
<P>这三个边能构成一个三角形吗？
<jsp:getProperty name="triangle" property="triangle"/>
<P>面积是：<jsp:getProperty name="triangle" property="area"/>
</FONT></BODY></HTML>
