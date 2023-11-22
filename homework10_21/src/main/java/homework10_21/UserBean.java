package homework10_21;

import java.io.UnsupportedEncodingException;

public class UserBean {
	String name, job;

	public String getName() {
		return name;
	}

	public void setName(String name) throws UnsupportedEncodingException {
		this.name = new String(name.getBytes("ISO-8859-1"), "utf-8");
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) throws UnsupportedEncodingException {
		this.job = new String(job.getBytes("ISO-8859-1"), "utf-8");
	}

	public boolean isRegisterOK() {
		if (name != null && name != "" && job != null && job != "") {
			return true;
		} else
			return false;
	}
}
