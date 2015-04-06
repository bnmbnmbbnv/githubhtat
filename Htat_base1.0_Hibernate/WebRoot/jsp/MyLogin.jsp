<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <HEAD>
<TITLE>用户登录</TITLE>
<LINK href="../css/default.css" type=text/css rel=stylesheet>
<LINK href="../css/xtree.css" type=text/css rel=stylesheet>
<LINK href="../css/user_login.css" type=text/css rel=stylesheet>
<style type="text/css">
div msgDiv {
position: absolute;
height: 100px;
width: 100px;
top: 50%;
left: 50%;
margin-left: -50px;
margin-top: -50px;
border: 1px solid #555;
}
</style>
<script type="text/javascript">
function checkform(){
   var messageDiv = document.getElementById("msgDiv"); 
   var username = document.myform.username.value;
   var password = document.myform.password.value;
   if(username==""||username==null){
    messageDiv.innerHTML = "Error: username should be enter";
    return false;
    
   }else{
    if(password==""||password==null){
        messageDiv.innerHTML = "Error: password should be enter";
        return false;
      }else{
        return true;
      }
   }
}
</script>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.6000.16674" name=GENERATOR>
</HEAD>
<BODY id=userlogin_body>
	<script language="JavaScript">
		messageDiv.innerHTML
	</script>
	<form id="myform" name="myform" onsubmit="return checkform()"
		action="loginAction">
		<DIV></DIV>

		<DIV id=user_login>
			<DL>
				<DD id=user_top>
					<UL>
						<LI class=user_top_l></LI>
						<LI class=user_top_c></LI>
						<LI class=user_top_r></LI>
					</UL>
				<DD id=user_main>
					<UL>
						<LI class=user_main_l></LI>
						<LI class=user_main_c>
							<DIV class=user_main_box>
								<UL>
									<LI class=user_main_text>用户名：</LI>
									<LI class=user_main_input><INPUT class=TxtUserNameCssClass
										id=TxtUserName maxLength=20 name=username></LI>
								</UL>
								<UL>
									<LI class=user_main_text>密 码：</LI>
									<LI class=user_main_input><INPUT class=TxtPasswordCssClass
										id=TxtPassword type=password name=password></LI>
								</UL>
								<UL>
									<LI class=user_main_text>Cookie：</LI>
									<LI class=user_main_input><SELECT id=DropExpiration
										name=DropExpiration>
											<OPTION value=None selected>不保存</OPTION>
											<OPTION value=Day>保存一天</OPTION>
											<OPTION value=Month>保存一月</OPTION>
											<OPTION value=Year>保存一年</OPTION>
									</SELECT></LI>
								</UL>
							</DIV>
						</LI>

						<LI class=user_main_r><INPUT class=IbtnEnterCssClass
							id=tijiao
							style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
							type=image src="../images/user_botton.gif"></LI>
					</UL>
				<DD id=user_bottom>
					<UL>
						<LI class=user_bottom_l></LI>
						<LI class=user_bottom_c><SPAN style="MARGIN-TOP: 40px"></SPAN>
						</LI>
						<LI class=user_bottom_r></LI>
					</UL>
				</DD>
			</DL>
		</DIV>
		<SPAN id=ValrUserName style="DISPLAY: none; COLOR: red"></SPAN><SPAN
			id=ValrPassword style="DISPLAY: none; COLOR: red"></SPAN><SPAN
			id=ValrValidateCode style="DISPLAY: none; COLOR: red"></SPAN>
		<DIV id=ValidationSummary1 style="DISPLAY: none; COLOR: red"></DIV>

		<DIV></DIV>

	</form>
	<table align="center">
		<tr>
			<td><div id="msgDiv"
					style="color:red;font-size:20px;font-family:Arial Black"
					></div>
			</td>
		</tr>
	</table>
	
</BODY>
</HTML>
