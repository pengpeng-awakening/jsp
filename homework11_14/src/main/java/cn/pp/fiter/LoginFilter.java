package cn.pp.fiter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter({ "/LoginFilter", "/jsp/show.jsp" })
public class LoginFilter extends HttpFilter implements Filter {

	/**
	 * @see HttpFilter#HttpFilter()
	 */
	public LoginFilter() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.print("销毁LoginServlet过滤器");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// pass the request along the filter chain
		// 对未登录的用户访问进行拦截
		request.setCharacterEncoding("utf-8");
		System.out.println("初始化login过滤器");
		HttpSession session = ((HttpServletRequest) request).getSession();// 获取回话对象
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = (String) session.getAttribute("Loginname");
		System.out.println("获取的name对象为：" + name);
		if (name == null || name == "") {

			out.print("<script language=javascript>alert('您还没有登录，请登录！');window.location.href='ee.jsp'</script>");
		} else {
			chain.doFilter(request, response);
			System.out.println("销毁login过滤器");
		}

		System.out.println("截获响应！");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.print("初始化过滤器");
	}

}
