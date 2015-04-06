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
<style type="text/css">
#tabledeep:nth-of-type(even){ background:#C0C0C0;}
#tabletopdeep{font-size:13px;height:30px; background:#C0C0C0;}
</style> 
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
							题目集列表
						</h1>
						

<%--<table summary="book list" >

<thead>

<tr id="tabletopdeep" class="top">
<th >Title</th>
<th >Type</th>
<th >Operation</th>
</tr>
</thead> 

<tbody class="table">
<s:iterator value="#session.listEA">
<tr id="tabledeep">
<td ><a href="<%=request.getContextPath()%>/ExerciseSelect.action?eId=<s:property value="%{id}" />"><s:property	value="%{topic}" /></a></td>
<td><s:property value="%{type}" /></td>
<td ><a href="<%=request.getContextPath()%>/ExerciseDeleteAction.action?eId=<s:property value="%{id}"/>">删除</a></span></td>
</tr>
</s:iterator>
</tbody>
<tfoot>
<tr>
<th >Total</th>
<td colspan="4">4 books</td>
</tr>
</tfoot>
</table>

 	--%>
 	<div class="entry">
 	<table cellpadding="0" id="table">   
    <tr class="top"><td>Title</td><td >Type</td><td>Operation</td></tr>   
<s:iterator value="#session.listEA">
<tr id="tabledeep">
<td ><a href="<%=request.getContextPath()%>/ExerciseSelect.action?eId=<s:property value="%{id}"/>"><s:property	value="%{topic}"/></a></td>
<td><s:property value="%{type}"/></td>
<td ><a href="<%=request.getContextPath()%>/ExerciseDeleteAction.action?eId=<s:property value="%{id}"/>">删除</a></td>
 <td> 
    	
    	  <s:property value="#session.listEA.type"/>
		<s:if test="#request.ListUsermemory==null">已读</s:if>
    	 <s:else>
    	 未读
    	 </s:else>  	  
    	
 </td>
</tr>
</s:iterator>
    </table> 
</div>
<div>
<%--<s:iterator value="listMail" var="mail">
    	 <tr id="myTr">
    	 <td><s:property value="#mail.sender"/>&nbsp;</td>
    	 <td><a href="javascript:void(0)" onclick="openCheckEmail('<s:property value="#mail.emailTitle"/>','<s:property value="#mail.emailContent"/>');"><s:property value="#mail.emailTitle"/></a>&nbsp;</td>
    	  <td><a href="javascript:void(0);" onclick="intoGarbageBox('<s:property value="#mail.id"/>',this.parentElement.parentElement.rowIndex);" >删除</a></td> 
    	
    	 </tr>
    	</s:iterator>

