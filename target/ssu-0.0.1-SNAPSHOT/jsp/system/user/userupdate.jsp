<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML >
<html>
  <head>

    <title>用户新增</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../css/main.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/checkUserName.js"></script>
  </head>
  
  <body>

	<span class="sys_list_yh">系统管理&gt;&gt;用户管理&gt;&gt;用户新增</span>

	<br>
  		<form action="../user/userUpdate.do" method="post" onsubmit="return checkdata();">
	    	<table width="60%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#E4E4E4">
	    	
	    		<tr bgcolor="#FFFFFF">
	    			<td width="30%">用户登陆ID</td><td><input type="text" name="loginId"  value="${user.loginId }" class="input" onblur="searchSuggest('users.loginId','title');">(只能是字母和数字长度不能大于10)
	    			   <span id="title"></span>
	    			</td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td>用户登陆密码</td><td><input type="password" name="loginPassword"  value="${user.loginPassword }" name="loginPassword" class="input"></td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td>确认密码</td><td><input type="password"  value="${user.loginPassword }" name="loginPassword" name="checkpwd" class="input"></td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td>用户中文名称</td><td><input type="text" value="${user.userName }" name="userName"></td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td>用户所属部门</td>
	    			<td> 
                           <select name='dept'>
	    				    <c:forEach items="${d}" var="d1">
	    				 	<option value="${d1.departmentId }" <c:if test="${d1.departmentId==user.departmentId }" > selected </c:if> > ${d1.departmentName }</option>
	    				 	</c:forEach>
	    				 </select>
	    				  
	    			</td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td>用户所在岗位</td>
	    			<td>
	    			 	<select name='job'>
	    				    <c:forEach items="${j}" var="j1">
	    				 	<option value="${j1.jobId }" <c:if test="${j1.jobId==user.jobId }" > selected </c:if> > ${j1.name}</option>
	    				 	</c:forEach>
	    				 </select>
	    				
	    			</td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td>用户状态</td>
	    			<td>
	    				<input type="radio" name="userStatus" value="1" checked>启用
	    				<input type="radio" name="userStatus" value="0" >禁用
	    			</td>
	    		</tr>
	    		<tr bgcolor="#FFFFFF">
	    			<td colspan="2" align="center">
	    			   <input type="submit" value="新增">
	    			   <input type="button" value="取消" onclick="history.back();">
	    			</td>
	    		</tr>
	    		
	    	</table>
    	</form>
  </body>
</html>