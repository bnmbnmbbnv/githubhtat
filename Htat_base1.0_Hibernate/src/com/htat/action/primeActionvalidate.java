package com.htat.action;

import com.opensymphony.xwork2.ActionSupport;

public class primeActionvalidate extends ActionSupport{
private String message;
private String number;	
private int num;	
	public String execute() throws Exception{
		return SUCCESS;
	}

	public void validate(){//validate��������execute����ִ��֮ǰ��ִ�У�
		num = Integer.valueOf(number);
		if(IsPrimeNumber(num)){
			addFieldError("number", "ʿ�����������������������");
		}
	}
	private boolean IsPrimeNumber(int i) {
		// �ж�����
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
