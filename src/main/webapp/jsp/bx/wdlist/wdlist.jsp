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
	function openfind() {
		document.all('find').style.display = "";
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
					<input name="button" type="image" src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='usernew.html'" />
				</div>
				<div class="button">
					<input name="button" type="image" src="${pageContext.request.contextPath }/images/search1.gif" onclick="openfind();" />
				</div>
			</div>
		</div>

		<div id="find" style="display:none">
			<form action="javascript:;">
				<table>
					<tr>
						<td>网点名称：</td>
						<td><input name="" type="text" value="">
						</td>
						<td>报修记录状态：</td>
						<td>
						      <select >
						        <option>处在报修</option>
						        <option>结束报修</option>
						        <option>正在申请</option>
						        <option>银行确认</option>
						      </select>
						</td>
						
							<td>报修记录状态：</td>
						<td>
						      <select >
						        <option>未分配巡检组</option>
						        <option>已分配巡检组</option>
						      </select>
						</td>
						
						<td>报修时间</td>
						<td><input name="" type="text" value="">至<input name="" type="text" value="">
						</td>
						
						
						<td><input type="image" src="${pageContext.request.contextPath }/images/search1.gif"
							class="input_button9" title="搜索"></input>
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<table class="kv-table">
			<thead>
				<tr>
					<td>编号</td>
					<td>银行名称</td>
					<td>设备故障种类</td>
					<td>设备流水号</td>
					<td>报修时间</td>
					<td>记录状态</td>
					<td>修完时间</td>
					<td>操作</td>
				</tr>
			</thead>

			<tbody>
			<c:forEach items="${data.pageData}" var="d">
				<tr>
					<td>${d.repair_ID }</td>
					<td>${d.bankName }</td>
					<td>${d.pitype_Type }</td>
					<td>${d.equipmentEach_ID }</td>
					<td>${d.fault_Repair_Begin_Date }</td>
					<td>${d.repair_Status }</td>
					<td>${d.fault_Repair_End_Date }</td>
					<td><div class="handle">
							<span class="handle-icon fix"></span> 
							<span class="handle-icon del"></span> <span class="handle-icon b"></span>
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
		
		 <a href="../sbbx/sbbx!listw.do?curpage=1">首  页</a>
		<c:if test="${data.curPage!=1}">
			 <a href="../sbbx/sbbx!listw.do?curpage=${data.curPage-1 }">上一页</a>
	      
     	</c:if>
     	  
        <c:if test="${data.curPage!=data.totalPage}">
	         <a href="../sbbx/sbbx!listw.do?curpage=${data.curPage+1 }">下一页</a>
	        
        </c:if>
         <a href="../sbbx/sbbx!listw.do?curpage=${data.totalPage  }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../sbbx/sbbx!listw.do?curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>
