<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
     String path = request.getContextPath();
     String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        <div id="pf-hd">
            <!-- Log -->
            <div class="pf-logo">
                <img src="images/logo.png" alt="logo">
           </div>
           <!--  top     -->
           <ul class="pf-nav">
              <c:forEach items="${functions }" var="function">
                  <c:if test="${function.funcName == '系统管理' }">
                       <li class="pf-nav-item system current" data-menu="system">
                         <a href="./login/leftList.do?funcId=${function.funcId }" target="msghtml" >
                             <span class="pf-nav-icon system-icon"></span>
                             <span class="pf-nav-title">系统管理</span>
                         </a>
                       </li>
                  </c:if>

                  <c:if test="${function.funcName == '报修管理' }">
                       <li class="pf-nav-item repair" data-menu="repair">
                         <a href="./login/leftList.do?funcId=${function.funcId }" target="msghtml" >
                             <span class="pf-nav-icon repair-icon"></span>
                             <span class="pf-nav-title">报修管理</span>
                         </a>
                        </li>
                  </c:if>
                  
                  <c:if test="${function.funcName == '巡检管理' }">
                       <li class="pf-nav-item polling" data-menu="polling">
                          <a href="./login/leftList.do?funcId=${function.funcId }" target="msghtml" >
                             <span class="pf-nav-icon polling-icon"></span>
                             <span class="pf-nav-title">巡检管理</span>
                          </a>
                      </li>
                  </c:if>
         </c:forEach>
      </ul>
      
      
      <div class="pf-user" >       	
            <div class="pf-user-quit" ><a href="${pageContext.request.contextPath }/login/logout.do" target="_top">退出</a></div>
      </div>
  </div>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/lib/layer/layer.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/menu.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/main.js"></script>
</body>
</html>