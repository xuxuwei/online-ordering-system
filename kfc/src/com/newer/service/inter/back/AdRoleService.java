package com.newer.service.inter.back;

import java.util.List;

import com.newer.pojo.Role;
import com.newer.pojo.User;



public interface AdRoleService {
	
	/**
	 * 添加角色
	 * @return
	 */
	public boolean add(Role role);
	
	/**
	 * 删除角色
	 * @param role
	 * @return
	 */
	public boolean delete(Role role);
	
	/**
	 * 根据id查询角色
	 * @return
	 */
	public  Role selectById(int id);
	
	/**
	 * 查询所有的角色
	 * @return
	 */
	public  List<Role> selectAll();
	
	/**
	 * 修改角色
	 * @param id
	 * @return
	 */
	public boolean modify(Role role);
	
}
