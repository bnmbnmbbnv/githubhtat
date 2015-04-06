<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>studentmore.jsp</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Welcome to Htat</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link href="${pageContext.request.contextPath}/css/default.css" rel="stylesheet" type="text/css" />
	
		<script type="text/javascript">
        function Href() {
            var divDisp = document.getElementById("di").style.display;
            if (divDisp == "block") {
                document.getElementById("di").style.display = "none";
            } else {
                document.getElementById("di").style.display = "block";
            }
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
					<li class="active">
						<a href="<%=request.getContextPath()%>/jsp/index.jsp"> 主页</a>
					</li>
					<li>
						<a href='ExerciseShowAction'>题目集</a>
					</li>
					<li>
						<a href="UserSelectById">个人中心</a>
					</li>
					<li>
						<a href="UserMoreAction">更多</a>
					</li>
					<li>
						<a href="#">帮助 </a>
					</li>
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
						
				
					<div class="entry">
			<%--<form action="<%=request.getContextPath()%>/UserAddAction.action" method="post">
     				用户名： <input type="text" name="username"/><br/>
     				密码： <input type="password" name="password"/><br/>
     				再一次： <input type="password" name="checkpassword"/><br/>
   					用户等级： <input type="text" name="userlevel"/><br/>
   					<input type="submit">
						--%><br />
					</div>
				
								
							
						</div>	
							<br />
					
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