package com.newer.pojo;

// default package

import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User {

	private int id;//用户id
	private String userName;//用户名
	private String userTel;//用户电话
	private String userEmail;//用户邮箱
	private String userPassword;//用户密码
	private int roleId;//角色id
	private Set<Order> orders;//订单
	private Role role;//角色
	//与角色多对一关联
	//与订单一对多关联
	public User() {
		super();
	}
		
	public User(String userName, String userTel, String userEmail,
			String userPassword, int roleId, Set<Order> orders, Role role) {
		super();
		this.userName = userName;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.roleId = roleId;
		this.orders = orders;
		this.role = role;
	}



	public User(int id, String userName, String userTel, String userEmail,
			String userPassword, int roleId, Set<Order> orders, Role role) {
		super();
		this.id = id;
		this.userName = userName;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.roleId = roleId;
		this.orders = orders;
		this.role = role;
	}



	public User(String userName, String userTel, String userEmail,
			String userPassword, Role role) {
		super();
		this.userName = userName;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.role = role;
	}

	public User(String userName, String userTel, String userEmail,
			String userPassword) {
		super();
		this.userName = userName;
		this.userTel = userTel;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public int getroleId() {
		return roleId;
	}

	public void setroleId(int roleId) {
		this.roleId = roleId;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", userTel="
				+ userTel + ", userEmail=" + userEmail + ", userPassword="
				+ userPassword + "]";
	}

	
	
	
}
