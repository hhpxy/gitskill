package pxy;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class URLSession extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>Session追踪</TITLE></HEAD>");
		out.println("  <BODY>");
		out.println("session id:" + session.getId() + "<br>from url:"
				+ request.isRequestedSessionIdFromURL() + "<br>from cookie:"
				+ request.isRequestedSessionIdFromCookie() + "\n");
		out.println("<br><a href="
				+ response.encodeURL(request.getRequestURL().toString())
				+ ">test</a>");
		out.println("  </BODY>");
		out.println("</HTML>");
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}