--%></div>


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
	<script type="text/javascript" src="../js/jquery.1.8.2.min.js"></script>
    <script type="text/javascript">
    var tableSort = function(){   
    this.initialize.apply(this,arguments);   
    }   
    tableSort.prototype = {   
    initialize : function(tableId,clickRow,startRow,endRow,classUp,classDown,selectClass){   
    this.Table = document.getElementById(tableId);   
    this.rows = this.Table.rows;//所有行   
    this.Tags = this.rows[clickRow-1].cells;//标签td   
    this.up = classUp;   
    this.down = classDown;   
    this.startRow = startRow;   
    this.selectClass = selectClass;   
    this.endRow = (endRow == 999? this.rows.length : endRow);   
    this.T2Arr = this._td2Array();//所有受影响的td的二维数组   
    this.setShow();   
    },   
    //设置标签切换   
    setShow:function(){   
    var defaultClass = this.Tags[0].className;   
    for(var Tag ,i=0;Tag = this.Tags[i];i++){   
    Tag.index = i;   
    addEventListener(Tag ,'click', Bind(Tag,statu));   
    }   
    var _this =this;   
    var turn = 0;   
    function statu(){   
    for(var i=0;i<_this.Tags.length;i++){   
    _this.Tags[i].className = defaultClass;   
    }   
    if(turn==0){   
    addClass(this,_this.down)   
    _this.startArray(0,this.index);   
    turn=1;   
    }else{   
    addClass(this,_this.up)   
    _this.startArray(1,this.index);   
    turn=0;   
    }   
    }   
    },   
    //设置选中列样式   
    colClassSet:function(num,cla){   
    //得到关联到的td   
    for(var i= (this.startRow-1);i<(this.endRow);i++){   
    for(var n=0;n<this.rows[i].cells.length;n++){   
    removeClass(this.rows[i].cells[n],cla);   
    }   
    addClass(this.rows[i].cells[num],cla);   
    }   
    },   
    //开始排序 num 根据第几列排序 aord 逆序还是顺序   
    startArray:function(aord,num){   
    var afterSort = this.sortMethod(this.T2Arr,aord,num);//排序后的二维数组传到排序方法中去   
    this.array2Td(num,afterSort);//输出   
    },   
    //将受影响的行和列转换成二维数组   
    _td2Array:function(){   
    var arr=[];   
    for(var i=(this.startRow-1),l=0;i<(this.endRow);i++,l++){   
    arr[l]=[];   
    for(var n=0;n<this.rows[i].cells.length;n++){   
    arr[l].push(this.rows[i].cells[n].innerHTML);   
    }   
    }   
    return arr;   
    },   
    //根据排序后的二维数组来输出相应的行和列的 innerHTML   
    array2Td:function(num,arr){   
    this.colClassSet(num,this.selectClass);   
    for(var i= (this.startRow-1),l=0;i<(this.endRow);i++,l++){   
    for(var n=0;n<this.Tags.length;n++){   
    this.rows[i].cells[n].innerHTML = arr[l][n];   
    }   
    }   
    },   
    //传进来一个二维数组，根据二维数组的子项中的w项排序，再返回排序后的二维数组   
    sortMethod:function(arr,aord,w){   
    //var effectCol = this.getColByNum(whichCol);   
    arr.sort(function(a,b){   
    x = killHTML(a[w]);   
    y = killHTML(b[w]);   
    x = x.replace(/,/g,'');   
    y = y.replace(/,/g,'');   
    switch (isNaN(x)){   
    case false:   
    return Number(x) - Number(y);   
    break;   
    case true:   
    return x.localeCompare(y);   
    break;   
    }   
    });   
    arr = aord==0?arr:arr.reverse();   
    return arr;   
    }   
    }   
    /*-----------------------------------*/   
    function addEventListener(o,type,fn){   
    if(o.attachEvent){o.attachEvent('on'+type,fn)}   
    else if(o.addEventListener){o.addEventListener(type,fn,false)}   
    else{o['on'+type] = fn;}   
    }   
      
    function hasClass(element, className) {   
    var reg = new RegExp('(\\s|^)'+className+'(\\s|$)');   
    return element.className.match(reg);   
    }   
      
    function addClass(element, className) {   
    if (!this.hasClass(element, className))   
    {   
    element.className += " "+className;   
    }   
    }   
      
    function removeClass(element, className) {   
    if (hasClass(element, className)) {   
    var reg = new RegExp('(\\s|^)'+className+'(\\s|$)');   
    element.className = element.className.replace(reg,' ');   
    }   
    }   
      
    var Bind = function(object, fun) {   
    return function() {   
    return fun.apply(object, arguments);   
    }   
    }   
    //去掉所有的html标记   
    function killHTML(str){   
    return str.replace(/<[^>]+>/g,"");   
    }   
    //------------------------------------------------   
    //tableid 第几行是标签行，从第几行开始排序，第几行结束排序(999表示最后) 升序标签样式，降序标签样式 选中列样式   
    //注意标签行的class应该是一致的   
    var ex1 = new tableSort('table',1,2,999,'up','down','hov');   
    
   </script>  
	</body>
</html>