package homework10_24;

import java.io.UnsupportedEncodingException;

public class Message {
	String name, title, content, date;

	public String getName() {
		return name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) throws UnsupportedEncodingException {
		this.date = date;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) throws UnsupportedEncodingException {
		this.title = new String(title.getBytes("ISO-8859-1"), "utf-8");
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) throws UnsupportedEncodingException {
		this.content = new String(content.getBytes("ISO-8859-1"), "utf-8");
	}

}
