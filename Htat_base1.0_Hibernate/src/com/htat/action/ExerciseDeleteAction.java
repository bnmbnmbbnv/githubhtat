package com.htat.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.Exercise;
import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ExerciseDeleteAction extends ActionSupport{
	private ExerciseService es = new ExerciseServiceImpl();
	private HttpServletRequest request;

	public String execute() throws Exception {
		request = ServletActionContext.getRequest();
		String eId = request.getParameter("eId");
		System.out.println(eId);
		Exercise exercise = new Exercise();
		exercise.setId(Integer.parseInt(eId));
		es.deleteExercise(exercise);
		return "success";
	}
	public void validate(){
		
	}
	
}
