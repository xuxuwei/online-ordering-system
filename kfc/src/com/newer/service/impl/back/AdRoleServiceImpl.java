package com.newer.service.impl.back;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.newer.dao.impl.back.RoleDAOimpl;
import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.newer.service.inter.back.AdRoleService;

public class AdRoleServiceImpl implements AdRoleService {
	@Autowired
	private RoleDAOimpl roleDao;
	
	public RoleDAOimpl getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDAOimpl roleDao) {
		this.roleDao = roleDao;
	}

	@Override
	public boolean add(Role role) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Role role) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Role selectById(int id) {
		roleDao=new RoleDAOimpl();
		
		return roleDao.selectById(id);
	}

	@Override
	public List<Role> selectAll() {
		roleDao=new RoleDAOimpl();
		return roleDao.selectAll();
	}

	@Override
	public boolean modify(Role role) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
