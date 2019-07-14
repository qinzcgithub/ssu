<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

<title>银行网点列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
<script type="text/javascript">
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
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;银行网点列表</a>
        </div>
    </div>
    <div id="inner-bd">
        <div class="button-group">
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='../bank/toAdd.do'">
            </div>
         </div>
         <table class="kv-table">
         	<thead>
            	 <tr>
				    <td>银行ID</td>
					<td>银行名称</td>
					<td>银行位置经度</td>
					<td>银行位置纬度</td>
					<td>银行IP</td>
					<td>操作</td>
				</tr>

            </thead>
            <tbody>
            	<c:forEach items="${data.pageData}" var="d">
	                <tr>
	                    <td>${d.bank_id }</td>
	                    <td>${d.bank_Name }</td>
	                    <td>${d.bank_Latitude }</td>
	                    <td>${d.bank_Longitude }</td>
	                    <td>${d.bank_IP }</td>
	                    <td>
	                    	<div class="handle">
								<span class="handle-icon fix" onclick="location.href='${pageContext.request.contextPath }/bank/bankToUpdate.do?bankId=${d.bank_id}'"></span>
	                        	<span class="handle-icon cksbmx" onclick="location.href='${pageContext.request.contextPath }/bank/bankEquipment.do?bankId=${d.bank_id }'"></span>
	                        	<span class="handle-icon xzsbmx" onclick="location.href='${pageContext.request.contextPath }/bank/BankEquipmentAddFromB.do?BankId=${d.bank_id}'"></span>
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
		<font color="black">共</font><font color="black">${data.totalRecord }</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		 <a href="../bank/bankList.do?curPage=1">首  页</a>
		<c:if test="${data.curPage!=1}">
			<a href="../bank/bankList.do?curPage=${data.curPage-1 }">上一页</a>
        </c:if> 
        
        <c:if test="${data.curPage!=data.totalPage}">
			<a href="../bank/bankList.do?curPage=${data.curPage+1 }">下一页</a>
	       
        </c:if> 
         <a href="../bank/bankList.do?curPage=${data.totalPage }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../bank/bankList.do?curPage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>
