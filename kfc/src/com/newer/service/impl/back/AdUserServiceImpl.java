package com.newer.service.impl.back;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.newer.dao.impl.back.UserDAOimpl;
import com.newer.dao.inter.back.UserDAO;
import com.newer.pojo.User;
import com.newer.service.inter.back.AdUserService;
import com.opensymphony.xwork2.ActionContext;

public class AdUserServiceImpl implements AdUserService {
	@Autowired
	UserDAOimpl userDaoimpl = new UserDAOimpl();
	private UserDAO userDao;
	
	public UserDAOimpl getUserDaoimpl() {
		return userDaoimpl;
	}

	public void setUserDaoimpl(UserDAOimpl userDaoimpl) {
		this.userDaoimpl = userDaoimpl;
	}

	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	//修改管理员个人信息
	public String update_myself(User user,String qrmm) {
		if(user.getUserPassword() == null || user.getUserPassword().trim().length()==0 || user.getUserTel().trim().length()==0 || user.getUserTel() == null) {
			ServletActionContext.getRequest().setAttribute("info", "密码和电话不能为空");
			return "failed";
		}else if(user.getUserPassword().equals(qrmm) == false) {
			ServletActionContext.getRequest().setAttribute("info", "密码不一致，请重新输入");
			return "failed";
		}else if(user.getUserTel().length() != 11) {
			ServletActionContext.getRequest().setAttribute("info", "电话号码输入有误");
			return "failed";
		}else {
			//获取登录时保存的user
			User user11 = (User)ActionContext.getContext().getSession().get("user");
			//获取此时用户的id和角色以及对应的订单
			user.setId(user11.getId());
			user.setRole(user11.getRole());
			user.setOrders(user11.getOrders());
			//修改个人信息
			boolean result = userDaoimpl.modify(user);
			if(result == true) {
				//如果修改成功，重新保存session的user值
				ActionContext.getContext().getSession().put("user", user);
				return "success";
			}
			return "failed";
		}
	}

	@Override
	public boolean add(User user) {
		userDao=new UserDAOimpl();
		return userDao.add(user);
	}

	@Override
	public boolean delete(User user) {
		userDao=new UserDAOimpl();

		return userDao.delete(user);
	}

	@Override
	public boolean deleteByRole_id(int role_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modify(User user) {
		userDao=new UserDAOimpl();

		return userDao.modify(user);
	}

	@Override
	public User selectById(int id) {
		userDao=new UserDAOimpl();

		return userDao.selectById(id);
	}

	@Override
	public List<User> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> selectAllByRoleId(int role_id) {
		userDao=new UserDAOimpl();
		return userDao.selectAllByRoleId(role_id);
	}

	@Override
	public User selectByAdUserName(int role_id, String user_name) {
		// TODO Auto-generated method stub
		return null;
	}


}
