<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>页面列表</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="../css/main.css">
		<script type="text/javascript" src="../js/check.js">
  </script>
  <style>
  #bodyStyle{
  overflow:auto;
  }
  </style>
  
  <script type="text/javascript">
  	window.onload = function checkBox(){
  		var ymvalue = document.getElementById("ym").value;
  		alert(ymvalue);
  	}
  </script>
	</head>

	<body id="bodeStyle">
		<table width="100%" border="0" align="center" cellpadding="0"
			cellspacing="0">

			<tr>
				<td width="2%" align="center">

				</td>
				<td width="98%">

					<span class="sys_list_yh">系统管理&gt;&gt;岗位管理</span>
				</td>
			</tr>
		</table>
		<br />
		<center>
			<span class="sys_list_yh">页面列表</span>
		</center>
		<form action="${pageContext.request.contextPath }/job/xtymUptate.do?jobId=${jobid}&funcId=${funcId}" method="post">
		    		<table width="50%" border="0" align="center" cellpadding="2"
									cellspacing="1" bgcolor="#E4E4E4">
									<div align="top" valign="left">
					<input type="checkbox" name="allbox" onclick="checkall();">
					全选/撤选
				</div>
									<tr bgcolor="#F2F2F2">
										<td bgcolor="#F2F2F2" align="center" width="15%">
											选择
										</td>
										<td bgcolor="#F2F2F2" align="center" width="15%">
											页面名称
										</td>
									</tr>
					
				<c:forEach items="${list1}" var="l1">
					<tr bgcolor="#F2F2F2">
							<td>
								
								<input type="checkbox" value="${l1.ymbh }" name="ymbhs" 
									<c:forEach items="${list2 }" var="l2">
										<c:if test="${l1.ymbh==l2.ymbh }"> checked </c:if>
									</c:forEach>
								 />
							</td>
							<td>
								${l1.ymmc }
							</td>
					</tr>
				</c:forEach>
				
			</table>
			<br>
			<center>
				<input type="submit" value="新增">
				&nbsp;&nbsp;
				<input type="button" value="返回" onclick="history.back();">
			</center>
		</form>
	</body>
</html>	