package cn.pp.fiter;

import java.io.IOException;

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
 * Servlet Filter implementation class CharacterFilter
 */
@WebFilter({ "/CharacterFilter", "/jsp/show" })
public class CharacterFilter extends HttpFilter implements Filter {

	/**
	 * @see HttpFilter#HttpFilter()
	 */
	public CharacterFilter() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// pass the request along the filter chain
		request.setCharacterEncoding("utf-8");
		HttpSession session = ((HttpServletRequest) request).getSession();
		System.out.println("初始化Character过滤器");
		String name = (String) session.getAttribute("Loginname");
		System.out.println("替换---前---的name" + name);
		name = name.replace("坏蛋", "**");
		System.out.println("替换---后---的name" + name);
		session.setAttribute("loginname", name);
		chain.doFilter(request, response);
		System.out.println("销毁Character过滤器");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
