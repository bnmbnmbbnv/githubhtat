<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>exercise.jsp</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Welcome to Htat</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link href="${pageContext.request.contextPath}/css/default.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="../js/jquery.1.8.2.min.js"></script>
	<script type="text/javascript">
	 $(document).ready(function(){
         var id = '${uLevel}';
         alert(id);
         if(id==10086){
             showdelete();
             }
     });
	 function showdelete() {
          var divDisp = document.getElementById("delete").style.display;
            if (divDisp == "block") {
                document.getElementById("delete").style.display = "none";
            } else {
                document.getElementById("delete").style.display = "block";
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
						<a href="<%=request.getContextPath()%>/jsp/index.jsp">主页</a>
					</li>
					<li>
						<a href='ExerciseShowAction'>题目集</a>
					</li>
					<li>
						<a href="#">个人中心</a>
					</li>
					<li>
						<a href="#">更多</a>
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
							题目集列表
						</h1>
						<div class="entry">
							<s:iterator value="#session.listEA">

								<tr>
									<td class="grid">

								<a	href="<%=request.getContextPath()%>/ExerciseSelect.action?eId=<s:property value="%{id}" />"><s:property
												value="%{topic}" /></a></td> &nbsp;<td>|<s:property value="%{type}" />&nbsp;</td>|<td><a href="<%=request.getContextPath()%>/ExerciseDelete.action?eId=<s:property value="%{id}"/>"id="delete">删除</a></td>
										<br/>
								</tr>
							</s:iterator>
						</div>
						
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