<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<%@ page import="java.sql.*" %>
<%@ include file="head.txt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookOrderForm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
    <div align="center">
	<%
	   if(loginBean==null){
	        response.sendRedirect("login.jsp");
	    }
	    else {
	       boolean b =loginBean.getLogname()==null||
	                  loginBean.getLogname().length()==0;
	       if(b)
	         response.sendRedirect("login.jsp");
	    }
	    Connection con;
	    Statement sql; 
	    ResultSet rs;
	    try{  Class.forName("com.mysql.jdbc.Driver");
	    }
	    catch(Exception e){}
	    try { String uri= "jdbc:mysql://127.0.0.1/mobileshop";
	          String user="root";
	          String password="123456";
	          con=DriverManager.getConnection(uri,user,password);
	          sql=con.createStatement();
	          String cdn=
	         "SELECT id,mess,sum FROM orderform where logname= '"+loginBean.getLogname()+"'";
	          rs=sql.executeQuery(cdn);
	          out.print("<table border=2>");
	          out.print("<tr>");
	            out.print("<th width=100>"+"订单号");
	            out.print("<th width=100>"+"信息");
	            out.print("<th width=100>"+"价格");
	          out.print("</TR>");
	          while(rs.next()){
	            out.print("<tr>");
	              out.print("<td >"+rs.getString(1)+"</td>"); 
	              out.print("<td >"+rs.getString(2)+"</td>");
	              out.print("<td >"+rs.getString(3)+"</td>");
	              out.print("</tr>") ; 
	          }
	          out.print("</table>");
	          con.close();
	    }
	    catch(SQLException e){ 
	          out.print(e);
	    }
    %>
</div>
  </body>
</html>