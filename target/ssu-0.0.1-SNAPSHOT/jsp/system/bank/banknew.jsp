<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
    <title>新增银行网点</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
    <script type="text/javascript" src="../js/check.js"></script>
  </head>
  
  <body>
  	<span class="sys_list_yh">系统管理&gt;&gt;银行网   点列表&gt;&gt;新增银行网点</span>
		
     <form action="${pageContext.request.contextPath }/bank/bankAdd.do" method="post" onsubmit="return  checkBankId('bankId');">
        <table align="center" border="1" width="60%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行编号</td><td><input type="text" name="bankId" onblur="checkBankId('bankId');"  id="bankId">(不能使用汉字且长度小于10位)
              <span id="show"></span>
             </td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行名称</td><td><input type="text" name="bankName"></td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行位置经度</td><td><input type="text" name="bankLongitude"></td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行位置纬度</td><td><input type="text" name="bankLatitude"></td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">银行IP</td><td><input type="text" name="bankIp">(Ip格式:xxx.xxx.xxx.xxx)</td>
           </tr>
        </table>
        <p align="center">
          <input type="submit" value="保存"> 
           <input type="button" value="取消" onclick="history.back();">
        </p>
     </form>
  </body>
</html>
