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
		System.out.println("����������Update������");
		// ȡ��������ص�ActionContextʵ��
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		request = ServletActionContext.getRequest();
		username = (String) session.get("Username");
		oldpassword = request.getParameter("oldpassword");
		String newpassword = request.getParameter("newpassword");
		String checknewpassword = request.getParameter("checknewpassword");
	
		System.out.println(username+oldpassword+newpassword+checknewpassword);
		// �����������󣬷���ҳ����������
		User user = new User();
		user.setUsername(username);
		user.setPassword(oldpassword);
		if(!udao.check(user)){
			System.out.println("���������");
			return	Action.ERROR;
		}
		//����������������β�һ�£�����ҳ����������
		else if(!isSame(newpassword, checknewpassword)){
			System.out.println("������������벻һ��");
			return	Action.ERROR;
		}
		//���������Ϊ��or���Ȳ���������ҳ����������
		else if(isInvalid(newpassword)){
			System.out.println("������Ϊ�ջ���<7");
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
