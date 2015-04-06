package com.htat.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.User;
import com.htat.service.UserService;
import com.htat.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserSelectAction extends ActionSupport{
	private User user;
	private UserService us = new UserServiceImpl(); 
	private HttpServletRequest request;
	private HttpSession session;

	public String execute(){
		request = ServletActionContext.getRequest();
		session = request.getSession();
		String uId = (String) ActionContext.getContext().getSession().get("uId");
		System.out.println("UID:"+uId);
		user =	us.findExerciseById(Integer.parseInt(uId));
		session.setAttribute("UserById", user);
		return "Success";
	}
}
