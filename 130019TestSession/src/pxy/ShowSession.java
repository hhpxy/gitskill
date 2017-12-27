package pxy;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.sun.xml.internal.bind.AccessorFactoryImpl;
public class ShowSession extends HttpServlet {
 public void doGet(HttpServletRequest request,HttpServletResponse response)
  throws ServletException,IOException{
	 response.setContentType("text/html");
	 PrintWriter out=response.getWriter();
	 String title ="Session Tracking Example";
	 HttpSession session=request.getSession(true);
	 String heading ;
	 Integer accessCount=(Integer) session.getAttribute("acessCount");
	 if(accessCount ==null)
	 {
		 accessCount=new Integer(0);
		 heading="Welcome,Newcomer";
		 
	 }
	 else{
		 heading="Welcome Back!";
		 accessCount=new Integer(accessCount.intValue()+1);
	 }
		 session.setAttribute("accessCount", accessCount);
		 out.println("<html><head><title>Session 追踪</title></head>"+
				 "<body bgcolor=\"#fdf5e6\">\n"+"<h1 align=\"center\">"+
				 heading+"</h1>\n"+
				 "<h2>Information on your session:</h2>\n"
				 +"<table boder=1 align=\"center\">\n"
				 +"<tr bgclor=\"#fado\">\n"+"<th>Info Type<th>value\n"+
				 "<tr>\n"+"<td>Id\n"+"<td>"+session.getId()+"\n"
				 +"<tr>\n"+"<td>Creation Time\n"+"<td>"
				 +new Date(session.getCreationTime())+"\n"+"<tr>\n"
				 +"<td>Time of last Acession\n"+"<td>"
				 +new Date(session.getLastAccessedTime())+"\n"+"<tr>\n"
				 +"<td>Number of previous Acession\n"+"<td>"
				 +accessCount+"\n"+"</table>\n"+"</body>"+"</html>");
				 };
				 public void doPost(HttpServletRequest request,HttpServletResponse response)
				 throws ServletException,IOException{
					 doGet(request, response);
 }
}
