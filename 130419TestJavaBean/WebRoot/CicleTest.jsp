<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+
"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
  </head>
  <body>
     <jsp:useBean id="boy" class="pxy.Circle" scope="page"/>
     <% boy.setr(10);
     %>
      圆的半径:<%=boy.getr()%><br/>
     圆的面积:<%=boy.Cirarea()%><br/>
      圆的周长:<%=boy.Cirlen()%><br/>  
  </body>
</html>
