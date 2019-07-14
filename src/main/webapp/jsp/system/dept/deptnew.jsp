<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新增部门</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../../css/main.css">
    <script type="text/javascript" src="../../js/check.js"></script>
  </head>
  
  <body>
			<span class="sys_list_yh">系统管理&gt;&gt;部门列表&gt;&gt;新增部门</span>
     <form action="${pageContext.request.contextPath }/dept/deptAdd.do" method="post" onsubmit="return checkDeptname('deptname')">
        <table align="center" border="1" width="60%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">部门名称</td><td><input type="text" name="departmentName" id="deptname" onblur="checkDeptname('deptname')">
             <span id="show"></span>
             </td>
           </tr> 
           
        </table>
        <p align="center">
          <input type="submit" value="保存"> 
          <input type="button" value="返回" onclick="history.back();">
        </p>
     </form>
  </body>
</html>
