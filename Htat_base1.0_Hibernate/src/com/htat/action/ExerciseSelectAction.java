package com.htat.action;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.Exercise;
import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ExerciseSelectAction extends ActionSupport{
	private Exercise exercise;
	private ExerciseService es = new ExerciseServiceImpl();
	private HttpServletRequest request;
	
	public String execute() throws Exception {
		request = ServletActionContext.getRequest();
		String eId = request.getParameter("eId");
		exercise = es.findExerciseById(Integer.parseInt(eId));
		request.setAttribute("ExerciseById",exercise);
		return "Success";
	}
}
