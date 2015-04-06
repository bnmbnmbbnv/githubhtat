package com.htat.action;

import com.opensymphony.xwork2.ActionSupport;

public class primeActionvalidate extends ActionSupport{
private String message;
private String number;	
private int num;	
	public String execute() throws Exception{
		return SUCCESS;
	}

	public void validate(){//validate方法将在execute方法执行之前被执行！
		num = Integer.valueOf(number);
		if(IsPrimeNumber(num)){
			addFieldError("number", "士大夫撒发生法萨芬撒发生法");
		}
	}
	private boolean IsPrimeNumber(int i) {
		// 判断奇数
		System.out.println(i);
		if(i%2==0)return false;
		return true;
	}
	
	//setter and getter

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

}
