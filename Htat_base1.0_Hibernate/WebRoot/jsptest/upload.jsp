<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
<script type="text/javascript">
function saveFilePath(v){
	alert(v);

	alert(getPath(v));
document.getElementById('filePath').value = v;
}
function getPath(obj){
 if (obj) {
	alert("<p>My First JavaScript</p>");
  if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
   obj.select();
   return document.selection.createRange().text;
  } else if (window.navigator.userAgent.indexOf("Firefox") >= 1) {
   if (obj.files) {
    return obj.files.item(0).getAsDataURL();
   }
   return obj.value;
  }
  return obj.value;
 }
}
</script>
  </head>
  
  <body>

  <form action="uploadfile?path=" method="post">
   <input type="file" name="getpath">
   <input type="submit"/>
   </form>
   <form enctype="multipart/form-data" action="uploadfile" method="post">
  	<input type="file" name="uploadImage">
  	   <input type="submit"/>
	</form>
	
<form action="getpath" method="post">
<input type="file" onchange="saveFilePath(this.value);"/>
<input type="hidden" id="filePath" name="filePath"/>
<input type="submit" value="提交"/>
</form>

  </body>
</html>
