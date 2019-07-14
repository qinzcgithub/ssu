<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/font-awesome.min.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>
</head>

<body>
<div class="container">
    <div class="box">
        <div class="title"></div>
      <form name="form1" method="post" action="${pageContext.request.contextPath }/login/userLogin.do" onsubmit="return checkdata();" class="loginbox">
            <span class="heading">用户登录</span>
            <div class="form-group">
                <input name="loginId" type="text" class="form-control" placeholder="用户名" />
                <i class="fa fa-user"></i>
            </div>
            <div class="form-group">
                <input  name="loginPassword" type="password" class="form-control" id="inputPassword3" placeholder="密　码">
                <i class="fa fa-lock"></i>
            </div>
            <div class="form-group">
                <button type="submit" class="btn">登录</button>
            </div>
        </form>
        <div class="gold"></div>
    </div>
</div>
</body>
</html>