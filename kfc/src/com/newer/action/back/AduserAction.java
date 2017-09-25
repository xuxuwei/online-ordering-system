package com.newer.action.back;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.dao.impl.back.UserDAOimpl;
import com.newer.pojo.Meal;
import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.newer.service.impl.back.AdLoginServicelmpl;
import com.newer.service.impl.back.AdRoleServiceImpl;
import com.newer.service.impl.back.AdUserServiceImpl;
import com.newer.service.inter.back.AdRoleService;
import com.newer.service.inter.back.AdUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Namespace(value="/Admin")
@Action(value="backAdmin")
@Results({

	@Result(name = "admin", location = "/Admin/Admin.jsp"),
	@Result(name="addUser",location="/Admin/addAdmin.jsp"),
	@Result(name="modifyUser",location="/Admin/modifyAdmin.jsp"),
	@Result(name="deleteUser",location = "backAdmin.action",type="redirectAction" ),
	@Result(name = "failed", location = "/Admin/setMyself.jsp"),
	@Result(name = "success", location = "/Admin/index.jsp"),
	@Result(name = "addSuccess", location = "backAdmin.action",type="redirectAction" ),
	@Result(name = "modifySuccess", location = "backAdmin.action",type="redirectAction" ),
	@Result(name = "error", location = "/index.jsp") })
public class AduserAction extends ActionSupport implements RequestAware,SessionAware{	
	private AdUserService userService;
	private AdRoleService roleService;
	private User user;
	private Role role;
	private List<User> users;
	private List<User> senders;
	private List<User> salers;
	private List<User> fixers;
	private List<Role> roles;
	private Map<String, Object> request;
	private Map<String, Object> session;
	AdUserServiceImpl adUserServiceImpl = new AdUserServiceImpl();
	

	/*
	 * 修改管理员的个人信息
	 * 
	 */
	@Action("myself")
	public String update_myself() {
		//获取确认密码的值
		String againPass = ServletActionContext.getRequest().getParameter("againPass");
		String result = adUserServiceImpl.update_myself(user, againPass);
		return result;

	}

	public String execute() throws Exception{
		userService = new AdUserServiceImpl();
		
		List<User> senders = userService.selectAllByRoleId(3);
		List<User> sales = userService.selectAllByRoleId(4);
		List<User> admins = userService.selectAllByRoleId(2);

		System.out.println(users);
		request.put("admins", admins);
		request.put("senders", senders);
		request.put("sales", sales);
		return "admin";
	}
	public String modifySuccess() throws Exception{
		userService=new AdUserServiceImpl();
		roleService =new AdRoleServiceImpl();
		user=getUser();
		role=user.getRole();
		role=roleService.selectById(role.getRoleId());
		user.setRole(role);
		System.out.println("modifys==========="+user.getRole().getRoleName());
		if(userService.modify(user)){
			return "modifySuccess";
		}else{
			return "error";
		}
	}
	public String addUser() throws Exception {
		roleService =new AdRoleServiceImpl();

		List<Role> roles=roleService.selectAll();
		request.put("roles", roles);

		return "addUser";
	}

	public String addSuccess() throws Exception {
		userService = new AdUserServiceImpl();
		roleService =new AdRoleServiceImpl();
		user=getUser();
		role=user.getRole();
		role=roleService.selectById(role.getRoleId());
		user.setRole(role);
		System.out.println("==========="+user.getRole().getRoleName());
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
		role=roleService.selectById(2);
		user.setRole(role);
		System.out.println(user+"+++++++++++"+user.getRole());
		return "modifyUser";
	}


	public String deleteUser() throws Exception {
		userService = new AdUserServiceImpl();
		user = userService.selectById(user.getId());
		System.out.println("delete++++" + user);
		if (userService.delete(user)) {
			return "deleteUser";
		} else {
			return "error";
		}
	}
	public AdUserService getUserService() {
		return userService;
	}
	public void setUserService(AdUserService userService) {
		this.userService = userService;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
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
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public Map<String, Object> getRequest() {
		return request;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public AdUserServiceImpl getAdUserServiceImpl() {
		return adUserServiceImpl;
	}
	public void setAdUserServiceImpl(AdUserServiceImpl adUserServiceImpl) {
		this.adUserServiceImpl = adUserServiceImpl;
	}

	public List<User> getSenders() {
		return senders;
	}

	public void setSenders(List<User> senders) {
		this.senders = senders;
	}

	public List<User> getSalers() {
		return salers;
	}

	public void setSalers(List<User> salers) {
		this.salers = salers;
	}

	public List<User> getFixers() {
		return fixers;
	}

	public void setFixers(List<User> fixers) {
		this.fixers = fixers;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
	
	

}
