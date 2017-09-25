package com.newer.dao.inter.back;

import java.util.List;

import com.newer.pojo.Meal;

public interface MealDAO {
	/**
	 * 增加商品
	 * @param m
	 * boolean 类型
	 */	
	public boolean add(Meal m);
	
	/**
	 * 删除商品
	 * @param m
	 * boolean 类型
	 */	
	public boolean delete(Meal m);
	
	/**
	 * 修改商品
	 */
	public boolean modify(Meal m);
	
	/**
	 * 根据商品id查询商品
	 * @param id
	 * @return Meal
	 */
	public Meal selectById(int id);
	
	/**
	 * 查询所有商品
	 * @return List<Meal>
	 */
	public List<Meal> selectAll();
	
	/**
	 * 根据商品名查询商品
	 * @param name
	 * @return Meal
	 */
	public Meal selectByName(String name);
	
	/**
	 * 查询所属类别商品
	 * @return List<Meal>
	 */
	public List<Meal> selectBytype(String type);
}
