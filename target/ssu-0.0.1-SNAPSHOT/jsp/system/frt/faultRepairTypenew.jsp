<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新增设备报修问题</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/check.js"></script>
  </head>
  
  <body>

			<span class="sys_list_yh">系统管理&gt;&gt;设备报修问题列表&gt;&gt;新增设备报修问题</span>
     <form action="${pageContext.request.contextPath }/frt/frtAdd.do" method="post" onsubmit="return checkdataRepairType();">
        <table align="center" border="1" width="75%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">问题类型名称</td><td><input name="faultRepairType.pitypeValue" onchange="checkFaultRepaitTypeName('PitypeValue')" id="PitypeValue"><span id="show"></span></td>
           </tr>
           
        </table>
        <p align="center">
          <input type="submit" value="保存"> 
          <input type="button" value="返回" onclick="history.back();">
        </p>
     </form>
  </body>
</html>
