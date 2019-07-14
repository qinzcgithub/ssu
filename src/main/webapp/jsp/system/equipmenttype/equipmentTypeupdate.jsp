<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>设备更新页面</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
  </head>
  
  <body>
			<span class="sys_list_yh">系统管理&gt;&gt;银行设备种类管理列表&gt;&gt;修改银行设备种类管理</span>
     <form action="../equipmentType/equipmentTypeToUpdate.do" method="post">
        <table align="center" border="1" width="60%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备种类ID</td><td><input type="text" name="equipmentId" value="${Eid }" readonly></td>
           </tr>
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备名称</td><td><input type="text" name="equipmentName" value="${Ename }"></td>
           </tr>
        </table>
        <p align="center">
          <input type="submit" value="修改"> 
          <input type="button" value="返回" onclick="history.back();">
        </p>
     </form>
  </body>
</html>
