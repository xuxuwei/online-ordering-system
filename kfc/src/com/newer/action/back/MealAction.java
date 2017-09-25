package com.newer.action.back;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.pojo.Meal;
import com.newer.service.impl.back.AdMealServiceImpl;
import com.newer.service.inter.back.AdMealService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Namespace(value = "/Admin")
@Action(value = "backMeal")
@Results({ @Result(name = "Goods", location = "/Admin/Goods.jsp"),
		@Result(name = "addSuccess", location = "backMeal.action",type="redirectAction" ),
		@Result(name = "addMeal", location = "/Admin/addGoods.jsp"),
		@Result(name = "modifyMeal", location = "/Admin/modifyGoods.jsp"),
		@Result(name = "modifySuccess",location = "backMeal.action",type="redirectAction"),
		@Result(name = "deleteMeal", location = "backMeal.action",type="redirectAction"),
		@Result(name = "error", location = "/Admin/index.jsp") })
public class MealAction extends ActionSupport implements RequestAware,
		SessionAware {

	private AdMealService mealService;
	private Meal meal;
	private Map<String, Object> request;
	private Map<String, Object> session;
	private List<Meal> meals;
	private List<Meal> breakfast;
	private List<Meal> lunch;
	private List<Meal> dinner;

	public String execute() throws Exception {
		System.out.println("Mealsasasa");
		mealService = new AdMealServiceImpl();
		List<Meal> meals = mealService.selectAll();
		List<Meal> breakfast = mealService.selectBytype("早餐");
		List<Meal> lunch = mealService.selectBytype("午餐");
		List<Meal> dinner = mealService.selectBytype("晚餐");
		request.put("meals", meals);
		request.put("breakfast", breakfast);
		request.put("lunch", lunch);
		request.put("dinner", dinner);
		System.out.println(meals);
		return "Goods";
	}

	public String addMeal() throws Exception {
		return "addMeal";
	}

	public String addSuccess() throws Exception {
		mealService = new AdMealServiceImpl();
		System.out.println("addbefore======"+meal);
		if (mealService.add(meal)) {
			System.out.println(meal);
			return "addSuccess";
		} else {
			return "error";
		}
	}

	public String deleteMeal() throws Exception {
		mealService = new AdMealServiceImpl();
		meal=mealService.selectById(meal.getId());
		System.out.println("deletebefore======"+meal);
		if (mealService.delete(meal)){
			System.out.println("delete======"+meal);
			return "deleteMeal";
		} else {
			return "error";
		}
	}
	
	public String modifyMeal() throws Exception{
		mealService=new AdMealServiceImpl();
		meal=mealService.selectById(meal.getId());
		return "modifyMeal";
	}
	public String modifySuccess() throws Exception {
		mealService = new AdMealServiceImpl();
		meal=getMeal();
		System.out.println("modify================"+meal);
		if(mealService.modify(meal)){
		return "modifySuccess";}else{
			return "error";
		}
	}

	public List<Meal> getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(List<Meal> breakfast) {
		this.breakfast = breakfast;
	}

	public List<Meal> getLunch() {
		return lunch;
	}

	public void setLunch(List<Meal> lunch) {
		this.lunch = lunch;
	}

	public List<Meal> getDinner() {
		return dinner;
	}

	public void setDinner(List<Meal> dinner) {
		this.dinner = dinner;
	}

	public List<Meal> getMeals() {
		return meals;
	}

	public void setMeals(List<Meal> meals) {
		this.meals = meals;
	}

	public AdMealService getMealService() {
		return mealService;
	}

	public void setMealService(AdMealService mealService) {
		this.mealService = mealService;
	}

	public Meal getMeal() {
		return meal;
	}

	public void setMeal(Meal meal) {
		this.meal = meal;
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
}
