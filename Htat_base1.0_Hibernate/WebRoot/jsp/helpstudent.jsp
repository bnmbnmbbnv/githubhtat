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
							用户帮助
						</h1>
							<div class="entry">
						
						<a href="#">为什么网页打不开？</a>
						<form action="">
						亲爱的用户<s:property value="#session.UserById.username" />，如有其他任何疑问或建议，请填写提交：
						<br />
						
						 <textarea name="UUU" cols="80" rows="4"></textarea> <br/>
						 <input type="submit" value="提交">				
						 </form>	
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