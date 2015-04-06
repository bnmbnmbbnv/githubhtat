package com.htat.interceptor;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.Action;

public class test {
	private static boolean isNotsame(String value1,String value2){
		return(value1 == value2 || value1.equals(value2));
	}
	private static boolean isInvalid(String value) {   
	    return (value == null || value.length() == 0||value.length()<=7);   
	}   
	
	public static void main(String[] args) {
		if(isInvalid("123123weqwe")){
			System.out.println("kong<7");
		}
		
		else{System.out.println("afaaaasf");
		if(!isNotsame("aab", "bb")){
			System.out.println("not");
		}else {
			System.out.println("naaa");
		}
		String userlevel = "1";
		if(!userlevel.equals(String.valueOf(1))){
			System.out.println(userlevel+"请把用户权限设置为1或2");
		}
		String topic1 = "";
		String topic2 = "2";
		String topic3 = "3";
		List<String> list = new ArrayList<String>();
	   for(int i=1;i<4;i++){
		   list.add(("topic"+String.valueOf(i)));
		   
		   System.out.println(list.toString());
	   }  
	   for(int i=0;i<3;i++)
	   { System.out.println(list.get(i).toString());}
	 
	   if(list.contains("2")){
		   System.out.println("zhe ge ji he you kong zhi "+list.toString());
	   }
	}
	}
}
