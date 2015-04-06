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
    function getFilePath(filePathId){  
        //判断浏览器类型  	
        alert("ONON");
        var isIE = (document.all) ? true : false;  
        var isIE7 = isIE && (navigator.userAgent.indexOf('MSIE 7.0') != -1);  
        var isIE8 = isIE && (navigator.userAgent.indexOf('MSIE 8.0') != -1);      
        var path = '';  
        if(isIE7 || isIE8)  
        {  
            var file = document.getElementById(filePathId);  
            file.select();  
            path = document.selection.createRange().text;  
            document.selection.empty();  
        }else{  
           
            var fname = document.getElementById(filePathId).value;  
            var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);  
            try {  
                // Back slashes for windows  
                file.initWithPath( fname.replace(/\//g, "\\\\") );  
            }catch(e) {  
                if (e.result!=Components.results.NS_ERROR_FILE_UNRECOGNIZED_PATH) throw e;  
                alert('无法加载文件');  
                return;  
            }  
            path = file.path;  
        }  
        return path;  
    }  
    function inputDir(){  
        var path = getFilePath('path');  
        document.getElementById("toDir").value = path;  
    }  
</script>
  </head>
  
  <body>

 
	
<form action="getpath" method="post">
<input type="file" id="fileupload1" onchange="getFilePath(fileupload1)"/>
<input type="hidden" id="filePath" name="filePath"/>
<input type="submit" value="提交" onclick="saveFilePath();"/>
</form>

  </body>
</html>
