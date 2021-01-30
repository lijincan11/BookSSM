package com.wr.bookstore.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.wr.bookstore.domain.Userinfo;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//获取请求的URL
				StringBuffer url = request.getRequestURL();
				//URL:除了login.jsp是可以公开访问的，其余的URL都要进行拦截控制
				if(url.indexOf("/login")>0) {
					return true;
				}
				//获取session
				HttpSession session = request.getSession();
				Userinfo user = (Userinfo)session.getAttribute("USER");
				//判断session里是不是有登录信息
				if(user!=null) {
					return true;
				}
				request.setAttribute("msg", "你还没有登录，请先登录！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return false;
			
		

	}

}
