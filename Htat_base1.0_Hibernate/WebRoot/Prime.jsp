<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
	a:hover{text-decoration:underline;}
	#submit{background-color:#4797ED;border:none;border-radius:10px;box-shadow:0 0 3px #aaa;width:98px;height:41px;line-height:41px;color:#fff;font-size:18px;font-weight:bold;cursor:pointer;margin-right:20px;display:block;outline:none;text-shadow:0 1px 1px #777;float:left;}
 	</style>
  </head>
  
  <body><%--

		Enter Your Number:

	<s:form namespace="/testtwo" action="prime">
			<s:textfield name = "number"/>
			<s:submit></s:submit>
	</s:form>
	
	----------------------------------------------
	--%><s:form namespace="/testtwo" action="primevalidate">
			<s:textfield name = "number"/>
			<s:submit></s:submit>
	</s:form>
	 <button onclick="window.location.href('www.baidu.com')" id=submit>注册 </button>
	<a href="<%=request.getContextPath()%>/jsp/register.jsp" id=submit style=text-decoration:none;text-align:center;>个人中心</a>
  </body>
</html>
