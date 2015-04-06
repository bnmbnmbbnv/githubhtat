package com.htat.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.htat.service.ExerciseService;
import com.htat.service.impl.ExerciseServiceImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
//import com.ywjava.utils.Constants;

public class ExerciseAddInterceptor extends AbstractInterceptor {
	ExerciseService es = new ExerciseServiceImpl();
	
	private HttpServletRequest request;
	private boolean isInvalid(String value) {   
	    return (value == null || value.length() <= 0);   
	}   
	private boolean isSame(String value1,String value2){
		return(value1 == value2 || value1.equals(value2));
	}
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("这里引用了ExerciseAdd拦截器");
		request = ServletActionContext.getRequest();
		String topic = request.getParameter("exercise.topic");
		String content = request.getParameter("exercise.content");
		String type =  request.getParameter("exercise.type");
		String level = request.getParameter("exercise.level");
		String answer = request.getParameter("exercise.answer");
		String keytext = request.getParameter("exercise.keytext");
	
		//如果为空or长度不够，返回页面重新输入
	     List<String> list = new ArrayList<String>();
	     list.add(topic);
	     list.add(content);
	     list.add(type);
	     list.add(level);
	     list.add(answer);   
	     list.add(keytext);
	     for(int i=0;i<6;i++)
	    if(list.contains("")||isInvalid(list.get(i).toString())){
	    	System.out.println("exerciseadd有空值");
	    	return Action.ERROR;
	    }
		
		   return invocation.invoke();
		
	}

	//sg
	
}