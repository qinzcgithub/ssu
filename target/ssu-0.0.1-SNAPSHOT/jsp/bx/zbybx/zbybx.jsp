<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>巡检中心新增设备报修</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/selecttime1.js"> </script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ajaxsbmx.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.js"></script>
    <script type="text/javascript">
    function ckick(){
       var wtlxs=document.getElementById("sbmx");
       if(wtlxs.value==""){
         alert("请选择设备明细");
          return false;
       }
    }
    $(function(){
		$("#wdxx").change(function(){
			$.ajax({
		    	url:"${pageContext.request.contextPath }/bank",
				type:"post",
				dataType:"json",
				data:{"bankId":$(this).val()},
				success:function(data){
					$("#sbmx").append("<option value=''>请选择ID</option>")
					for (var i = 0; i < data.length; i ++) {
						//alert(data[i].equipmentEach_ID);
						$("#sbmx").append("<option  value='"+data[i].equipment_id+"'>"+data[i].equipmentEach_ID+"</option>")
					}
					//$("#sbmx").append(" <c:forEach items="data" var="d"><option value=''>"+d.equipmentEach_ID+"</option></c:forEach>")
				},
				error:function(){
					alert("错了错了");
				}
			});
		
		});
		
		
		$("#sbmx").change(function(){
			$("#sbzl").empty();
			$.ajax({
		    	url:"${pageContext.request.contextPath }/sbzl",
				type:"post",
				dataType:"json",
				data:{"EtId":$(this).val()},
				success:function(data){
						//alert(data[i].equipmentEach_ID);
						$("#sbzl").append("<option value=''>确认种类</option>")
						$("#sbzl").append("<option value='"+data+"'>"+data+"</option>")
				},
				error:function(){
					alert("错了错了");
				}
			});
		
		});
		
   	});
    	
  	</script>
   
  </head>

  
  <body>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table width="100%" border="0" align="center" cellpadding="0"
						cellspacing="0">

						<tr>
							<td width="2%" align="center">

							</td>
							<td width="98%">
							<span class="sys_list_yh">巡检中心&gt;&gt;新增设备报修</span>
							</td>
						</tr>
					 </table>
					 <br />
		 <form action="../sbbx/sbbx!wdlistAdd.do?" method="post"  onsubmit="return ckick();" >
				        
					     <input type="hidden" name="po.repairStatus" value="2" >
				   
				    <table width="50%" border="0" align="center" cellpadding="2"
								
									cellspacing="1" bgcolor="#E4E4E4">
	               
					     <tr>
					       <td>银行网点</td>
					       <td>
					        <select name="po.bank.bankId" id="wdxx" onchange="checksbmx();">
					        	 <option value="">请选择银行</option>
					        <c:forEach items="${bankList}" var="b">
   								 <option value="${b.bank_id}">${b.bank_Name }</option>
							</c:forEach>

							</select>
					       </td>
					     </tr> 
					     <tr>
					       <td>设备流水号</td>
					       <td>
					        <select id="sbmx" name="po.bankEquipment.equipmenteachId" >
					           
					        </select>
					       </td>
					     </tr>
					  
					   <tr>
					    <td>设备种类</td>
					       <td>
					         <select name="po.equipmenttype.equipmentId" id="sbzl" >
							</select>
					       </td>
					     </tr>
					   
					    <tr align="center" >
					      <td colspan="2" ><input type="submit"  value="新增"  > 
					      <input type="button" value="取消" onclick="history.go(-1)">
					       </td>
					    </tr>    
					 </table>
				 </form>
			   	</td>
			   	</tr>
			   </table>
			   		 
  </body>
</html>

