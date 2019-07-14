<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
<title>Insert title here</title>
<script type="text/javascript">
	function openfind() {
    		document.all('find').style.display = "";
    	}
    function goto2(u){
		var url=u;
		var page=document.getElementById("pagebox").value-0;
		var i="${data.totalPage}"-0;
		if(page<1||page>i){
			alert("没这页啊老哥")
		}else{
			location.href=url+page
		}
	}	

</script>

</head>


<body>
<div class="containner">
	<div id="inner-hd">
    	<div class="crumbs">
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;银行设备明细列表</a>
        </div>
    </div>
    <div id="inner-bd">
        <div class="button-group">
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='../bank/goBankEquipmentAdd.do?BankId=${bankId }'">
            </div>
             <div class="button">
             <img src="${pageContext.request.contextPath }/images/search1.gif" onclick="openfind();">
            </div>
         </div>
         <div id="find" style="display: none">
   			 <form action="../bank/bankEquipment.do" >
    		  <table>
      			 <tr>
		  			<td>设备种类ID：</td>
		  			<input type="hidden" name='bankId'  value="${bankId }" />
		   			<td><input name="SbName" type="text" value=""></td>
		   			<td><input type="image" src="${pageContext.request.contextPath }/images/search1.gif" class="input_button9" title="搜索"></input></td>
				</tr>
	  		  </table>
			</form>
		</div>
         
         <table class="kv-table">
         	<thead>
            	 <tr>
				    <td >设备流水ID</td>
					<td >银行编号ID</td>
					<td >设备种类ID</td>
					<td >购入价格</td>
					<td >购入时间</td>
					<td >设备状态</td>
					<td >设备折旧残值</td>
					<td >操作</td>
				</tr>
            	
            </thead>
            <tbody>
            	<c:forEach items="${data.pageData}" var="d">
            	
            	
            	     
	                 <tr>
					    <td >${d.equipmentEach_ID }</td>
						<td >${d.bank_id }</td>
						<td >${d.equipment_id }</td>
						<td >${d.equipment_Value }</td>
						<td >${d.equipment_BuyDate }</td>
						
						<c:if test="${d.status==1 }"><td >设备正常</td></c:if>
						<c:if test="${d.status==2 }"><td >设备报检</td></c:if>
						<c:if test="${d.status==0 }"><td >停用设备</td></c:if>
						
						<td >${d.depreciation_Value }</td>
						<td ><div class="handle">
							
						       <a href="../bank/goBankEquipmentUpdate.do?id=${d.equipmentEach_ID }&bankId=${bankId }&eid=${d.equipment_id }&status=${d.status}">
						       	<span class="handle-icon fix" ></span>
						      </a> 
						      <a href="../bank/BankEquipmentDel.do?id=${d.equipmentEach_ID }&bankId=${bankId }" onclick="return confirm('确认删除吗？')">
						       	<span class="handle-icon del" ></span>
						      </a> 
	                     	</div>
						</td>
					</tr>
				</c:forEach>
            </tbody>
        </table>
	</div>
</div>
<div>
 <p align="right">
		<font color="black">共</font><font color="black">${data.totalRecord}</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		 <a href="../bank/bankEquipment.do?curpage=1&SbName=${name}&bankId=${bankId}">首  页</a>
		<c:if test="${data.curPage!=1}">
			 <a href="../bank/bankEquipment.do?curpage=${data.curPage-1 }&SbName=${name}&bankId=${bankId}">上一页</a>
	      
     	</c:if>
     	  
        <c:if test="${data.curPage!=data.totalPage}">
	         <a href="../bank/bankEquipment.do?curpage=${data.curPage+1 }&SbName=${name}&bankId=${bankId}">下一页</a>
	        
        </c:if>
         <a href="../bank/bankEquipment.do?curpage=${data.totalPage  }&SbName=${name}&bankId=${bankId}">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../bank/bankEquipment.do?SbName=${name}&bankId=${bankId}&curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>
