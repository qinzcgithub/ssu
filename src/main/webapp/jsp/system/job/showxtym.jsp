<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>展现可操作页面信息</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/main.css">
       <script type="text/javascript" src="${pageContext.request.contextPath }/js/jump.js"></script>
       <script type="text/javascript" src="${pageContext.request.contextPath }/js/jump.js"></script>   
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

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table width="100%" border="0" align="center" cellpadding="0"
						cellspacing="0">

						<tr>
							<td width="2%" align="center">

							</td>
							<td width="98%">

								<span class="sys_list_yh">系统管理&gt;&gt;岗位管理&gt;&gt;岗位页面展现</span>
							</td>
						</tr>
					</table>
					<br />
					<table width="95%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td width="5%"></td>
							<td>
								<table width="95%" border="0" align="center" cellpadding="2"
									cellspacing="1" bgcolor="#E4E4E4">
									<tr>
										<td bgcolor="#F2F2F2" align="center" width="15%">
											页面编号
										</td>
										<td bgcolor="#F2F2F2" align="center" width="15%">
											可操作页面
										</td>
										<td bgcolor="#F2F2F2" align="center" width="15%">
											可操作模块
										</td>
									</tr>
									<c:forEach items="${data.pageData}" var="d">
										<tr align="center">
											<td bgcolor="#FFFFFF">
												${d.ymbh }
											</td>
											<td bgcolor="#FFFFFF">
												${d.ymmc }
											</td>
											<td bgcolor="#FFFFFF">
												${d.funcName}
											</td>
										</tr>
									</c:forEach>
									
									
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
</table>
		<table width="95%" border="0" cellpadding="0" cellspacing="0" class="table0">
			<tr align="right">
				<td width="62%">
					<font color="black">共</font><font color="black">${data.totalRecord }</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		<a href="../job/jobLook.do?curpage=1&id=${id }">首  页</a>
		<c:if test="${data.curPage!=1 }">
			<a href="../job/jobLook.do?curpage=${data.curPage-1 }&id=${id }">上一页</a>
        </c:if>
          
        <c:if test="${data.curPage!=data.totalPage }">
	        <a href="../job/jobLook.do?curpage=${data.curPage+1 }&id=${id }">下一页</a>
	        
        </c:if>
        <a href="../job/jobLook.do?curpage=${data.totalPage }&id=${id }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../job/jobLook.do?id=${id }&curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>	   
				</td>
			</tr>
		</table>
		<div align="center">
			<input type="button" value="返回" onclick="history.back();">
		</div>
	</body>
</html>
