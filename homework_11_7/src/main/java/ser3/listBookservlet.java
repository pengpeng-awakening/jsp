package ser3;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Book;
import bean.Db;

/**
 * Servlet implementation class listBookservlet
 */
@WebServlet("/listBookservlet")
public class listBookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public listBookservlet() {
		super();
		// TODO Auto-generated constructor stub
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
		out.print("本站有如下书籍：<br><br>");
		Map<String, Book> map = Db.getAll();

		Set<Entry<String, Book>> entry = map.entrySet();
		for (Map.Entry<String, Book> en : entry) { // 结果的类型的名称：遍历的集合
			Book book = en.getValue();
			out.print(book.getName() + "<a href='BuyServlet?id=" + en.getKey() + "'>购买</a><br><br>");
		}
		out.print("<a href='ListCarServlet'>查看购物车</a>");
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
