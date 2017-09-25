package com.newer.service.impl;

import java.util.List;

import com.newer.dao.impl.UserDAO;
import com.newer.pojo.User;
import com.newer.service.inter.UserService;

public class UserServiceImpl implements UserService{
	private UserDAO userdao;
	
	public UserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAO userdao) {
		this.userdao = userdao;
	}

	/**
	 * 是否保存用户
	 */
	public boolean save(User user) {
		
		return false;
	}

	/**
	 * 是否删除用户
	 */
	public boolean delete(User user) {
		
		return false;
	}

	/**
	 * 是否更新用户
	 */
	public boolean update(User user) {
		
		return false;
	}

	/**
	 * 根据Id查询用户
	 */
	public User selectById(User user) {
	
		return null;
	}

	/**
	 * 根据登录选择用户
	 */
	public User selectByLogin(User user) {
		
		return null;
	}

	/**
	 * 查询所有用户
	 */
	public List<User> selectAll() {
		
		return null;
	}

	/**
	 * 根据名字查询用户
	 */
	public User selectByUserName(User user) {
		
		return null;
	}

}
