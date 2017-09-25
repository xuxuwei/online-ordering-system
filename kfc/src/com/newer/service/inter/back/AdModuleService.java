package com.newer.service.inter.back;

import java.util.List;

import com.newer.pojo.Module;
import com.newer.pojo.Role;



public interface AdModuleService {
	
	/**
	 * 排序算法
	 */

	
	/**
	 * 添加模块
	 * @return
	 */
	public boolean add(Module module);
	
	/**
	 * 添加模块给某个部门角色
	 */
	public String addMoudle(String addm,String[] checked);
	
	/**
	 * 根据管理员身份查询模块
	 */
	public String selectModuleByadmin(String rolename);
	/**
	 * 删除模块
	 * @param module
	 * @return
	 */

	public boolean delete(Module module);
	
	/**
	 * 删除模块管理里的模块
	 */
	public String deleteModule(String mid);
	
	/**
	 * 删除不同管理员的权限-管理员信息管理
	 */
	public String deleteModuleByAd(String mid);
	/**
	 * 根据id查询模块
	 * @return
	 */
	public  Module selectById(int id);
	
	/**
	 * 查询所有的模块
	 * @return
	 */
	public  List<Module> selectAll();
	
	/**
	 * 修改模块
	 * @param id
	 * @return
	 */
	public boolean modify(Module module);
	
	/**
	 * 根据角色修改模块
	 * @param user
	 * @return
	 */
	public boolean modifyByrole(Role role);
}
