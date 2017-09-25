package com.newer.service.impl.back;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.enterprise.inject.New;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.newer.dao.impl.back.ModuleDAOimpl;
import com.newer.dao.impl.back.RoleDAOimpl;
import com.newer.dao.impl.back.UserDAOimpl;
import com.newer.pojo.Module;
import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.newer.service.inter.back.AdModuleService;
import com.opensymphony.xwork2.ActionContext;

public class AdModuleServiceImpl implements AdModuleService {
	@Autowired
	private ModuleDAOimpl moduleDao;
	
	UserDAOimpl userDAOimpl = new UserDAOimpl();
	ModuleDAOimpl moduleDAOimpl = new ModuleDAOimpl();
	RoleDAOimpl roleDAOimpl = new RoleDAOimpl();
	public ModuleDAOimpl getModuleDao() {
		return moduleDao;
	}

	public void setModuleDao(ModuleDAOimpl moduleDao) {
		this.moduleDao = moduleDao;
	}

	@Override
	public boolean add(Module module) {
		// TODO Auto-generated method stub
		return false;
	}

	
	

	//对模块的排序算法
	public static void m_sort(List<Module> list) {
		Collections.sort(list, new Comparator<Module>() {
			@Override
			public int compare(Module o1, Module o2) {
				if(o1.getModuleId() > o2.getModuleId()) {
					return 1;
				}
				if(o1.getModuleId() == o2.getModuleId()) {
					return 0;
				}
				return -1;
			}
		});
	}

	@Override
	//根据管理员身份查询所拥有的模块
	public String selectModuleByadmin(String rolename) {
		if(rolename != null && !"".equals(rolename)) {
			Role role = new Role();
			role.setRoleName(rolename);
			Role role1 = roleDAOimpl.selectByName(role);
			ActionContext.getContext().getSession().put("r_id", role1.getRoleId());
			Set<Module> buto_moduleSet = role1.getModule();
			List<Module> buto_moduleList = new ArrayList<Module>(buto_moduleSet);
			//排序
			Collections.sort(buto_moduleList, new Comparator<Module>() {
				@Override
				public int compare(Module o1, Module o2) {
					if(o1.getModuleId() > o2.getModuleId()) {
						return 1;
					}
					if(o1.getModuleId() == o2.getModuleId()) {
						return 0;
					}
					return -1;
				}
			});
			
			ActionContext.getContext().getSession().put("buto_moduleList", buto_moduleList);
			return "selectModule";
		}else {
			
			return "selectModule";
		}
	}

	@Override
	//添加模块给某个部门
	public String addMoudle(String addm, String[] checked) {
		int rid;
		Set<Role> rSet = new HashSet<Role>();
		if(addm != null || !"".equals(addm)) {
			Module module = new Module();
			module.setModuleName(addm);
			module.setUrl("index.jsp");
			
			for(String c : checked) {
				rid = Integer.parseInt(c);
				Role role = roleDAOimpl.selectById(rid);
				rSet.add(role);

			}
			module.setRoles(rSet);
			moduleDAOimpl.add(module);
			
			//更新session中的moduleList
			User user = (User)ActionContext.getContext().getSession().get("user");
			//更新，重新查询
			User user1 = userDAOimpl.selectById(user.getId());
			Role role = user1.getRole();
			System.out.println(role);
			Set<Module> mList = role.getModule();
			List<Module> list = new ArrayList<Module>(mList);
			//排序
			this.m_sort(list);
			//moduleList为此时登录的管理者所拥有的模块，AllmoduleList为所有模块
			ActionContext.getContext().getSession().put("moduleList", list);
			//更新所有的模块信息
			List<Module> m_list = moduleDAOimpl.selectAll();
			ActionContext.getContext().getSession()
			.put("AllmoduleList", m_list);
			
			return "success";
		}else {
			ServletActionContext.getRequest().setAttribute("add_mod_info", "模块名不能为空");
			return "addModule";
		}
	}

	@Override
	public boolean delete(Module module) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	@Override
	//删除模块管理里的模块
	public String deleteModule(String mid) {
		int id = 0;
		if(mid !=null && !"".equals(mid)) {
			id = Integer.parseInt(mid);
			Module module = moduleDAOimpl.selectById(id);
			System.out.print(module);
			
			boolean result = moduleDAOimpl.delete(module);
			if(result) {
				ServletActionContext.getRequest().setAttribute("dele_mou_info", "恭喜，删除成功");
				//更新session中的moduleList
				User user = (User)ActionContext.getContext().getSession().get("user");
				//更新，重新查询
				User user1 = userDAOimpl.selectById(user.getId());
				Role role = user1.getRole();
				System.out.println(role);
				Set<Module> mList = role.getModule();
				List<Module> list = new ArrayList<Module>(mList);
				this.m_sort(list);
				
				ActionContext.getContext().getSession().put("moduleList", list);
				//更新所有的模块信息
				List<Module> m_list = moduleDAOimpl.selectAll();
				ActionContext.getContext().getSession()
				.put("AllmoduleList", m_list);
				
				return "success";
			}else {
				ServletActionContext.getRequest().setAttribute("dele_mou_info", "Sorry,删除失败");
				return "failed";
			}
		}else {
			ServletActionContext.getRequest().setAttribute("dele_mou_info", "Sorry,删除失败");
			return "failed";
		}
		
		
	}
	
	
	
	@Override
	//删除不同管理员的权限-管理员信息管理
	public String deleteModuleByAd(String mid) {

		if(mid !=null && !"".equals(mid)) {
			//获取moduleId
			int id = Integer.parseInt(mid);
			//获取roleId
			Object  orid = ActionContext.getContext().getSession().get("r_id");
			String rid = String.valueOf(orid);
			int r_id = Integer.parseInt(rid);
			//执行删除
			boolean flat = moduleDAOimpl.delete_m_r(r_id, id);													
			//移除完之后，重新保存session
			Role role = roleDAOimpl.selectById(r_id);
			Set<Module> mList = role.getModule();
			List<Module> list = new ArrayList<Module>(mList);
			//排序
			this.m_sort(list);
			//更新界面
			User user = (User)ActionContext.getContext().getSession().get("user");
				User user1 = userDAOimpl.selectById(user.getId());
				Role role1 = user1.getRole();
				System.out.println(role1);
				Role role2 = roleDAOimpl.selectById(role1.getRoleId());
				Set<Module> mList1 = role2.getModule();
				List<Module> list1 = new ArrayList<Module>(mList1);
				this.m_sort(list1);
				
				ActionContext.getContext().getSession().put("moduleList",list1);
				ActionContext.getContext().getSession().put("buto_moduleList", list);
		}		
		return "selectModule";
	}
	
	
	public String modifyModule() throws Exception{

		return "modifyModule";
	}

	@Override
	public Module selectById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Module> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean modify(Module module) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modifyByrole(Role role) {
		// TODO Auto-generated method stub
		return false;
	}



}
