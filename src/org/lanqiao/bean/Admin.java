package org.lanqiao.bean;

public class Admin {
	private int id;
	private String name;
	private String pass;
	private String phone;
	
	public Admin() {
		super();
	}
	
	public Admin(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}

	public Admin(int id, String name, String pass, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.phone = phone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", pass=" + pass + ", phone=" + phone + "]";
	}

}
