package com.htat.action;

import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.Usermemory;
import com.htat.service.UsermemoryService;
import com.htat.service.impl.UsermemoryServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UsermemoryAddAction extends ActionSupport {
	UsermemoryService ums = new UsermemoryServiceImpl();
	private HttpServletRequest request;
	Usermemory um = new Usermemory();
	public String execute() {
		request = ServletActionContext.getRequest();
		String eId = request.getParameter("eId");
		String uId = (String) ActionContext.getContext().getSession().get("uId");
		System.out.println(eId+"  "+uId);
		um.setExerciseid(eId);
		um.setUserid(uId);
		ums.insertUsermemory(um);
		List<Usermemory> listUsermemory = ums.selectByUserid(uId);
		listUsermemory = removeDuplicate(listUsermemory);
		return "success";
	}

	public  List<Usermemory> removeDuplicate(List<Usermemory> list){ 

        HashSet<Usermemory> hashSet = new HashSet<Usermemory>(list); 

        list.clear(); 

        list.addAll(hashSet); 

        return list; 
    } 
}
