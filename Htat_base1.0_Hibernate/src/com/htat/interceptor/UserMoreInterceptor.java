package com.htat.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.htat.dao.UserDao;
import com.htat.dao.impl.UserDaoImpl;
import com.htat.pojo.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
//import com.ywjava.utils.Constants;

public class UserMoreInterceptor extends AbstractInterceptor {
	private String username;
	private String oldpassword;
	UserDao udao = new UserDaoImpl();
	private HttpServletRequest request;
		
	private boolean isInvalid(String value) {   
	    return (value == null || value.length() == 0|| value.length()<7 );   
	}   
	private boolean isSame(String value1,String value2){
		return(value1 == value2 || value1.equals(value2));
	}
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("这里引用了Update拦截器");
		// 取得请求相关的ActionContext实例
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		request = ServletActionContext.getRequest();
		username = (String) session.get("Username");
		oldpassword = request.getParameter("oldpassword");
		String newpassword = request.getParameter("newpassword");
		String checknewpassword = request.getParameter("checknewpassword");
	
		System.out.println(username+oldpassword+newpassword+checknewpassword);
		// 如果旧密码错误，返回页面重新输入
		User user = new User();
		user.setUsername(username);
		user.setPassword(oldpassword);
		if(!udao.check(user)){
			System.out.println("旧密码错误");
			return	Action.ERROR;
		}
		//如果新密码输入两次不一致，返回页面重新输入
		else if(!isSame(newpassword, checknewpassword)){
			System.out.println("输入的两次密码不一致");
			return	Action.ERROR;
		}
		//如果新密码为空or长度不够，返回页面重新输入
		else if(isInvalid(newpassword)){
			System.out.println("新密码为空或者<7");
			return	Action.ERROR;
		}
		 
		   return invocation.invoke();
		
	}

	//sg
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
}
