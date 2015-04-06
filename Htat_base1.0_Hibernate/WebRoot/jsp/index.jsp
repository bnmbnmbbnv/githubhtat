<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
<title>index.jsp</title> 
	
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Welcome to Htat</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
 function showSubNav(id){
  document.getElementById(id).style.display='block';
 }
 function hideSubNav(id){
  document.getElementById(id).style.display='none';
 }
</script>
<style type="text/css">
.newli{list-style-type:none;padding:0;margin:0;}
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
 <!-- start header -->
<div id="header">
	<div id="logo">
		<h1><a href="<%=request.getContextPath()%>/jsp/index.jsp">主页<sup></sup></a></h1>
		<h2>Designed by CLG</h2>
	</div>
	<div id="menu">
	<ul>
		<li class="active"><a href="<%=request.getContextPath()%>/jsp/index.jsp">主页</a></li>
		<li class="active"  onmouseover="showSubNav('subNav_1');" onmouseout="hideSubNav('subNav_1');">
 		<a href="ExerciseShowAction" class="nav_a">题目集</a>
 		</li>
			<li class="active"><a href="UserSelectById">个人中心</a></li>
			<li class="active"><a href="UserMoreAction.action?uId=<s:property value="%{uId}"/>">更多</a></li>
			<li class="active"><a href="UserHelpAction">帮助 </a></li>
 		</ul>
	</div>
</div>
<!-- end header -->

<div id="wrapper">
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">Welcome to Reference</h1>
			<div class="entry">
				<p>This is Reference, a free, fully standards-compliant CSS template designed by FreeCssTemplates<a href="http://www.nodethirtythree.com/"></a>. This free template is released under a <a href="http://creativecommons.org/licenses/by/2.5/">Creative Commons Attributions 2.5</a> license, so you’re pretty much free to do whatever you want with it (even use it commercially) provided you keep the links in the footer intact. Aside from that, have fun with it :)</p>
			</div>
			<div class="meta">
				<p class="byline">Posted on April 21, 2008 byFreeCssTemplates</p>
				<p class="links"><a href="#" class="more">Read full article</a> <b>|</b> <a href="#" class="comments">Comments (32)</a></p>
			</div>
		</div>
		<div class="post">
			<h2 class="title">Lorem Ipsum Dolor Volutpat</h2>
			<div class="entry">
				<p>Curabitur tellus. Phasellus tellus turpis, iaculis in, faucibus lobortis, posuere in, lorem. Donec a ante. Donec neque purus, adipiscing id, eleifend a, cursus vel, odio. Vivamus varius justo sit amet leo. Morbi sed libero. Vestibulum blandit augue at mi. Praesent fermentum lectus eget diam. Nam cursus, orci sit amet porttitor iaculis, ipsum massa aliquet nulla, non elementum mi elit a mauris. In hac habitasse platea.</p>
				<p> Donec a ante. Donec neque purus, adipiscing id, eleifend a, cursus vel, odio. Vivamus varius justo sit amet leo. Morbi sed libero. Vestibulum blandit augue at mi. Praesent fermentum lectus eget diam. Nam cursus, orci sit amet porttitor iaculis, ipsum massa aliquet nulla, non elementum mi elit a mauris. In hac habitasse platea.</p>
			</div>
			<div class="meta">
				<p class="byline">Posted on April 18, 2008 byFreeCssTemplates</p>
				<p class="links"><a href="#" class="more">Read full article</a> <b>|</b> <a href="#" class="comments">Comments (32)</a></p>
			</div>
		</div>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<ul>
			<li id="search">
				<h2><b class="text1">Search</b></h2>
				<form method="get" action="">
					<fieldset>
					<input type="text" id="s" name="s" value="" />
					<input type="submit" id="x" value="Search" />
					</fieldset>
				</form>
			</li>
			<li>
				<h2><strong>Lorem</strong> Ipsum</h2>
				<ul>
					<li><a href="#">Fusce dui neque fringilla</a></li>
					<li><a href="#">Eget tempor eget nonummy</a></li>
					<li><a href="#">Magna lacus bibendum mauris</a></li>
					<li><a href="#">Nec metus sed donec</a></li>
					<li><a href="#">Magna lacus bibendum mauris</a></li>
					<li><a href="#">Velit semper nisi molestie</a></li>
					<li><a href="#">Eget tempor eget nonummy</a></li>
				</ul>
			</li>
			<li>
				<h2><b>Volutpat</b> Dolore</h2>
				<ul>
					<li><a href="#">Nec metus sed donec</a></li>
					<li><a href="#">Magna lacus bibendum mauris</a></li>
					<li><a href="#">Velit semper nisi molestie</a></li>
					<li><a href="#">Eget tempor eget nonummy</a></li>
					<li><a href="#">Nec metus sed donec</a></li>
					<li><a href="#">Magna lacus bibendum mauris</a></li>
					<li><a href="#">Velit semper nisi molestie</a></li>
					<li><a href="#">Magna lacus bibendum mauris</a></li>
					<li><a href="#">Velit semper nisi molestie</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
</div>
<!-- end page -->
<!-- start footer -->
<div id="footer">
	<p id="legal">(c) 2008 YourSite. Design by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>.</p>
</div>
<!-- end footer -->
</body>
</html>