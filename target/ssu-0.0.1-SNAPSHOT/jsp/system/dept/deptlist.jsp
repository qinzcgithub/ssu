<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>部门列表</title>
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
            <a href="javascript:;" class="crumbs-label">系统管理>>部门列表</a>
        </div>
    </div>
    <div id="inner-bd">
        <div class="button-group">
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='../dept/toAdd.do'">
            </div>
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/search1.gif" onclick="openfind();">
            </div>
         </div>
         
         <div id="find" style="display: none">
   			 <form action="../dept/deptList.do" >
    		  <table>
      			 <tr>
		  			<td>部门名称：</td>
		   			<td><input name="deptName" type="text" value=""></td>
		   			<td><input type="image" src="${pageContext.request.contextPath }/images/search1.gif" class="input_button9" title="搜索"></input></td>
				</tr>
	  		  </table>
			</form>
		</div>
		
         <table class="kv-table">
         	<thead>
            	 <tr>
                    <td class="kv-num">部门编号</td>
                    <td class="kv-name">部门名称</td>
                    <td class="kv-handle">操作</td>
                </tr>
            </thead>
            <tbody>
            	<c:forEach items="${data.pageData}" var="dept">
	                <tr>
	                    <td>${dept.departmentId }</td>
	                    <td>${dept.departmentName }</td>
	                    <td>
	                    	<div class="handle">
	                    		
	                        	<a href="../dept/deptUpdate.do?deptId=${dept.departmentId }&deptName=${dept.departmentName}">
	                            	<span class="handle-icon fix"></span>
	                            </a>
	                           <c:if test="${dept.count==0}">
		                            <a href="../dept/deptDel.do?deptId=${dept.departmentId }" onclick="return confirm('确认删除吗？')">
		                    			<span class="handle-icon del"></span>
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
		
		  <a href="../dept/deptList.do?curpage=1&deptName=${name}">首  页</a>
		<c:if test="${data.curPage!=1 }">
			 <a href="../dept/deptList.do?curpage=${data.curPage-1 }&deptName=${name}">上一页</a>
	    </c:if>     
	    <c:if test="${data.curPage!=data.totalPage }">
	         <a href="../dept/deptList.do?curpage=${data.curPage+1 }&deptName=${name}">下一页</a>
	       
        </c:if>
          <a href="../dept/deptList.do?curpage=${data.totalPage  }&deptName=${name}">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../dept/deptList.do?deptName=${name}&curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>
