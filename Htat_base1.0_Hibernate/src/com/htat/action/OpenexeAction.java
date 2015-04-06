package com.htat.action;

import com.opensymphony.xwork2.ActionSupport;

public class OpenexeAction extends ActionSupport {
	private String filePath;
	
	public String execute() {
		System.out.println("OPEN");
		Runtime rn=Runtime.getRuntime();
		Process p=null;
		String path = getFilePath();
		//path = replace(path);
		//E:\英雄联盟\TCLS
		//C:\Program Files\Tencent\QQ\QQProtect\Bin\QQProtect.exe
		System.out.println(path);
		try{
		p=rn.exec("\"C:/Program Files/Tencent/QQ/QQProtect/Bin/QQProtect.exe\"");//这是转义字符！！  ！"\"
			//p=rn.exec(path);
		}catch(Exception e){
		System.out.println("Error exec AnyQ");
		return "error";
		}
		return "success";
	}
	 private String replace(String str) {
	       // String str = "aaa\\33";
	        System.out.println(str);   
	        str = str.replaceAll("\\\\", "/");
	        System.out.println(str);   
	        return str;
	    }
	// G a S
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

}
