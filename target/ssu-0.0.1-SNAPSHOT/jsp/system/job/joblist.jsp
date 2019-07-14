<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>岗位列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
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
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;岗位管理&gt;&gt;岗位列表</a>
        </div>
    </div>
    <div id="inner-bd">
        <div class="button-group">
            <div class="button">
            <a href="${pageContext.request.contextPath }/jsp/system/job/jobnew.jsp">
              <img src="${pageContext.request.contextPath }/images/add.gif">
            </a>
            </div>
         </div>
         <table class="kv-table">
         	<thead>
            	 <tr>
				    <td >编号</td>
					<td >名称</td>
					<td >描述</td>
					<td >操作</td>
                </tr>
            	 

            </thead>
            <tbody>
            	<c:forEach items="${data.pageData}" var="d">
	                <tr>
					    <td >${d.jobId}</td>
						<td ><a href="${pageContext.request.contextPath }/job/jobLook.do?id=${d.jobId}">${d.name}</a></td>
						<td >${d.description}</td>
						<td >
						    <div class="handle">
						    	<a  href="${pageContext.request.contextPath }/job/goUpdate.do?id=${d.jobId}">
	                        	<span class="handle-icon fix"></span>
	                        	</a>
	                        	<a  href="${pageContext.request.contextPath }/job/goMkgl.do?id=${d.jobId}">
	                            <span class="handle-icon cksbmx"></span>
	                            </a>
	                        </div>
						</td>
	                </tr>
                </c:forEach>
            </tbody>
        </table>
	</div>
</div>

<div>
 <p align="right">
		<font color="black">共</font><font color="black">${data.totalRecord }</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		<a href="../job/jobList.do?curpage=1">首  页</a>
		<c:if test="${data.curPage!=1 }">
			<a href="../job/jobList.do?curpage=${data.curPage-1 }">上一页</a>
        </c:if>
          
        <c:if test="${data.curPage!=data.totalPage }">
	        <a href="../job/jobList.do?curpage=${data.curPage+1 }">下一页</a>
	        
        </c:if>
        <a href="../job/jobList.do?curpage=${data.totalPage }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../job/jobList.do?curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>
