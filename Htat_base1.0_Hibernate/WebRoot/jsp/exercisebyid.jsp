<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>exercisebyid.jsp</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Welcome to Htat</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link href="${pageContext.request.contextPath}/css/default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#newcontent{font-size:17px;}
</style> 
	<script type="text/javascript" src="../js/jquery.1.8.2.min.js"></script>
	<script type="text/javascript">
        function Href() {
            var divDisp = document.getElementById("di").style.display;
            if (divDisp == "block") {
                document.getElementById("di").style.display = "none";
            } else {
                document.getElementById("di").style.display = "block";
            }
        }
        function UpdateHref(){
            var divDisp = document.getElementById("diupdate").style.display;
            if (divDisp == "block") {
                document.getElementById("diupdate").style.display = "none";
            } else {
                document.getElementById("diupdate").style.display = "block";
            }
        }
       
        function loadXMLDoc()
        {
            alert("已做");
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
         
            }
          }
        xmlhttp.open("POST","UsermemoryAdd.action?eId="+<s:property value="#request.ExerciseById.id"/>,true);
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
					<li class="active"><a href="<%=request.getContextPath()%>/jsp/index.jsp"> 主页</a></li>
			<li class="active"><a href='ExerciseShowAction'>题目集</a></li>
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
							<s:property value="#request.ExerciseById.topic" />
						</h1>
						
						<div id="newcontent">
							
							<s:property value="#request.ExerciseById.content" />
							<br />
							<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 
							<s:property value="#request.ExerciseById.type" />
							<br />
							<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 
							<s:property value="#request.ExerciseById.level" />
							<br /> 
							<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 
							<a onclick="javacript:Href()" href="#">显示答案</a>
							<div id="di" style="display: none">
   								<s:property value="#request.ExerciseById.answer"/>
  							</div>
							<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 
							
							<a onclick="javacript:UpdateHref()" href="#">修改</a>
						<div id="diupdate" style="display: none">
   						<form action="ExerciseUpdateAction.action" method="post">
   						<input type="hidden"  name="exercise.id" value="<s:property value="#request.ExerciseById.id" />"/><br/>
     				所属题目集：
     				<select name="exercise.exerciseset" id="exercise.exerciseset" class="xla_k">
   								 <option value="1">1</option>
								 <option value="2">2</option>
					 			 <option value="3">3</option>
    				</select> <br/>
     				题目标题：<input type="text" name="exercise.topic"/><br/>
     				内容：
     				 <textarea name="exercise.content" cols="120" rows="5"></textarea> <br/>
     				类型：<select name="exercise.type" id="exercise.type" class="xla_k">
   								 <option value="1">1</option>
								 <option value="2">2</option>
								 <option value="3">3</option>
    					 </select> <br/>
     				等级：<select name="exercise.level" id="exercise.level" class="xla_k">
   								 <option value="1">1</option>
								 <option value="2">2</option>
					 			 <option value="3">3</option>
    				     </select> <br/>
     				答案： <textarea name="exercise.answer" cols="120" rows="5"></textarea> <br/>
   					标号：<input type="text" name="exercise.keytext"/><br/><%--
   					提交人：	<input type="text" name="exercise.exerciseset"/><br/>
   						--%><input type="submit" value="提交更新">
						<br />
					</form>
  							</div>
						</div>
<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 						
	<div>
		<input type="button" value="OPEN" onclick="window.location='<%=request.getContextPath()%>/OpenexeAction.action';">
	
	</div>				
		<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 	
		<%--<button type="button" onclick="loadXMLDoc()">记录已做</button>
			--%>
			<button type="button" onclick="window.location='<%=request.getContextPath()%>/UsermemoryAdd.action?eId=<s:property value="#request.ExerciseById.id"/>';">记录已做</button>
		
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