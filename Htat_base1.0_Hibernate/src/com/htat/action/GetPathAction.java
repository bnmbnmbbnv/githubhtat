package com.htat.action;



import com.opensymphony.xwork2.ActionSupport;

public class GetPathAction extends ActionSupport {
		private String filePath;
		
		public String execute() throws Exception{
			String path = getFilePath();
			System.out.println(path+"aaa");
			return "success";
		  }
		
		//getter/setter·½·¨

		public String getFilePath() {
			return filePath;
		}

		public void setFilePath(String filePath) {
			this.filePath = filePath;
		}
		
		
}