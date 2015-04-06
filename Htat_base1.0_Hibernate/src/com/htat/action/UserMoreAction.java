package com.htat.action;

import com.htat.dao.UserDao;
import com.htat.dao.impl.UserDaoImpl;
import com.htat.pojo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserMoreAction extends  ActionSupport{

UserDao udao = new UserDaoImpl();
public String execute(){
	String uId = (String) ActionContext.getContext().getSession().get("uId");
	User user = udao.selectUserById(Integer.valueOf(uId));
	String uLevel = user.getUserlevel();
	System.out.println(uId+"&&"+uLevel);
try {
	if(uLevel.equals(String.valueOf(10086))){
		return "adminsuccess";
	}else if(uLevel.equals(String.valueOf(1))){
		return "teachersuccess";
	}else {
		return "studentsuccess";}
} catch (Exception e) {
		return "studentsuccess";
}
	
}
}
