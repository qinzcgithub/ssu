<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>巡检组列表</title>
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
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;巡检组列表</a>
        </div>
    </div>
    <div id="inner-bd">
        <div class="button-group">
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='../pigroup/goPigroupAdd.do?groupId=${d.group_ID}'">
            </div>
         </div>
         <table class="kv-table">
         	<thead>
            	 <tr>
                    <td class="kv-num">巡检组编号 </td>
                    <td class="kv-name">巡检组名称 </td>
                    <td class="kv-handle">操作</td>
                </tr>

            </thead>
            <tbody>
            	<c:forEach items="${data.pageData}" var="d">
					<tr>
		                    <td class="kv-num">${d.group_ID }</td>
		                    <td class="kv-name">${d.group_Name }</td>
		                    <td class="kv-handle">
							  <div class="handle">
							  	<a href="../pigroup/pigroupFp.do?groupId=${d.group_ID}">
							        <span>重新分配</span>
							    </a>
							  	<a href="../pigroup/gopigroupUptate.do?groupId=${d.group_ID}">
							        <span class="handle-icon fix"></span>
							    </a>
						        <c:if test="${d.count!=0}" >
						        	<a href="../pigroup/pigroupLook.do?groupId=${d.group_ID}&groupName=${d.group_Name }">
		                        		<span class="handle-icon editstate"></span>
		                        	</a>
	                        	</c:if>
	                        	<c:if test="${d.count==0}">
	                        		<a href="../pigroup/pigroupDel.do?groupId=${d.group_ID}" onclick="return confirm('确认删除吗？')">
		                        	<span class="handle-icon del" ></span>
	                        		</a>
	                        	</c:if>
									
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
		
		 <a href="../pigroup/pigrouplist.do?curpage=1">首  页</a>
		<c:if test="${data.curPage!=1}">
			 <a href="../pigroup/pigrouplist.do?curpage=${data.curPage-1 }">上一页</a>
	      
     	</c:if>
     	  
        <c:if test="${data.curPage!=data.totalPage}">
	         <a href="../pigroup/pigrouplist.do?curpage=${data.curPage+1 }">下一页</a>
	        
        </c:if>
         <a href="../pigroup/pigrouplist.do?curpage=${data.totalPage  }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../pigroup/pigrouplist.do?curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>

</body>
</html>
