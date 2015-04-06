<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body>
		<!-- 通过标签完成一些简单内容的判断 -->
		<s:if test="message!=null">
		<font color="red">
			<s:property value="message"/>
		</font>
		</s:if>
		Enter Your Name:
		<!-- 通过标签实现Form表格的相关功能 -->
	<s:form namespace="/test" action="helloworld">
			<s:textfield name = "name"/>
			<s:submit></s:submit>
		</s:form>
  </body>
</html>
