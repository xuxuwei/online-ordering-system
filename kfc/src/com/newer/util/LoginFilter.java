package com.newer.util;



import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newer.pojo.User;



/**
 * 登陆过滤器，只有登陆之后的用户才能去访问后台界面
 * 
 * @author 
 * 
 */
public class LoginFilter implements Filter {

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 1、需要从session中获取用户信息
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		Object obj = req.getSession().getAttribute("user");
		User user = null;
		// 判断obj是否能转换成User对象？
		if (obj instanceof User) {
			user = (User) obj;
		}
		
//		String path = request.getRealPath("/");
		
//		String path2 = request.getServletContext().getRealPath("/");
		
		//String projectName = request.getServletContext().getContextPath();
		String url = req.getSession().getServletContext().getContextPath();
		
		//判断user对象是否为null
		if(user==null || "".equals(user)){
			//还没有登陆
			//   \n \r 
			resp.sendRedirect(url+"/login.jsp");
		}else{
			chain.doFilter(req, resp);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
