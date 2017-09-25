package com.newer.dao.inter.back;

import com.newer.pojo.Module;

public interface RoleModuleDAO {
	
	/**
	 * 根据模块id删除角色模块
	 * @param module
	 * @return
	 */
	public boolean delete(int mid);

}
