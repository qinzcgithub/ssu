<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改设备报修问题</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
  </head>
  
  <body>
  
       <span class="sys_list_yh">系统管理&gt;&gt;设备报修问题列表&gt;&gt;修改设备报修问题</span>
       
     <form action="${pageContext.request.contextPath }/frt/frtUpdate.do" method="post">
        <table align="center" border="1" width="60%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">问题编号</td><td><input name="faultRepairType.pitypeId" value="${id }" readonly="readonly"></td>
           </tr>
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">问题名称</td><td><input name="faultRepairType.pitypeValue" value="${name }"></td>
           </tr>
            
        </table>
        <p align="center">
           <input type="submit" value="提交">
         
           <input type="button" value="返回" onclick="history.back();">
        </p>
     </form>
  </body>
</html>
