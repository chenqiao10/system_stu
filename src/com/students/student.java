package com.students;

public class student {
	private String student_name;
	// 掌握技术
	private String student_sno;
	// 部分
	private String sex;
	
	private String nation;
	private String sdept;
	
	public student(){
	}
	private String classno;
	private String born_date;
	private String student_age;
	
	private String ruxue_date;
	private String zhuanye;
	private int IDcard;
	private String address;
	
	private int  ID;
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSex() {
		return sex;
	}
	
	
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getSdept() {
		return sdept;
	}

	public void setSdept(String sdept) {
		this.sdept = sdept;
	}
	public String getClassno() {
		return classno;
	}
	public void setClassno(String classno) {
		this.classno = classno;
	}
	public String getBorn_date() {
		return born_date;
	}
	public void setBorn_date(String born_date) {
		this.born_date = born_date;
	}
	public String getStudent_age() {
		return student_age;
	}
	public void setStudent_age(String student_age) {
		this.student_age = student_age;
	}
	public String getRuxue_date() {
		return ruxue_date;
	}
	public void setRuxue_date(String ruxue_date) {
		this.ruxue_date = ruxue_date;
	}
	public int getIDcard() {
		return IDcard;
	}
	public void setIDcard(int iDcard) {
		IDcard =iDcard;
	}
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	
	public  String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStudent_sno() {
		return student_sno;
	}
	public void setStudent_sno(String student_sno) {
		this.student_sno = student_sno;
	}
	
}
