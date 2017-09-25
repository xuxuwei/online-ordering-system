package com.newer.action;
import java.util.Map;

import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.ExceptionMappings;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.pojo.Meal;
import com.newer.pojo.Order;
import com.newer.pojo.User;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Results({
		@Result(name = "success", location = "/success.jsp"),
		@Result(name = "failed", location = "/index.jsp"),
		@Result(name = "error", location = "/error.jsp") })
@ExceptionMappings({ @ExceptionMapping(exception = "java.lang.Exception", result = "error") })
public class MainpageAction extends ActionSupport implements RequestAware, SessionAware,
ApplicationAware {
private Map<String, Object> application;
private Map<String, Object> request;
private Map<String, Object> session;
private Meal meal;
private Order order;
private User user;

	public Meal getMeal() {
	return meal;
}
public Order getOrder() {
	return order;
}
public User getUser() {
	return user;
}
public void setMeal(Meal meal) {
	this.meal = meal;
}
public void setOrder(Order order) {
	this.order = order;
}
public void setUser(User user) {
	this.user = user;
}
	
	/*@Action("updateStudent")
	public String update() throws Exception {
		System.out.println("update()");
		
		boolean flag =dao.update(student);
		System.out.println(flag);
	
		if (flag) {
			return "success";
		} else {
			return "error";
		}
	}*/
	
	
	/*@Action("delete")
	public String delete() throws Exception {
		System.out.println("delete()");
		boolean flag=dao.delete();
		if (flag) {
			return "success";
		} else {
			return "toselect";
		}
	}*/

	/*@Action("select")
	public String select() throws Exception {
		System.out.println("select()");
		String message = "这个是局部变量的值";
		request.put("message",message);
		
		List<Order> result = dao.findAll();
		System.out.println(result);
		session.put("userList", result);		
		
		return "select";
	}*/
	
	

	@Override
	public void setApplication(Map<String, Object> application) {
		System.out.println("---------------------setApplication(Map<String, Object> application)");
		this.application = application;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		System.out.println("----------------------setSession(Map<String, Object> session)");
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		System.out.println("--------------------setRequest(Map<String, Object> request)");
		this.request = request;
}
	}
