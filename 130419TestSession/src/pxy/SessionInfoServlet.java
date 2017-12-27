package pxy;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class SessionInfoServlet extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession mySession = request.getSession(true);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>Session Info Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.println("<h3>Session Information</h3>");
		out.println("New Session:" + mySession.isNew() + "<br>Session ID:"
				+ mySession.getId() + "<br>Session Creation Time:"
				+ new Date(mySession.getCreationTime())
				+ "<br>Session Last Accessed Time"
				+ new Date(mySession.getLastAccessedTime()));
		out.println("<h3>Request Information</h3>\n"
				+ "Session ID from Request:"
				+ request.getRequestedSessionId()
				+ "<br>Session ID Via Cookie:"
				+ request.isRequestedSessionIdFromCookie()
				+ "<br>Session ID Via rewritten URL:"
				+ request.isRequestedSessionIdFromURL()
				+ "<br>Valid Session ID:" + request.isRequestedSessionIdValid());
		out.println("  </BODY>");
		out.println("</HTML>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
