<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <title>修改银行设备明细</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
  </head>
  
  <body>
			<span class="sys_list_yh">系统管理&gt;&gt;银行设备明细列表&gt;&gt;修改银行设备明细</span>
     <form action="${pageContext.request.contextPath }/bank/bankEquipmentUpdate.do?bankId=${bankId}&id=${id}" method="post">
        <table align="center" border="1" width="60%">
           <tr>
	             <td bgcolor="#F2F2F2" align="center" width="30%">设备流水ID</td>
	             <td><input type="text" name="equipmentEachId" value="${list.equipmentEach_ID }" readonly></td>
          </tr>
           <tr>
	             <td bgcolor="#F2F2F2" align="center" width="30%">所属种类名</td>
	             <td>
	             <!-- 设备种类准备数据 -->
	             <input type="hidden" name="equipmentId" value="${list.equipment_id }">
	             <input type="text" name="equipmentName" value="${Ename }" readonly>
	             </td>
           </tr>
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">所在银行</td>
       		 <td>
		        <!-- 银行网点准备数据 -->
		         <input type="text" name="bankName" value="${bankName }" readonly>
		         <input type="hidden" name="bankId"  value="" >
       		 </td>
           </tr>
           <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">购入价值</td><td><input type="text" name="equipmentValue" value="${list.equipment_Value }" readonly></td>
          </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">购入时间</td>
        <td>
      
         <input name="equipmentBuyDate" value="${list.equipment_BuyDate }"  readonly>
      
        </td></tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备状态</td>
        <td>
          <select name="status">
          	<c:if test="${status==1 }"><option selected>设备正常</option></c:if>
          	<c:if test="${status!=1 }"><option >设备正常</option></c:if>
          	<c:if test="${status==2 }"><option selected>设备报检</option></c:if>
          	<c:if test="${status!=2 }"><option >设备报检</option></c:if>
          	<c:if test="${status==0 }"><option selected>停用设备</option></c:if>
          	<c:if test="${status!=0 }"><option >停用设备</option></c:if>
          </select>
         </td>
           </tr>
            <tr>
             <td bgcolor="#F2F2F2" align="center" width="30%">设备折旧残值</td><td><input type="text" name="depreciationValue" value="${list.depreciation_Value }"></td>
       </tr>
      
        </table>
        <p align="center">
           <input type="submit" value="提交">
           <input type="button" value="取消" onclick="history.back();">
        </p>
     </form>
  </body>
</html>

