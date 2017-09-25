package com.newer.service.impl.back;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.newer.dao.impl.back.MealDAOimpl;
import com.newer.dao.inter.back.MealDAO;
import com.newer.pojo.Meal;
import com.newer.service.inter.back.AdMealService;

public class AdMealServiceImpl implements AdMealService {
	@Autowired
	private MealDAO MealDAO;
	
	public MealDAO getMealDAO() {
		return MealDAO;
	}

	public void setMealDAO(MealDAO MealDAO) {
		this.MealDAO = MealDAO;
	}

	@Override
	public boolean add(Meal m) {
		MealDAO=new MealDAOimpl();
		return MealDAO.add(m);
	}

	@Override
	public boolean delete(Meal m) {
		MealDAO=new MealDAOimpl();
		return MealDAO.delete(m);
	}

	@Override
	public boolean modify(Meal m) {
		MealDAO=new MealDAOimpl();
		return MealDAO.modify(m);
	}

	@Override
	public Meal selectById(int id) {
		MealDAO mealdao=new MealDAOimpl();
		return mealdao.selectById(id);
	}

	@Override
	public List<Meal> selectAll() {
		MealDAO mealdao=new MealDAOimpl();
		List<Meal> meals=mealdao.selectAll();
		return meals;
	}

	@Override
	public Meal selectByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Meal> selectBytype(String type) {
		MealDAO mealdao=new MealDAOimpl();
		List<Meal> meals=mealdao.selectBytype(type);
		return meals;
	}



}
