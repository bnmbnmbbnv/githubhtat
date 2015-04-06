package com.htat.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.Exercise;
import com.htat.pojo.User;
import com.htat.service.UserService;
import com.htat.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserUpdateAction extends ActionSupport{

	UserService us = new UserServiceImpl();
	private HttpServletRequest request;
	private HttpSession session;

	public String execute() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		String uId = (String) ActionContext.getContext().getSession().get("uId");
		String password = request.getParameter("newpassword");
		User user = new User();
		user.setId(Integer.parseInt(uId));
		user.setPassword(password);
		us.changeUser(user);
		return "Success";
	}
	public void validate(){
		
	}
	private boolean isInvalid(String value) {   
	    return (value == null || value.length() == 0);   
	}   

}
