package com.newer.action.back;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.newer.service.impl.back.AdRoleServiceImpl;
import com.newer.service.impl.back.AdUserServiceImpl;
import com.newer.service.inter.back.AdRoleService;
import com.newer.service.inter.back.AdUserService;
import com.opensymphony.xwork2.ActionSupport;

@Namespace(value = "/Admin")
@Action(value = "backCustomer")
@Results({ @Result(name = "customer", location = "/Admin/customer.jsp"),
		@Result(name = "addUser", location = "/Admin/addCustomer.jsp"),
		@Result(name = "addSuccess", location = "backCustomer.action",type="redirectAction"),
		@Result(name = "modifySuccess", location = "backCustomer.action",type="redirectAction"),
		@Result(name = "modifyUser", location = "/Admin/modifyCustomer.jsp"),
		@Result(name = "deleteUser", location = "backCustomer.action",type="redirectAction"),
		@Result(name="success",location="/Admin/index.jsp"),
		@Result(name = "error", location = "/index.jsp") })
@Result(name="success",location="/Admin/index.jsp")
public class UserAction extends ActionSupport implements RequestAware,SessionAware {
	private AdUserService userService;
	private AdRoleService roleService;
	private User user;
	private Role role;
	private List<User> users;
	private Map<String, Object> request;
	private Map<String, Object> session;
	public String execute() throws Exception {
		userService = new AdUserServiceImpl();
		roleService =new AdRoleServiceImpl();
		role=roleService.selectById(1);
		List<User> users = userService.selectAllByRoleId(1);
		System.out.println(users);
		request.put("users", users);
		return "customer";
	}
	
	public String modifySuccess() throws Exception{
		userService=new AdUserServiceImpl();
		roleService =new AdRoleServiceImpl();
		user=getUser();
		role=user.getRole();
		role=roleService.selectById(role.getRoleId());
		user.setRole(role);
		System.out.println(user);
		System.out.println("++++++++++++++++++++++++++++++++++");
		
		if(userService.modify(user)){
			return "modifySuccess";
		}else{
			return "error";
		}
	}
	public String addUser() throws Exception {

		return "addUser";
	}

	public String addSuccess() throws Exception {
		userService = new AdUserServiceImpl();
		roleService =new AdRoleServiceImpl();
		user=getUser();
		role=user.getRole();
		role=roleService.selectById(role.getRoleId());
		user.setRole(role);
		System.out.println("==========="+user.getRole());
		if (userService.add(user)) {
			return "addSuccess";
		} else {
			return "error";
		}
	}

	public String modifyUser() throws Exception {
		userService = new AdUserServiceImpl();
		user = userService.selectById(user.getId());
		roleService =new AdRoleServiceImpl();
		role=roleService.selectById(1);
		user.setRole(role);
		System.out.println(user+"+++++++++++"+user.getRole());
		return "modifyUser";
	}


	public String deleteUser() throws Exception {
		userService = new AdUserServiceImpl();
		user=getUser();
		user = userService.selectById(user.getId());
		System.out.println("delete++++" + user);
		if (userService.delete(user)) {
			return "deleteUser";
		} else {
			return "error";
		}
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public AdUserService getUserService() {
		return userService;
	}

	public void setUserService(AdUserService userService) {
		this.userService = userService;
	}
	
	public AdRoleService getRoleService() {
		return roleService;
	}
	public void setRoleService(AdRoleService roleService) {
		this.roleService = roleService;
	}
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
}
