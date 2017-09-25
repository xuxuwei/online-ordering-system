package com.newer.dao.impl;

import java.util.List;

import com.newer.pojo.Meal;

public class TestMeal {
	public static void main(String[] args) {
	MealDAO dao=new MealDAO();
/*	List<Meal> results=dao.findByMealType("75");*/
	Meal m = new Meal();
	m.setId(1);
	m.setMealName("12");
	List<Meal> results=dao.findByCondition(m);
	 for (Meal mm : results) {
		 System.out.println(mm);
		 }
	 }}
