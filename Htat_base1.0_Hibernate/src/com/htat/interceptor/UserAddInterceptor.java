package com.htat.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.htat.dao.UserDao;
import com.htat.dao.impl.UserDaoImpl;
import com.htat.pojo.User;
import com.htat.service.UserService;
import com.htat.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
//import com.ywjava.utils.Constants;

public class UserAddInterceptor extends AbstractInterceptor {
	UserService us = new UserServiceImpl();
	private HttpServletRequest request;
	private boolean isInvalid(String value) {   
	    return (value == null || value.length() == 0|| value.length()<7 );   
	}   
	private boolean isSame(String value1,String value2){
		return(value1 == value2 || value1.equals(value2));
	}
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("����������UserAdd������");
		request = ServletActionContext.getRequest();
		String username = request.getParameter("user.Username");
		String password = request.getParameter("user.Password");
		String userlevel =  request.getParameter("user.Userlevel");
		String checkpassword = request.getParameter("checkpassword");
		//������ӵ������������β�һ�£�����ҳ����������
		System.out.println(password+checkpassword+username);
		if(!isSame(password, checkpassword)){
			System.out.println("������������벻һ��");
			return	Action.ERROR;
		}
		//����û���������Ϊ��or���Ȳ���������ҳ����������
		else if(isInvalid(username)&&isInvalid(password)){
			System.out.println("�û��� �� ����Ϊ�ջ���<7");
			return	Action.ERROR;
		}
		//����û��ȼ�����123����ҳ����������
	
		//����û����Ѵ��ڣ��뻻����������
		else if(!us.checkUserName(username)){
			System.out.println("�û����Ѵ���");
			return Action.ERROR;
		}	
		else if(!(userlevel.equals(String.valueOf(1))||userlevel.equals(String.valueOf(2))||userlevel.equals(String.valueOf(10086)))){
			System.out.println(userlevel+"����û�Ȩ������Ϊ1��2");
			return Action.ERROR;
		}
		   return invocation.invoke();
		
	}

	//sg
	
}