package com.yidu.bean;

public class User {
	private int userid;
	private String userName;
	private String userPass;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", userName=" + userName + ", userPass=" + userPass + "]";
	}
	
	
	
}
