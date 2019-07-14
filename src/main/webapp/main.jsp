<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
     <base href="<%=basePath%>">
     <title>商业银行巡检系统</title>
     <meta http-equiv="pragma" content="no-cache">
     <meta http-equiv="cache-control" content="no-cache">
     <meta http-equiv="expires" content="0">
     <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
     <meta http-equiv="description" content="This is my page">
     <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
     <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/platform.css">

 </head>

 <body>
	<div class="container">
	    <!--  top -->
		<div id="pf-hd">
			<div id="pf-page" >
				<iframe src="top.jsp" frameborder="0" height="100%" width="100%" scrolling="auto"></iframe>
			</div>
		 </div>


        <!-- 中间部分 -->
		<div id="pf-bd">
		    <!-- 左侧列表 -->
			<div id="pf-sider" >
				<h2 class="pf-model-name">
					<span class="pf-sider-icon"></span> <span class="pf-name">系统管理</span>
				</h2>
                
				<!-- 左侧 -->
				<iframe src="left.jsp" frameborder="0"  height="100%" width="100%" scrolling="auto" name="msghtml" ></iframe>
			</div>
			<div id="pf-page" >
				<iframe src="center.jsp" frameborder="0" height="100%" width="100%" scrolling="auto" name="mainfre"></iframe>
			</div>
		</div>
		
	  	<!-- 底边部分 -->
		<div id="pf-ft"></div>
    </div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/lib/layer/layer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/menu.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/main.js"></script>


  </body>
</html>
