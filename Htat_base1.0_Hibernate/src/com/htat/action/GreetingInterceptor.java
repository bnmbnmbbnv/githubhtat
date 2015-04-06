package com.htat.action;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class GreetingInterceptor extends AbstractInterceptor{

	public void init(){};
	public void destroy(){};
	public String intercept(ActionInvocation invocation)throws Exception{
		ActionContext ac = invocation.getInvocationContext(); 
		HttpServletRequest request = (HttpServletRequest)ac.get(ServletActionContext.HTTP_REQUEST);
		Calendar calendar = Calendar.getInstance();
		int hour = calendar.get(Calendar.HOUR_OF_DAY);
		String greeting = (hour<6)?"Good evening":
			((hour<12)?"moring":
			((hour<18)?"afternoon":
			"evening"));
		//String name = request.getParameter("name");
		greeting = greeting+" "+"aaa"; 
		System.out.println("--------------------");
		System.out.println(greeting);
		invocation.getInvocationContext().getSession().put("greeting", greeting);
		System.out.println("+++++++++++++++++++++");
		System.out.println(invocation.invoke());
		String result = invocation.invoke();
		
		return result;
	}
	
	
	
}
