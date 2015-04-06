package com.htat.action.show;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.Exercise;
import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ExerciseShowtopicAction extends ActionSupport{
	private Exercise exercise;
	private ExerciseService es = new ExerciseServiceImpl();
	private HttpServletRequest request;
	private HttpSession session;
	
	public String execute() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		
		List<Exercise> listEAT = es.findAllExercise();
		System.out.println(listEAT);
	
		session.setAttribute("listEAT", listEAT);
		return "Success";
		
	}
}
