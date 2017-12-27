package pxy;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class ShowSession extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String title = "Session Tracking Example";
		HttpSession session = request.getSession(true);
		String heading;
		Integer accessCount = (Integer) session.getAttribute("accessCount");
		if (accessCount == null) {
			accessCount = new Integer(0);
			heading = "Welcome,Newcomer";
		} else {
			heading = "Welcome Back";
			accessCount = new Integer(accessCount.intValue() + 1);
		}
		session.setAttribute("accessCount", accessCount);
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>Session追踪</TITLE></HEAD>");
		out.println("  <BODY>");
		out.println("<h1 align='center'>" + heading + "</h1>");
		out.println("<h2>Information on Your Session:</h2>\n"+ 
				"<table border='1' align='center'>\n"+ 
				"<tr bgcolor='#ffad00'>\n" + 
				"<th>Info Type<th>Value\n"+ "<tr>\n" + 
				"<td>ID\n" + "<td>" + session.getId() + "\n"+ "<tr>\n" 
				+ "<td>Creation Time\n" + "<td>"+ 
				new Date(session.getCreationTime()) + 
				"\n<tr>\n"+ "<td>Time of Last Access\n" + 
				"<td>"+ new Date(session.getLastAccessedTime()) + 
				"\n<tr>\n"+ "<td>Number of Previous Access\n" 
				+ "<td>" + accessCount+ "\n" + "</table>\n");
		out.println("  </BODY>");
		out.println("</HTML>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}