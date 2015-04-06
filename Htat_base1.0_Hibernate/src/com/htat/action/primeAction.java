package com.htat.action;

import com.opensymphony.xwork2.ActionSupport;

public class primeAction extends ActionSupport{
private String message;
private String number;	
private int num;	
	public String execute() throws Exception{
		num = Integer.valueOf(number);
		if(!IsPrimeNumber(num)){
			addFieldError("number", "«Î ‰»Î∆Ê ˝");
			pause(INPUT);
		}
		if(IsPrimeNumber(num))return SUCCESS;
		return INPUT;
	}

	private boolean IsPrimeNumber(int i) {
		// ≈–∂œ∆Ê ˝
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
