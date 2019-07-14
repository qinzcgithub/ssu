<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>修改巡检组</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css.css">
	</head>

	<body topmargin="50">
	     <table width="100%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="2%" align="center">
							</td>
							<td width="98%">
								<span class="sys_list_yh">系统管理&gt;&gt;巡检组列表&gt;&gt;修改巡检组</span>
							</td>
						</tr>
					</table>	
		<form action="${pageContext.request.contextPath }/pigroup/pigroupUpdate.do" method="post">
			<table width="60%" border="0" align="center" cellpadding="2"
				cellspacing="1" bgcolor="#E4E4E4">
				<tr bgcolor="#F2F2F2">
					<td  align="center">巡检组编号：</td>
					<td><input name="groupId" value="${groupId }" readonly="true"></td>
					</tr>
					<tr bgcolor="#F2F2F2" >
					<td  align="center">巡检组名称：</td>
					<td><input name="groupName" value="${name }"></td>
					</tr>
			</table><br>
			
			<center><input type="submit" value="提交">&nbsp;&nbsp;<input type="button" value="返回" onclick="history.back();"></center>
		</form>
	</body>
</html>


