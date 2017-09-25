package com.newer.action.back;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import com.newer.dao.impl.back.UserDAOimpl;
import com.newer.pojo.User;
import com.newer.service.impl.back.AdLoginServicelmpl;
import com.opensymphony.xwork2.ActionSupport;

@Namespace(value = "/Admin")
@Results({ @Result(name = "success", location = "/Admin/index.jsp"),
		@Result(name = "failed", location = "/Admin/login.jsp") })
public class LoginAction extends ActionSupport {
	private User user;
	UserDAOimpl userDaoimpl = new UserDAOimpl();
	AdLoginServicelmpl adLoginServicelmpl = new AdLoginServicelmpl();
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	@Action("loginadm")
	//管理员登录
	public String login() {
		User user1 = userDaoimpl.selectByName(user);
		System.out.println(user1);
		String result = adLoginServicelmpl.login(user1);
		return result;		
	}

	@Override
	public String execute() throws Exception {
		System.out.println("执行了execute()");
		return super.execute();
	}

}
