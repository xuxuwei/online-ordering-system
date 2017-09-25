package com.newer.action.back;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import com.newer.dao.impl.back.ModuleDAOimpl;
import com.newer.dao.impl.back.RoleDAOimpl;
import com.newer.dao.impl.back.UserDAOimpl;
import com.newer.pojo.Module;
import com.newer.pojo.Role;
import com.newer.service.impl.back.AdModuleServiceImpl;
import com.newer.service.inter.back.AdModuleService;
import com.newer.service.inter.back.AdRoleService;
import com.newer.util.CommonTools;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Namespace(value="/Admin")
@Action(value="backModule")
@Results({
	@Result(name = "Module", location = "/Admin/grants.jsp"),
	@Result(name="addModule",location="/Admin/addModule.jsp"),
	@Result(name="success",location="backModule!toPart.action", type="redirectAction"),
	@Result(name="failed",location="backModule!toPart.action", type="redirectAction"),
	@Result(name="modifyModule",location="/Admin/modifyModule.jsp"),
	@Result(name="selectModule",location="/Admin/myGrants.jsp"),
	@Result(name="deleteModule",location="/Admin/deleteModule.jsp"),
	@Result(name="partsuccess",location="/Admin/grants.jsp"),
	@Result(name = "error", location = "/index.jsp") })
public class ModuleAction extends ActionSupport{

	@Autowired
	private AdModuleService moduleService;
	@Autowired
	private Module module;
	private Role role;
	private int newPage;

	public ModuleAction() {
		newPage = 1; 
	}
	public int getNewPage() {
		return newPage;
	}
	public void setNewPage(int newPage) {
		this.newPage = newPage;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}

	RoleDAOimpl roleDAOimpl = new RoleDAOimpl();
	UserDAOimpl userDAOimpl = new UserDAOimpl();
	ModuleDAOimpl moduleDAOimpl = new ModuleDAOimpl();
	AdModuleServiceImpl adModuleServiceImpl = new AdModuleServiceImpl();

	public AdModuleService getModuleService() {
		return moduleService;
	}
	public void setModuleService(AdModuleService moduleService) {
		this.moduleService = moduleService;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	public String execute() throws Exception{

		return "Module";
	}
	
	
	/**
	 * 添加模块给某个部门（管理员）
	 * @return
	 * @throws Exception
	 */
	public String addModule() throws Exception{
		String addModule = ServletActionContext.getRequest().getParameter("addModule");
		//获取复选框的值
		String[] checkbox = ServletActionContext.getRequest().getParameterValues("bumen");
		String result = adModuleServiceImpl.addMoudle(addModule, checkbox);
		return result;
	}
	
	
	/**
	 * 删除模块信息管理的模块
	 * @return
	 * @throws Exception
	 */
	public String deleteModule() throws Exception{
		//获取模块id
		String idstr = ServletActionContext.getRequest().getParameter("id");
		String result = adModuleServiceImpl.deleteModule(idstr);
		return result;
	}
	
	
	/**
	 * 删除某个（部门）管理员角色的某个模块权限
	 * @return
	 * @throws Exception
	 */
	public String deleteModuleByAd() throws Exception{
		//获取模块id
		String moduleid = ServletActionContext.getRequest().getParameter("id");
		String result = adModuleServiceImpl.deleteModuleByAd(moduleid);
		return result;
	}
	
	
	/**
	 * 根据不同的管理员查询他们所拥有的权限
	 */
	public String selectModuleByadmin() throws Exception{
		//获取管理员角色名
		String rolename = ServletActionContext.getRequest().getParameter("role_name");
		ActionContext.getContext().getSession().put("r_name",rolename);
		String result = adModuleServiceImpl.selectModuleByadmin(rolename);
		return result;
	}

	/**
	 * 模块信息管理分页
	 * @return
	 * @throws Exception
	 */
	public String toPart() throws Exception{
		Map<String, Object>session= (Map<String, Object>)ActionContext.getContext().getSession();
		@SuppressWarnings("unchecked")
		List<Module> list =(List<Module>) session.get("AllmoduleList");
		//获得当前页面的5条数据
		@SuppressWarnings("unchecked")
		Map<String, Object> request=(Map<String, Object>)ActionContext.getContext().get("request");
		List<Module> nowList = CommonTools.getElementsFromList(
				list, newPage, 6);
		//将当前页面的数据放入到request中，传递到前台页面显示
		request.put("nowList", nowList);
		//获取当前页面剩余的页码数
		int pageNumber = CommonTools.getRemainPage(list, newPage, 6);
		request.put("newPage", newPage);
		List<Integer> pageNumberList = CommonTools.getPageNumberList(newPage, pageNumber);
		//将剩余页码数传递到前台
		request.put("pageNumber", pageNumber);
		//将页码号的列表传递到前台
		request.put("pageNumberList", pageNumberList);
		return "partsuccess";
	}

}













