package com.basicspringmvc;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class DayOfWeekBasedAccessIntercepter extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler)throws Exception{
		Calendar calendar = Calendar.getInstance();
		int dayOfWeek = calendar.get(calendar.DAY_OF_WEEK);
		if(dayOfWeek == 4){
			response.getWriter().write("The Website is Closed on Sunday, pleas etry to accessing it on any other day!!!");
			return false;
		}
		return true;
	}
	
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler, ModelAndView modelAndView)throws Exception{
		System.out.println("HandlerInterceptAdapter :  Spring MVC Called Posthandle method for"
															+request.getRequestURI().toString());
	}
	
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler,Exception ex)throws Exception{
		System.out.println("HandlerInterceptAdapter :  Spring MVC Called afterCompletion method for"
															+request.getRequestURI().toString());
	}
}
