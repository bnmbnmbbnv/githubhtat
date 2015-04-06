<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>adminmore.jsp</title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link href="${pageContext.request.contextPath}/css/default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#newcontent{font-size:17px;}
</style>
		<script type="text/javascript">
        function Hrefuser() {
          var divDisp = document.getElementById("diuser").style.display;
            if (divDisp == "block") {
                document.getElementById("diuser").style.display = "none";
            } else {
                document.getElementById("diuser").style.display = "block";
            }
        }
         function Hrefexercise() {
          var divDisp = document.getElementById("diexercise").style.display;
            if (divDisp == "block") {
                document.getElementById("diexercise").style.display = "none";
            } else {
                document.getElementById("diexercise").style.display = "block";
            }
        }
         function Hrefexerciseset() {
             var divDisp = document.getElementById("diexerciseset").style.display;
               if (divDisp == "block") {
                   document.getElementById("diexerciseset").style.display = "none";
               } else {
                   document.getElementById("diexerciseset").style.display = "block";
               }
           }
         function Hrefbigexerciseadd() {
             var divDisp = document.getElementById("dibigexerciseadd").style.display;
               if (divDisp == "block") {
                   document.getElementById("dibigexerciseadd").style.display = "none";
               } else {
                   document.getElementById("dibigexerciseadd").style.display = "block";
               }
           }
         function Hrefbiguseradd() {
             var divDisp = document.getElementById("dibiguseradd").style.display;
               if (divDisp == "block") {
                   document.getElementById("dibiguseradd").style.display = "none";
               } else {
                   document.getElementById("dibiguseradd").style.display = "block";
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
					<div id="newcontent">
						<h1 class="title">
							用户操作
						</h1>
				<a onclick="javacript:Hrefuser()" href="#">添加用户</a><br/>
					<div class="entry" id="diuser" style="display: none">
			<form action="UserAddAction.action" method="post">
     				用户名： <input type="text" name="user.Username"/><br/>
     				密码： <input type="password" name="user.Password"/><br/>
     				再一次： <input type="password" name="checkpassword"/><br/>
   					用户等级： <input type="text" name="user.Userlevel"/><br/>
   					<input type="submit">
						<br />
			</form>
					</div>
		<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 			
				<a onclick="javacript:Hrefexerciseset()" href="#">添加题目集</a><br/>
						<div class="entry" id="diexerciseset" style="display: none">
					<form action="ExercisesetAddAction.action" method="post">
						新建题目集： <input type="text" name="exercise.exerciseset"/><br/>
						<input type="submit">
					</form></div>
		<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 				
				<a onclick="javacript:Hrefexercise()" href="#">添加题目</a><br/>
				<div class="entry" id="diexercise" style="display: none">
			<form action="ExerciseAddAction.action" method="post">
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
   						--%><input type="submit">
						<br />
			</form>
				</div>
				<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 		
				<a onclick="javacript:Hrefbigexerciseadd()" href="#">批量导入习题</a><br/>
					<div class="entry" id="dibigexerciseadd" style="display: none">
			<a href="<%=request.getContextPath()%>/download/AddE.xls">下载导入模板，上传时请不要更改文件名称及表格第一行格式</a>
			
			<form action="uploadfile" method="post"  enctype="multipart/form-data" >
  			 upload <input type="file" name="uploadImage">
 			<input type="submit" value="批量录入">
   			</form>
				</div>
				<hr style="margin:0px;height:1px;border:0px;background-color:red;color:#D5D5D5;"/> 	
					<a onclick="javacript:Hrefbiguseradd()" href="#">批量导入用户</a><br/>
			<div class="entry" id="dibiguseradd" style="display: none">
			<a href="<%=request.getContextPath()%>/download/AddU.xls">下载导入模板，上传时请不要更改文件名称及表格第一行格式</a>
			<form action="uploadfile" method="post"  enctype="multipart/form-data" >
  			 upload <input type="file" name="uploadImage">
 			<input type="submit" value="批量录入">
   			</form>
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