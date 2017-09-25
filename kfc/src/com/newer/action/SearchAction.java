
package com.newer.action;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.ExceptionMappings;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.dao.impl.MealDAO;
import com.newer.dao.impl.OrderDAO;
import com.newer.dao.impl.UserDAO;
import com.newer.pojo.Meal;
import com.newer.pojo.Order;
import com.newer.pojo.Role;
import com.newer.pojo.User;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Results({
		@Result(name = "success", location = "/panini.jsp"),
		@Result(name = "success1", location = "/afterlogin/registersuccess.jsp"),
		@Result(name = "success2", location = "/afterlogin/registerfail.jsp"),
		@Result(name = "success3", location = "/fruits.jsp"),
		@Result(name = "success4", location = "/cart0.jsp"),
		@Result(name = "success5", location = "/afterlogin/unlogin.jsp"),
		@Result(name = "success6", location = "/afterlogin/pay.jsp"),
		@Result(name = "success7", location = "/afterlogin/paysuccess.jsp"),
		@Result(name = "success8", location = "/afterlogin/payzfb.jsp"),
		@Result(name = "success9", location = "/afterlogin/person.jsp"),
		@Result(name = "success10", location = "/afterlogin/update1.jsp"),
		@Result(name = "success11", location = "/afterlogin/updatesuccess.jsp"),
		@Result(name = "success12", location = "/afterlogin/personfail.jsp"),
		@Result(name = "failed", location = "/index.jsp"),
		@Result(name = "error", location = "/error.jsp") })
@ExceptionMappings({ @ExceptionMapping(exception = "java.lang.Exception", result = "error") })
public class SearchAction extends ActionSupport implements RequestAware, SessionAware,
ApplicationAware {
private Map<String, Object> application;
private Map<String, Object> request;
private Map<String, Object> session;
private Meal meal;
private Order order;
private User user;
private String pay;

public String getPay() {
	return pay;
}
public void setPay(String pay) {
	this.pay = pay;
}
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
	
MealDAO dao= new MealDAO();
UserDAO dao2= new UserDAO();
OrderDAO dao3= new OrderDAO();

@Action("ss")
public String add() throws Exception {
	System.out.println(meal.getMealName());
	System.out.println("aaaaaaaaa");
	List<Meal> results = dao.findByCondition(meal);
	System.out.println("aaapppppppppppppppppaaaaaa");
	request.put("result", results);
//	for(Meal meal : results)
//	{
//	System.out.println(meal);
//	}
	System.out.println("aaaahjgjjhjhaaaaa");
	return "success";
}
	
@Action("register")
public String register() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaaaaa");
	
	user.setRole(new Role(1));
	List<User> results= dao2.findByCondition(user);
	boolean flag=false;
	if (results.size()!=0) {
		return "success2";
	}else {
	  flag = dao2.save(user);
	System.out.println("aaapppppppppppppppppaaaaaa");
	if (flag) {
		return "success1";
	} else {
		return "success2";
	}
	}
}

@SuppressWarnings("unchecked")
@Action("buy")
public String buy() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaaaaa");
	System.out.println(session.get("orders"));
	Set<Meal> results = new HashSet<Meal>();
	if (session.get("orders") != null) {
		results=(Set<Meal>) session.get("orders");
	}
	System.out.println(results);
	int price =0;
	if (session.get("price") != null) {
			price=(Integer) session.get("price");
	}
	System.out.println(session.get("price"));
	Meal m=dao.findById(meal.getId());
	/*Meal mm=new Meal(m.getId(),m.getMealName(),m.getMealIntroduce(),m.getMealPrice(),m.getMealType(),m.getMealAmount(),m.getSaleTime(),m.getImages_path());
	System.out.println(mm);*/
	price=price+Integer.parseInt(m.getMealPrice());
	results.add(m);
	session.put("orders", results);
	session.put("price", price);
	int i;
	if (session.get("cart") != null) {
		i=(Integer) session.get("cart")+1;
		session.remove("cart");
		session.put("cart", i);
	}
	else {session.put("cart", 1);
	}
	return "success3";
}
	


@Action("cart")
public String cart() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	return "success4";
	
}

@SuppressWarnings("unchecked")
@Action("submit")
public String submit() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7546467867456465786aaa");
	if (session.get("user") != null) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(new Date());
		System.out.println(date);
		order.setOrderDate(date);
		Set<Meal> results=new HashSet<Meal>();
		results= (Set<Meal>)( session.get("orders"));
		order.setMeals(results);
		System.out.println(session.get("user"));
		User user1=(User)session.get("user");
		/*User user2=new User();
		user2.setId(user1.getId());*/
		order.setUser(user1);
		order.setOrderTotal((Integer) session.get("price"));
		order.setBoolean("未支付");
		System.out.println("submit:" + order);
		boolean flag = dao3.save(order);
		System.out.println(flag);
		if (flag==true) {
			List<Order> orders=(List<Order>) dao3.findByExample(order);
			Order order1=orders.get(0);
			session.put("order", order1);
			session.remove("cart");
		    session.remove("price");
		    session.remove("orders");
		    return "success6";
		}else {
			return "success4";
		}
	}else {
		return "success5";
	}	
}


@Action("pay")
public String pay() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7paypaypaya");
	if (pay.equals("0")) {
		Order order1=(Order) session.get("order");
		order1.setBoolean("已支付");
		order1.setOrderPayType("货到付款");
		dao3.update(order1);
		session.remove("order");
		return "success7";
	}else {
		return "success8";
	}
}

@Action("payzfb")
public String payzfb() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7paypaypaya");
	Order order1=(Order) session.get("order");
	order1.setBoolean("已支付");
	order1.setOrderPayType("支付宝");
	dao3.update(order1);
	session.remove("order");
	return "success7";
}

@Action("person")
public String person() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7paypaypaya");
	if (session.get("user") != null) {
		User user1=(User) session.get("user");
		User user2= dao2.findById(user1.getId());
		session.put("userorders", user2.getOrders());
		return "success9";
	}else {
		return "success12";
	}	
}

@Action("delete")
public String delete() throws Exception {
//	不能打印空值的对象
	System.out.println("aaaaaa7paypaypaya");
	Set<Meal> results = new HashSet<Meal>();
	System.out.println(meal.getId());
		results=(Set<Meal>) session.get("orders");
		Meal m =dao.findById(meal.getId());
		System.out.println(m);
		results.remove(m);
		System.out.println(results);
		session.remove("orders");
		int cart=(Integer) session.get("cart")-1;
		session.remove("cart");
		session.put("cart", cart);
		int price=(Integer) session.get("price")-Integer.parseInt(meal.getMealPrice());
		session.remove("price");
		session.put("price", price);
		session.put("orders", results);
		return "success4";
}


@Action("deleteall")
public String deleteall() throws Exception {
//	不能打印空值的对象
	session.remove("price");
	session.remove("cart");
	session.remove("orders");
		return "success4";
}

@Action("updatep")
public String updatep() throws Exception {
//	不能打印空值的对象
	return "success10";
}

@Action("update")
public String update() throws Exception {
//	不能打印空值的对象
	User user1=(User)session.get("user");
	user1.setUserName(user.getUserName());
	user1.setUserEmail(user.getUserEmail());
	user1.setUserPassword(user.getUserPassword());
	user1.setUserTel(user.getUserTel());
	boolean flag=dao2.update(user1);
	if (flag) {return "success11";
		
	}
		return "success10";
}

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
