package com.newer.service.impl.back;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.enterprise.inject.New;

import com.mysql.jdbc.Connection;
import com.newer.dao.impl.back.ModuleDAOimpl;
import com.newer.pojo.Module;
import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.newer.service.inter.back.AdLoginService;

import com.opensymphony.xwork2.ActionContext;

public class AdLoginServicelmpl implements AdLoginService {
	ModuleDAOimpl moduleDAOimpl = new ModuleDAOimpl();
	@Override
	public String login(User user){
		// 4、根据结果进行跳转
		if (user != null) {
			// 判定此用户是否为管理员
			if (user.getRole().getRoleId() != 1) {
				// 确认为管理员
				// 保存入session中
				ActionContext.getContext().getSession().put("user", user);
				Role role = user.getRole();
				System.out.println(role);
				Set<Module> mList = role.getModule();
				List<Module> list = new ArrayList<Module>(mList);
				//排序
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
				
				for (Module module1 : list) {
					System.out.println("编号："+module1.getModuleId());
				}
				ActionContext.getContext().getSession()
						.put("moduleList", list);
				//保存所有的模块信息
				List<Module> m_list = moduleDAOimpl.selectAll();
				ActionContext.getContext().getSession()
				.put("AllmoduleList", m_list);
				
				return "success";// success
			} else {
				// 登录失败(重定向)
				return "failed";
			}
		} else {
			// 登录失败(重定向)
			return "failed";
		}
	}

}
