package test_;

public class Student {
	String name;
	String sex;
	String school;
	String intrest;

	public Student(String name, String sex, String school, String intrest) {
		super();
		this.name = name;
		this.sex = sex;
		this.school = school;
		this.intrest = intrest;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getIntrest() {
		return intrest;
	}

	public void setIntrest(String intrest) {
		this.intrest = intrest;
	}

}
