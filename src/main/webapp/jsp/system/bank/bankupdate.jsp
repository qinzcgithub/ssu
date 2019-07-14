<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改银行网点</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
  </head>
  
  <body>
	   <span class="sys_list_yh">系统管理&gt;&gt;银行网点管理&gt;&gt;修改银行网点</span>
     <form action="../bank/bankUpdate.do" method="post">
        <table align="center" border="1" width="60%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行编号</td><td><input type="text" name="bankId" value="${bank.bank_id }" readonly></td>
           </tr>
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行名称</td><td><input type="text" name="bankName" value="${bank.bank_Name }"></td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行位置经度</td><td><input type="text" name="bankLongitude" value="${bank.bank_Longitude }"></td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行位置纬度</td><td><input type="text" name="bankLatitude" value="${bank.bank_Latitude }"></td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行IP</td><td><input type="text" name="bankIp" value="${bank.bank_IP }"></td>
           </tr>
        </table>
        <p align="center">
           <input type="submit" value="修改">
            <input type="button" value="取消" onclick="history.back();">
        </p>
     </form>
  </body>
</html>
