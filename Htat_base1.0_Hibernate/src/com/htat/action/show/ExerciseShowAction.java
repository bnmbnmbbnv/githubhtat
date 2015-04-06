package com.htat.action.show;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.htat.dao.UserDao;
import com.htat.dao.impl.UserDaoImpl;
import com.htat.pojo.Exercise;
import com.htat.pojo.User;
import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExerciseShowAction extends ActionSupport {
	private ExerciseService es = new ExerciseServiceImpl();
	private HttpServletRequest request;
	private HttpSession session;
	UserDao udao = new UserDaoImpl();
	String success = "Success";
	public String execute() throws Exception {
		request = ServletActionContext.getRequest();
		session = request.getSession();
		String uId = (String) ActionContext.getContext().getSession().get("uId");
		User user = udao.selectUserById(Integer.valueOf(uId));
		String uLevel = user.getUserlevel();
		ActionContext.getContext().getSession().put("uLevel", uLevel);
		
		List<Exercise> listEA = es.findAllExercise();
		System.out.println(listEA);
	
		session.setAttribute("listEA", listEA);
		return success;
		
	}
}
