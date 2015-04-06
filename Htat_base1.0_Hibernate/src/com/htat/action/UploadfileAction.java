package com.htat.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UploadfileAction extends ActionSupport {
	
	private File uploadImage;
	private String uploadImageFileName;
	private String realpath;
	private String Passname;
	private String Passpath;
	

	private HttpServletRequest request;
	public String execute() throws Exception {
		
		realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		System.out.println("path:::"+realpath);
		
		//setRealpath(realpath);
		//System.out.println("getRpath:"+getRealpath());
		if(uploadImage!=null){	
		File savefile = new File(new File(realpath),uploadImageFileName);
		if(!savefile.getParentFile().exists())
			savefile.getParentFile().mkdirs();
		FileUtils.copyFile(uploadImage, savefile);
		ActionContext.getContext().put("name","上传成功");
		System.out.println("上传success");
		File f = new File(this.getClass().getResource("/").getPath());
		System.out.println("Upload当前路径："+f); 
		String passname = uploadImageFileName;
		//request.getSession().setAttribute("uploadName",uploadImageFileName);
		//request.getSession().setAttribute("uploadrealpath",realpath);+System.currentTimeMillis()
		realpath = realpath+"\\"+uploadImageFileName;
		System.out.println(realpath);
		setPasspath(realpath);
		}else{
		System.out.println("上传失败");
	}
		
		return "Success";
	}

	//get set
	public File getUploadImage() {
		return uploadImage;
	}

	public void setUploadImage(File uploadImage) {
		this.uploadImage = uploadImage;
	}

	public String getUploadImageFileName() {
		return uploadImageFileName;
	}

	public void setUploadImageFileName(String uploadImageFileName) {
		this.uploadImageFileName = uploadImageFileName;
	}

	public String getRealpath() {
		return realpath;
	}

	public void setRealpath(String realpath) {
		this.realpath = realpath;
	}
	public String getPasspath() {
		return Passpath;
	}

	public void setPasspath(String passpath) {
		Passpath = passpath;
	}
	public String getPassname() {
		return Passname;
	}

	public void setPassname(String passname) {
		Passname = passname;
	}
}