<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>程序功能展现</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">
        
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">
 
</head>
<body>
	<span class="sys_list_yh">系统管理&gt;&gt;岗位管理&gt;&gt;程序功能列表</span>
	 <table width="40%" border="0" align="center" cellpadding="2" cellspacing="1"  bgcolor="#E4E4E4">
		<tr  bgcolor="#F2F2F2">
			<td>编号</td>
			<td>名称</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list}" var="l">
			<tr  bgcolor="#F2F2F2">
				<td>${l.funcId }</td>
				<td>${l.funcName }</td>
				<td>
					<a href="${pageContext.request.contextPath }/job/toXtym.do?funcId=${l.funcId }&jobId=${id }">
						<img src="${pageContext.request.contextPath }/images/VIEW.GIF" border="0" title="页面列表">
					</a>
				</td>
			</tr>
		</c:forEach>
	</table><br>
				<center><input type="button" value="返回" onclick="window.location.href='${pageContext.request.contextPath }/job/jobList.do'"></center>
	</body>
</html>
