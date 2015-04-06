<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>导航菜单</title>
<style type="text/css">
 body{font-size:12px;}
 ul,li{list-style-type:none;padding:0;margin:0;}
 .main_nav{padding:2px;}
 .main_nav a{display:block;line-height:28px;height:28px;padding-left:10px;overflow:hidden;}
 .main_nav .navs{width:120px;}
 .main_nav .navs .nav_a{background:#DDDDDD;color:#000000;text-decoration:none;}
 .sub_nav{display:none;width:120px;}
 .sub_nav li a {color:#FFFFFF;text-decoration:none;}
 .sub_nav li a:link, .sub_nav li a:visited{background:#A0BED5;}
 .sub_nav li a:hover{background:#0077BB;}
</style>
</head>
<body>
<ul style="float:left"><li>floatleft</li><li>asdf</li></ul>
<ul style="float:right"><li>right</li></ul>
<div style="clear:both"></div>
<div style="width:300px;"><!--数值可以随便调-->
<ul style="float:left"><li>daf</li></ul>  <ul style="float:right"><li>adflkj</li></ul>
</div>
<ul class="main_nav">
<li class="navs"  onmouseover="showSubNav('subNav_1');" onmouseout="hideSubNav('subNav_1');">
 <a href="javascript:;" class="nav_a">我的个人信息</a>
 <ul id="subNav_1" class="sub_nav">
      <li><a href="#">姓名</a></li>
      <li><a href="#">个人主页</a></li>
       <li><a href="#">我的校内</a></li>
  <li><a href="#">我的空间</a></li>
 </ul>
</li>
<ul>
<li class="active"><a href="UserSelectById">个人中心</a></li>
			<li class="active"><a href="UserMoreAction.action?uId=<s:property value="%{uId}"/>">更多</a></li>
			<li class="active"><a href="UserHelpAction">帮助 </a></li>
</ul></ul>
<script language="javascript" type="text/javascript">
 function showSubNav(id){
  document.getElementById(id).style.display='block';
 }
 function hideSubNav(id){
  document.getElementById(id).style.display='none';
 }
</script>
</body>
</html>
