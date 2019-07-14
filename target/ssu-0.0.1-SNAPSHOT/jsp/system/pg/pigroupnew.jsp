<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>巡检组添加页面</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/css.css">
		<script type="text/javascript" src="../js/addData.js">
		</script>
	</head>
	<body topmargin="50">
	      <table width="100%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="2%" align="center">
							</td>
							<td width="98%">
								<span class="sys_list_yh">系统管理&gt;&gt;巡检组列表&gt;&gt;新增巡检组巡检工</span>
							</td>
						</tr>
					</table>	
		<form action="${pageContext.request.contextPath }/pigroup/pigroupAdd.do?pwId=${d.worker_ID}" method="post">
			<table width="60%" border="0" align="center" cellpadding="2"
				cellspacing="1" bgcolor="#E4E4E4">
				<caption align="center">添加巡检组</caption>
					<tr bgcolor="#F2F2F2">
					<td  align="center">巡检组名称：</td>
					<td><input name="groupName"></td>
					</tr>
			</table><br>
			<p align="center">添加巡检工</p>
			<table width="500" height="300" align="center">
         <tr valign="top" height="200">
 			  <td width="40%" height="50%">
 			     <table>
 			       <select style="width:120pt" size="10" id="sel2" name="se2"　 multiple="true" >
 			       </select> 	
 			     </table>
 			  </td>	          
 			  <td valign="top">
 			     <input type="button" value="<<" onclick="Add();"><br>
 			     <input type="button" value=">>" onclick="Del();"><br>
 			  </td>
 			  <td width="40%" height="50%">
 			      <select listKey="workId" listValue="workerName"  theme="simple" size="10" multiple="true" name="sel1" id="sel1" style="width:120pt">
 			 		 	 <c:forEach items="${list}" var="d">
	 			       		<option value="${d.worker_ID }" >${d.worker_Name }</option>
	 			     	 </c:forEach>
 			      </select>
 			  </td>
           </tr>                         
        </table> 
			<center><input type="submit" value="提交">&nbsp;&nbsp;<input type="button" value="返回" onclick="history.back();"></center>
		</form>
	</body>
</html>

