package com.newer.action.back;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.newer.dao.inter.back.RoleDAO;
import com.newer.pojo.Role;
import com.newer.service.inter.back.AdRoleService;
import com.opensymphony.xwork2.ActionSupport;

public class RoleAction extends ActionSupport{
	@Autowired
	private AdRoleService roleService;
	@Autowired
	private Role role;
	public AdRoleService getRoleService() {
		return roleService;
	}
	public void setRoleService(AdRoleService roleService) {
		this.roleService = roleService;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
}
