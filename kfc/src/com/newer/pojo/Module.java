package com.newer.pojo;

import java.util.Set;

public class Module {
	
	private int moduleId;//模块id
	private String moduleName;//模块名
	private String url;
	 // 关联多个角色
	 private Set<Role> roles;//角色
	
	public Module() {
		super();
	}

	public Module(String moduleName, Set<Role> roles) {
		super();
		this.moduleName = moduleName;
		this.roles = roles;
	}

	public int getModuleId() {
		return moduleId;
	}

	public void setModuleId(int moduleId) {
		this.moduleId = moduleId;
	}

	public String getModuleName() {
		return moduleName;
	}

	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "Module [moduleId=" + moduleId + ", moduleName=" + moduleName
				+ ", url=" + url  + "]";
	}

	
	
	
	
	
}
