<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
   <head>
   
    <title>新增银行设备明细</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
    <script type="text/javascript" src="../js/check.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/cal.js"></script>
    <script type="text/javascript">
    	jQuery(document).ready(function () {
			$('#time1').simpleDatepicker({ startdate: 1960, enddate: 2060 });
    	});
    </script>
  </head>
  
  <body>
	<span class="sys_list_yh">系统管理&gt;&gt;银行设备明细列表&gt;&gt;新增银行设备明细</span>
     <form action="${pageContext.request.contextPath }/bank/bankEquipmentAdd.do?bankId=${bankId}" method="post" onsubmit="return checkBankEquId('bankEquId');">
        <table align="center" border="1" width="60%">
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备流水ID</td><td><input type="text" name="equipmentEachId" onblur="checkBankEquId('bankEquId');"id="bankEquId">(不能使用汉字且长度小于10位)
             <span id="show"></span>
             </td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">所属种类名</td>
             <td>
             	<select name="equipmentId">
             		<c:forEach items="${typeName}" var="tn">
             			<option value="${tn.equipment_Id }">${tn.equipment_Name}</option>
             		</c:forEach>
             	</select>
            </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">所在银行</td>
        <td>
        <!-- 银行网点准备数据 -->
             <input type="hidden" name="bankId" value="">
             <input type="text" name="bankName" value="${bankName}" readonly>
        </td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">购入价值</td><td><input type="text" name="equipmentValue"></td>
           </tr>
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">购入时间</td>
        	 <td>
        	  <input type="text" name="equipmentBuyDate"   id="time1" class="addTimeInit" value="点击显示时间列表" readonly="readonly">
        	  
       		 </td> 
          </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备状态</td>
        <td>
         <select name="status">
	          
	          	<option  >设备正常</option>
	          	
	          	<option >设备报检</option>
	          	
	          	<option >停用设备</option>
	         
          </select>
        </td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备折旧残值</td><td><input type="text" name="depreciationValue"></td>
           </tr>
        </table>
        <p align="center">
          <input type="submit" value="保存"> 
          <input type="button" value="取消" onclick="history.back();">
        </p>
     </form>
  </body>
</html>

