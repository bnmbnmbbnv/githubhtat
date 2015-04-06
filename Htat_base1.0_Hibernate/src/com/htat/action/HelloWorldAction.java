package com.htat.action;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWorldAction extends ActionSupport{
private String message;
private String name;	
	
	public String execute() throws Exception{
		if(name==null||"".equals(name)||"w".equals(name)){
			message="用户名不能为空或W";
			return "input";
		}
		message = "HELLO"+name+"!\n";
		return "success";
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
