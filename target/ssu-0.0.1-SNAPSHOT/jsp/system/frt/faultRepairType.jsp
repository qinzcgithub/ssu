<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>设备报修问题展现</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
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
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;设备报修问题列表</a>
        </div>
    </div>
    <div id="inner-bd">
        <div class="button-group">
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='${pageContext.request.contextPath }/jsp/system/frt/faultRepairTypenew.jsp'">
            </div>
             <div class="button">
              <img src="${pageContext.request.contextPath }/images/search1.gif" onclick="openfind();">
            </div>
         </div>
         
         <div id="find" style="display: none">
   			 <form action="../frt/frtlist.do?frtName=${name}" >
    		  <table>
      			 <tr>
		  			<td>设备种类名称：</td>
		   			<td><input name="frtName" type="text" value=""></td>
		   			<td><input type="image" src="${pageContext.request.contextPath }/images/search1.gif" class="input_button9" title="搜索"></input></td>
				</tr>
	  		  </table>
			</form>
		</div>
         
         <table class="kv-table">
         	<thead>
            	 <tr>
                    <td class="kv-num">问题编号 </td>
                    <td class="kv-name">问题名称 </td>
                    <td class="kv-handle">操作</td>
                </tr>
            </thead>
            <tbody>
            	<c:forEach items="${data.pageData}" var="d">
	                <tr>
	                    <td>${d.pitype_ID }</td>
	                    <td>${d.pitype_Value }</td>
	                    <td>
	                    	<div class="handle">
	                    		<a href="${pageContext.request.contextPath }/frt/frtDel.do?id=${d.pitype_ID}" onclick="return confirm('确认删除吗？')">
                        			<span class="handle-icon del"></span>
                        		</a>
                          		<a href="${pageContext.request.contextPath }/frt/gofrtFix.do?id=${d.pitype_ID}">
                        			<span class="handle-icon fix"></span>
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
		<font color="black">共</font><font color="black">${data.totalRecord }</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		<a href="../frt/frtlist.do?curpage=1&frtName=${name}">首  页</a>
		<c:if test="${data.curPage!=1 }">
			<a href="../frt/frtlist.do?curpage=${data.curPage-1 }&frtName=${name}">上一页</a>
        </c:if>
          
        <c:if test="${data.curPage!=data.totalPage }">
	        <a href="../frt/frtlist.do?curpage=${data.curPage+1 }&frtName=${name}">下一页</a>
	        
        </c:if>
        <a href="../frt/frtlist.do?curpage=${data.totalPage }&frtName=${name}">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../frt/frtlist.do?frtName=${name}&curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>

