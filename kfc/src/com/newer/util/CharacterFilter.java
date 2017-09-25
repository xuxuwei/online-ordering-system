package com.newer.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterFilter implements Filter {

	@Override
	public void destroy() {
		// 用于释放资源
		System.out.println("这个是CharacterFilter--destroy()");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("这个是CharacterFilter--doFilter()");

		request.setCharacterEncoding("UTF-8");

		response.setCharacterEncoding("UTF-8");

		response.setContentType("text/html;charset=UTF-8");

		// 接着执行后面的代码（下一个过滤器或者是servlet）
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// 初始化方法用于初始化参数
		System.out.println("这个是CharacterFilter--init()");
	}

}
