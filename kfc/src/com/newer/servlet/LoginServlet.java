package com.newer.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.impl.UserDAO;
import com.newer.pojo.User;


public class LoginServlet extends HttpServlet {
	UserDAO dao = new UserDAO();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("login".equals(method)) {
			login(request, response);
		}
		if ("quit".equals(method)) {
			quit(request, response);
		}
	}
	
	public void quit(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException {
		 request.getSession().invalidate();
		request.getRequestDispatcher("index.jsp").forward(request,
				response);
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1、获取前台界面传递过来的值
		String uname = request.getParameter("username");
		String password = request.getParameter("password");

		/******************** 判断验证码是否正确 ***************************/
		// 1、接收界面上传递过来的验证码的值（用户输入的）
		String code = request.getParameter("code");
		// 2、获取图片上验证码的文字内容（从session中获取）
		String sessionCode = (String) request.getSession()
				.getAttribute("codes");
		
		if(sessionCode.equalsIgnoreCase(code)){
			// 2、封装成对象
			User user = new User();
			user.setUserName(uname);
			user.setUserPassword(password);

			// 3、调用Dao层的方法

			List<User> results = dao.findByExample(user);
			User result=results.get(0);
		
		// 4、根据结果进行跳转
		if (result != null) {
			// 将查询出来的信息保存在请求作用域中
			//request.setAttribute("user", result);
			// 将登陆的用户信息保存在session
			// 获取session
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
			System.out.println(result);
			System.out.println("2222222222222222222222222222222222222222222222");
			// 登录成功(请求转发)
			
			
			if (result.getRole().getRoleId()==1) {
				System.out.println("111111111111111111111111111111111111111111111");
				request.getRequestDispatcher("afterlogin/loginsuccess.jsp").forward(
						request, response);
			}else if (result.getRole().getRoleName()=="管理员") {
				request.getRequestDispatcher("").forward(
						request, response);
			}else if (result.getRole().getRoleName()=="配送部门") {
				request.getRequestDispatcher("").forward(
						request, response);
			}else if (result.getRole().getRoleName()=="销售部门") {
				request.getRequestDispatcher("").forward(
						request, response);
			}
			else if (result.getRole().getRoleName()=="系统维护部门") {
				request.getRequestDispatcher("").forward(
						request, response);
			}
	
		} else {
			// 登录失败(重定向)
			response.sendRedirect("account.jsp");
		}
	  }else {
		 
		  request.getRequestDispatcher("account.jsp").forward(
					request, response);
		
	}
	}
}