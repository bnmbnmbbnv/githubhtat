<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>usercenter.jsp</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Welcome to Htat</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link href="${pageContext.request.contextPath}/css/default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#newcontent{font-size:17px;}
</style>
		<script type="text/javascript">
        function Href() {
            var divDisp = document.getElementById("di").style.display;
            if (divDisp == "block") {
                document.getElementById("di").style.display = "none";
            } else {
                document.getElementById("di").style.display = "block";
            }
        }
        function Hrefmemory() {
            var divDisp = document.getElementById("dimemory").style.display;
            if (divDisp == "block") {
                document.getElementById("dimemory").style.display = "none";
            } else {
                document.getElementById("dimemory").style.display = "block";
            }
             }
        function loadXMLDoc()
        {
        var xmlhttp;
        if (window.XMLHttpRequest)
          {// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp=new XMLHttpRequest();
          }
        else
          {// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
          }
        xmlhttp.onreadystatechange=function()
          {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
            document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
            }
          }
        xmlhttp.open("POST","<%=request.getContextPath()%>/UsermemorySelect.action",true);
        xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xmlhttp.send();
        }
       </script>
	</head>


	<body>
		<!-- start header -->
		<div id="header">
			<div id="logo">
				<h1>
					<h1><a href="<%=request.getContextPath()%>/jsp/index.jsp">主页<sup></sup></a></h1>
					</a>
				</h1>
				<h2>
					Designed by CLG
				</h2>
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
						<h1 class="title">
							个人信息
						</h1>
						<div id="newcontent">
						ID:	<s:property value="#session.UserById.username" />
						<br />
						
						<a onclick="javacript:Href()">修改密码</a><br/>
				<div id="di" style="display: none">
				
				<form action="<%=request.getContextPath()%>/UserUpdateById.action" method="post">
     				原密码： <input type="password" name="oldpassword"/><br/>
     				新密码： <input type="password" name="newpassword"/><br/>
     				再一次： <input type="password" name="checknewpassword"/><br/>
   					 <input type="submit">
  				 </form>
   							
  				</div>	
				</div>	
				<%--<button type="button" onclick="loadXMLDoc()">请求数据</button>
--%>
<button type="button" onclick="window.location='<%=request.getContextPath()%>/UsermemorySelect.action';">查看已做</button>
		
				<a onclick="javacript:Hrefmemory()">查看已做</a><br/>

		<div id="dimemory" style="display: none">
		<s:property value="#request.ListUsermemory"/>
			</div>
    <s:if test=" %{id} in #request.ListUsermemory ">
       "name"包含在集合里
    </s:if>
    <s:else>
        "name"不在集合里
    </s:else>
 
   <s:if test=" 'name' in {'name','passwoed'} ">
       "name"包含在集合里
    </s:if>
    <s:else>
        "name"不在集合里
    </s:else>


				
					
						<div class="meta">
							<p class="byline">
								Posted on April 21, 2008 byFreeCssTemplates
							</p>
							<p class="links">
								<a href="#" class="more">Read full article</a>
								<b>|</b>
								<a href="#" class="comments">Comments (32)</a>
							</p>
						</div>
					</div>

				</div>
				<!-- end content -->
				<!-- start sidebar -->
				<div id="sidebar">
					<ul>
						<li id="search">
							<h2>
								<b class="text1">Search</b>
							</h2>
							<form method="get" action="">
								<fieldset>
									<input type="text" id="s" name="s" value="" />
									<input type="submit" id="x" value="Search" />
								</fieldset>
							</form>
						</li>
						<li>
							<h2>
								<strong>说明</strong>
							</h2>

						</li>

					</ul>
				</div>
				<!-- end sidebar -->
				<div style="clear: both;">
					&nbsp;
				</div>
			</div>
		</div>
		<!-- end page -->
		<!-- start footer -->
		<div id="footer">
			<p id="legal">
				(c) 2008 YourSite. Design by
				<a href="http://www.freecsstemplates.org/">Free CSS Templates</a>.
			</p>
		</div>
		<!-- end footer -->
	</body>
</html>