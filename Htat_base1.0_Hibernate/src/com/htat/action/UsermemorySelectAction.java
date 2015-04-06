package com.htat.action;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.htat.pojo.Usermemory;
import com.htat.service.UsermemoryService;
import com.htat.service.impl.UsermemoryServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UsermemorySelectAction extends ActionSupport{
	private UsermemoryService ums = new UsermemoryServiceImpl(); 
	private HttpServletRequest request;

	public String execute(){
		request = ServletActionContext.getRequest();
		String uId = (String) ActionContext.getContext().getSession().get("uId");
		System.out.println("UID:"+uId);
		List<Usermemory> listUsermemory = ums.selectByUserid(uId);
		System.out.println("aaa"+listUsermemory);
		Iterator it = listUsermemory.iterator();
		if(it.hasNext()){
		String getid =	String.valueOf(it.next());
		System.out.println(getid);
		}
		listUsermemory = removeDuplicate(listUsermemory);
		System.out.println(listUsermemory);
		request.setAttribute("ListUsermemory", listUsermemory);
		return "success";
	}
	public  List<Usermemory> removeDuplicate(List<Usermemory> list){ 

        HashSet<Usermemory> hashSet = new HashSet<Usermemory>(list); 

        list.clear(); 

        list.addAll(hashSet); 

        return list; 
    } 
}
