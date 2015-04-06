package com.htat.action;

import com.htat.pojo.User;
import com.htat.service.UserService;
import com.htat.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class UserAddAction extends ActionSupport {
	private User user;
	
	UserService us = new UserServiceImpl();
	public String execute() {
		
		user.setUsername(user.getUsername());
		user.setPassword(user.getPassword());
		user.setUserlevel(user.getUserlevel());
		us.insertUser(user);
		return "success";

	}
	// G a S
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
