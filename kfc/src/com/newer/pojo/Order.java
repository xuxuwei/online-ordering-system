package com.newer.pojo;
// default package

import java.util.Set;


/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order  implements java.io.Serializable {


    // Fields    

     private int id;
     private String orderDate;//订单时间
     private String orderAddress;//送餐地址
     private int orderTotal;//订单总额
     private String orderPayType;//支付方式
     private String Boolean;//下单是否成功（是否付款）
     private String otherRequire;//其他要求
     private User user;//用户
     // 关联多个商品
     //	与用户多对一关联
 	 private Set<Meal> meals;
    
    // Constructors

    /** default constructor */
    public Order() {
    }
    
    
	public Order(String orderDate, String orderAddress, int orderTotal,
			String otherRequire) {
		super();
		this.orderDate = orderDate;
		this.orderAddress = orderAddress;
		this.orderTotal = orderTotal;
		this.otherRequire = otherRequire;
	}


	public Order(String orderDate, String orderAddress, int orderTotal,
			String otherRequire, User user, Set<Meal> meals) {
		super();
		this.orderDate = orderDate;
		this.orderAddress = orderAddress;
		this.orderTotal = orderTotal;
		this.otherRequire = otherRequire;
		this.user = user;
		this.meals = meals;
	}


	public Order(int id, String orderDate, String orderAddress, int orderTotal,
			String orderPayType, String b, String otherRequire, User user,
			Set<Meal> meals) {
		super();
		this.id = id;
		this.orderDate = orderDate;
		this.orderAddress = orderAddress;
		this.orderTotal = orderTotal;
		this.orderPayType = orderPayType;
		Boolean = b;
		this.otherRequire = otherRequire;
		this.user = user;
		this.meals = meals;
	}


	public Order(String orderDate, String orderAddress, int orderTotal,
			String orderPayType, String b, String otherRequire, User user,
			Set<Meal> meals) {
		super();
		this.orderDate = orderDate;
		this.orderAddress = orderAddress;
		this.orderTotal = orderTotal;
		this.orderPayType = orderPayType;
		Boolean = b;
		this.otherRequire = otherRequire;
		this.user = user;
		this.meals = meals;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public int getOrderTotal() {
		return orderTotal;
	}

	public void setOrderTotal(int orderTotal) {
		this.orderTotal = orderTotal;
	}

	public String getOrderPayType() {
		return orderPayType;
	}

	public void setOrderPayType(String orderPayType) {
		this.orderPayType = orderPayType;
	}

	public String getBoolean() {
		return Boolean;
	}

	public void setBoolean(String b) {
		Boolean = b;
	}

	public String getOtherRequire() {
		return otherRequire;
	}

	public void setOtherRequire(String otherRequire) {
		this.otherRequire = otherRequire;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<Meal> getMeals() {
		return meals;
	}

	public void setMeals(Set<Meal> meals) {
		this.meals = meals;
	}

	@Override
	public String toString() {
		return "订单：" + id + " 送餐地址：" + orderAddress + " 订单总额：" + orderTotal
				+ " 付款方式：" + orderPayType + " 是否配送：" + Boolean + "  其他要求："
				+ otherRequire;
	}

    







}