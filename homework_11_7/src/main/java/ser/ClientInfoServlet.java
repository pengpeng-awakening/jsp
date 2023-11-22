package ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ClientInfoServlet
 */
@WebServlet(urlPatterns = { "/ClientInfoServlet" }, initParams = { @WebInitParam(name = "name", value = "peng"),
		@WebInitParam(name = "pass", value = "123456") })
public class ClientInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ClientInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		String name = config.getInitParameter("name");
		String pass = config.getInitParameter("pass");
		System.out.print(name + "," + pass);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		ServletContext servletContext = request.getServletContext();
		out.println("服务器名" + request.getServerName());
		out.println("<BR>服务器信息" + servletContext.getServerInfo());
		out.println("<BR>服务器主版本号" + servletContext.getMajorVersion());
		out.println("<BR>服务器属性<BR>");
		Enumeration<String> params = servletContext.getAttributeNames();
		while (params.hasMoreElements()) {
			String string = (String) params.nextElement();
			out.print(string + "<BR>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
