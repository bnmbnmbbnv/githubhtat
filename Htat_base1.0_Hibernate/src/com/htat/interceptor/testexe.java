package com.htat.interceptor;

public class testexe {
	
		public static void main(String args[]){
		Runtime rn=Runtime.getRuntime();
		Process p=null;
		//E:\Ó¢ÐÛÁªÃË\TCLS
		//C:\Program Files\Tencent\QQ\QQProtect\Bin\QQProtect.exe
		try{
		p=rn.exec("\"C:/Program Files/Tencent/QQ/QQProtect/Bin/QQProtect.exe\"");
		}catch(Exception e){
		System.out.println("Error exec AnyQ");
		}
		}
		}

