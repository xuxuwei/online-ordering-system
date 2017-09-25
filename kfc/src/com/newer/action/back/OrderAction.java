package com.newer.action.back;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.RequestAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.newer.pojo.Order;
import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.newer.service.impl.back.AdOrderServiceImpl;
import com.newer.service.impl.back.AdUserServiceImpl;
import com.newer.service.inter.back.AdOrderService;
import com.newer.service.inter.back.AdUserService;
import com.opensymphony.xwork2.ActionSupport;

@Namespace(value = "/Admin")
@Action(value = "backOrder")
@Results({ @Result(name = "Order", location = "/Admin/order.jsp"),
		@Result(name = "sendOrder",location = "backOrder.action",type="redirectAction" ),
		@Result(name = "addOrder", location = "/Admin/addOrder.jsp"),
		@Result(name = "addSuccess", location = "backOrder.action",type="redirectAction" ),
		@Result(name = "modifyOrder", location = "/Admin/modifyOrder.jsp"),
		@Result(name = "modifySuccess", location = "backOrder.action",type="redirectAction" ),
		@Result(name = "deleteOrder", location = "/Admin/index.jsp"),
		@Result(name = "error", location = "/Admin/index.jsp") })
public class OrderAction extends ActionSupport implements RequestAware {
	@Autowired
	private AdOrderService orderService;
	@Autowired
	private Order order;
	private User user;
	private Role role;
	private AdUserService userService;
	private List<Order> orders;
	private Map<String, Object> request;

	public String execute() throws Exception {
		orderService = new AdOrderServiceImpl();
		List<Order> orders = orderService.selectAll();

		System.out.println(orders);
		request.put("orders", orders);
		return "Order";
	}

	public String modifyOrder() throws Exception {
		orderService = new AdOrderServiceImpl();
		order = orderService.selectById(order.getId());
		System.out.println("modifyOrder+++++" + order);
		return "modifyOrder";
	}

	public String modifySuccess() throws Exception {
		orderService = new AdOrderServiceImpl();
		order = getOrder();
		System.out.println("modifyOrder============" + order);
		System.out.println(order.getBoolean());
		if (orderService.modify(order)) {
			return "modifySuccess";
		} else {
			return "error";
		}
	}

	public String deleteOrder() throws Exception {
		orderService = new AdOrderServiceImpl();
		order = orderService.selectById(order.getId());
		if (orderService.delete(order)) {
			return "deleteOrder";
		} else {
			return "error";
		}
	}

	public String addSuccess() throws Exception {
		orderService = new AdOrderServiceImpl();
		userService = new AdUserServiceImpl();
		user = getUser();
		System.out.println(user);
		user.getRole().setRoleId(1);
		System.out.println(user.getRole());
		userService.add(user);
		if (orderService.add(order)) {
			return "addSuccess";
		} else {
			return "error";
		}
	}

	public String sendOrder() throws Exception {
		orderService = new AdOrderServiceImpl();
		order = getOrder();
		
		orders=orderService.SendOrderById(order.getId());
		request.remove("orders");
		request.put("orders",orders);
		return "sendOrder";
	}

	public String addOrder() throws Exception {
		return "addOrder";
	}

	public AdOrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(AdOrderService orderService) {
		this.orderService = orderService;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order Order) {
		this.order = Order;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public AdUserService getUserService() {
		return userService;
	}

	public void setUserService(AdUserService userService) {
		this.userService = userService;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}
