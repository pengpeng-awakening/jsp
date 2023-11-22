package bean;

import java.util.HashMap;
import java.util.Map;

public class Db {
	public static Map<String, Book> getAll() {
		Map<String, Book> map = new HashMap<String, Book>();
		map.put("001", new Book("32141234123", "JSP程序设计", "张三", "45.5"));
		map.put("002", new Book("23452345235", "java基础", "李四", "43.5"));
		map.put("003", new Book("24356453456", "c指针", "王五", "42.5"));
		map.put("004", new Book("23462435235", "算法导论", "赵六", "65.5"));
		return map;
	}

}
