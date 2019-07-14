<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();	
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>日志列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<%=path %>/css/base.css">
<script type="text/javascript">
	function goto2(u){
		var url=u;
		var page=document.getElementById("pagebox").value-0;
		var i="${data.totalPage}"-0;
		if(page<1||page>i){
			alert("没这页啊老哥")
		}else{
			location.href=url+page
		}
	}

</script>


</head>

<body>
<div class="containner">
	<div id="inner-hd">
    	<div class="crumbs">
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;日志列表</a>
        </div>
    </div>
	  
    <div id="inner-bd">
	      <div >	
            <a href="../log/logExp.do" ><img src="<%=path %>/images/exp.png"></a>
		    <a href="../log/logDel.do" ><img src="<%=path %>/images/clear.png"></a>
		  </div>


   
         <table class="kv-table">
         	<thead>
            		<tr>
						<td >日志编号</td>
						<td >登陆ID </td>
						<td >登陆时间</td>
						<td >退出时间</td>
					</tr>
            </thead>
            
            <tbody>
            	<c:forEach items="${data.pageData}" var="log">
	                <tr>
	                    <td>${log.logId }</td>
	                    <td>${log.userId }</td>
	                    <td>${log.checkinTime }</td>
	                    <td>${log.checkoutTime }</td>
	                </tr>
	            </c:forEach>   
            </tbody>
        </table>
	</div>
</div>


<div>
 <p align="right">
		<font color="black">共</font><font color="black">${data.totalRecord}</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		<c:if test="${data.totalPage!=0 }">
		
		  <a href="<%=path %>/log/logList.do?curPage=1">首  页</a>
		 <c:if test="${data.curPage!=1 }">
			 <a href="<%=path %>/log/logList.do?curPage=${data.curPage-1 }">上一页</a>
         </c:if>
         <c:if test="${data.curPage!=data.totalPage }">
	         <a href="<%=path %>/log/logList.do?curPage=${data.curPage+1 }">下一页</a>
	         
         </c:if>
         <a href="<%=path %>/log/logList.do?curPage=${data.totalPage }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../log/logList.do?curPage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</c:if>
</body>
</html>
