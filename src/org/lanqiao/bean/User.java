package org.lanqiao.bean;

public class User {

	private int id;
	private String account;
	private String password;
	private String name;
	private String email;
	private String phone;
	private int vip;
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", password=" + password + ", name=" + name + ", email="
				+ email + ", phone=" + phone + ", vip=" + vip + "]";
	}
	public User() {
		
	}
	public User(int id, String account, String password, String name, String email, String phone, int vip) {
		
		this.id = id;
		this.account = account;
		this.password = password;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.vip = vip;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getVip() {
		return vip;
	}
	public void setVip(int vip) {
		this.vip = vip;
	}
	
}
