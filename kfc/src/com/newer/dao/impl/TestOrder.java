package com.newer.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.newer.pojo.Meal;
import com.newer.pojo.Order;
import com.newer.pojo.User;

public class TestOrder {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub

		Order o= new Order();
		o.setOrderAddress("dsadsa");
		o.setOtherRequire("kjsahdaskhd");
		User user=new User();
		user.setId(6);;
		Set<Meal> meals=new HashSet<Meal>();
		Set<Meal> ms=new HashSet<Meal>();
		Meal meal= new Meal(1, "1", "美味汉堡", "12", "1", 10, "2016-1-1", "images/breakfast_01_02.png");
		meals.add(meal);
		ms=meals;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
	    System.out.println(date);
        o.setOrderDate((String)date);
		o.setMeals(ms);
		o.setUser(user);
		System.out.println(o);
		OrderDAO dao=new OrderDAO();
		boolean flag= dao.save(o);
		System.out.println(flag?"成功":"失败");
	}

}
