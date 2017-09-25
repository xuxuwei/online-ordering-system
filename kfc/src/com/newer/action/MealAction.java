package com.newer.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.newer.dao.impl.MealDAO;
import com.newer.pojo.Meal;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

//@ParentPackage(value = "struts-default")
@Results({
	@Result(name = "success", location = "/fruits.jsp"),
	@Result(name = "xiangxi", location = "/single.jsp"),
	@Result(name = "liulan", location = "/panini.jsp"),
	@Result(name = "error", location = "/erro.jsp") })
public class MealAction  extends ActionSupport implements RequestAware, SessionAware,ApplicationAware {
	Meal meal;	
	private Map<String, Object> application;
	private Map<String, Object> request;
	private Map<String, Object> session;
	private String select;
	
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	public Meal getMeal() {
		return meal;
	}
	public void setMeal(Meal meal) {
		this.meal = meal;
	}
	MealDAO dao=new MealDAO();
	public String b;
	//浏览菜单
	
	@Action(value = "meal")
	public String execute() throws Exception {
		System.out.println(meal.getMealName());
		
		List<Meal> result = dao.findByMealType(meal.getMealName());
		for(Meal a : result)
		{
		System.out.println(a);
		//request.put("meal", a.getImages_path());	
	//	ActionContext.getContext().put("path", a.getImages_path());
		}
		ActionContext.getContext().put("result", result);
	    return  "liulan";
	}
	
	
	@Action(value = "meal1")
	public String meal() throws Exception {
		if (select.equals("low"))
		{
			System.out.println(select);
		List<Meal> results = dao.findAlllow();
		System.out.println(results);
		request.put("result", results);
		}
		else {
			System.out.println(select);
		List<Meal> results = dao.findAllhigh();
		request.put("result", results);
		}

//		if (select=="low") {
//		for (int i = 0; i < results.size(); ++i) {
//			for(int j=0;j<results.size()-i;++j)          
//            {
//                //如果前面的数比后面的大，则不是按照顺序的，因此要交换
//                if(Integer.parseInt(results.get(j).getMealPrice()) > Integer.parseInt(results.get(j+1).getMealPrice()))    
//                {
//                  Meal temp=results.get(j);           //交换2个数
//                  results.set(j, results.get(j+1));
//                  results.set(j+1, temp);
//                }
//            }	
//		}
//		}else {
//			for (int i = 0; i < results.size(); ++i) {
//				for(int j=0;j<results.size()-i;++j)          
//	            {
//	                //如果前面的数比后面的大，则不是按照顺序的，因此要交换
//	                if(Integer.parseInt(results.get(j).getMealPrice()) < Integer.parseInt(results.get(j+1).getMealPrice()))    
//	                {
//	                  Meal temp=results.get(j);           //交换2个数
//	                  results.set(j, results.get(j+1));
//	                  results.set(j+1, temp);
//	                }
//	            }	
//			}
//		}
//		/*if (select=="low") {
//		 Collections.sort(results, new Comparator<Meal>(){  
//	            public int compare(Meal o1, Meal o2) {  
//	              
//	                //升序排列  
//	                if(Integer.parseInt(o1.getMealPrice()) > Integer.parseInt(o1.getMealPrice())){  
//	                    return 1;  
//	                }  
//	                if(Integer.parseInt(o1.getMealPrice()) == Integer.parseInt(o1.getMealPrice())){  
//	                    return 0;  
//	                }  
//	                return -1;  
//	            }  
//	        }); 
//			request.put("result", results);
//		}else {
//			 Collections.sort(results, new Comparator<Meal>(){  
//		            public int compare(Meal o1, Meal o2) {  
//		              
//		                //价格将序排列  
//		                if(Integer.parseInt(o1.getMealPrice()) < Integer.parseInt(o1.getMealPrice())){  
//		                    return 1;  
//		                }  
//		                if(Integer.parseInt(o1.getMealPrice()) == Integer.parseInt(o1.getMealPrice())){  
//		                    return 0;  
//		                }  
//		                return -1;  
//		            }  
//		        }); 
//				request.put("result", results);
//		}*/
////		for(Meal a : result)
////		{
////		System.out.println(a);
////		}
		
	    return  "success";
	}
	
	@Action(value = "xiangxi")
	public  String xiangxi() throws  Exception {
		System.out.println(meal.getId());
		 Meal xiang = dao.findById(meal.getId());
		 request.put("xiang", xiang);
		 System.out.println(xiang);
		 return  "xiangxi";
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
	//@Action(value = "meal")
	/*private String findall() throws Exception {
		List<Meal> result = dao.findByMealType("帕尼尼");
		System.out.println("ddddddddddddd");
	    return  "success";*/
	//}
	
}
