package com.htat.action;

import com.htat.dao.UserDao;
import com.htat.dao.impl.UserDaoImpl;
import com.htat.pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends  ActionSupport{
private String username;
private String password;
UserDao udao = new UserDaoImpl();
public String execute(){
	User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		if(udao.check(user)){
			return "success";
			}
		return "error";
}

public void validate(){
	System.out.println(username);
	System.out.println(password);
	if (!isInvalid(getUsername())&&!isInvalid(getPassword())){   
    ActionContext.getContext().getSession().put("Username",getUsername());
	ActionContext.getContext().getSession().put("Password",getPassword());
//	ActionContext.getContext().getSession().put("Userlevel", getUsername());
	}
}

private boolean isInvalid(String value) {   
    return (value == null || value.length() == 0);   
}   


//G a S
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
}
