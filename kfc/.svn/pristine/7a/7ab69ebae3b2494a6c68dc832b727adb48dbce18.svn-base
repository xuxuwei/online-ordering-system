package com.newer.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newer.dao.impl.MealDAO;
import com.newer.pojo.Meal;

public class MealServlet extends HttpServlet {
   
	MealDAO dao=new MealDAO();
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		     doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("findAll".equals(method)) {
			findAll(request, response);
		}
	}

	
	public void init() throws ServletException {
		
	}
	private void findAll(HttpServletRequest request,HttpServletResponse response) {
		String mealType=request.getParameter("帕尼尼");
		List<Meal> result = dao.findByMealType(mealType);
		request.setAttribute("mealList", result);
		try {
			request.getRequestDispatcher("/index.html").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
}
