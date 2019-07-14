<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML >
<html>
  <head>
    <title>用户分页展现</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jump.js"></script>   
    
    <script type="text/javascript">
    	function openfind() {
    		document.all('find').style.display = "";
    	}
    	
    	function goto2(u) {
		    var url = u;
		    var v = document.getElementById("pagebox").value-0;
		    var i="${data.totalPage}"-0;
		    if(v<1||v>i){
		     alert("傻啊！！！");
		    }else{
			location.href = url+v;
		  }
     }
    </script>               
</head>

<body>
<div class="containner">
	<div id="inner-hd">
    	<div class="crumbs">
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;用户管理</a>
        </div>
    </div>
    <div id="inner-bd">
    
        <div class="button-group">
            <div class="button">
              <input name="button" type="image" src="${pageContext.request.contextPath }/images/add.gif"  onclick="location.href='../user/toAdd.do'"/>
            </div>
            <div class="button">
		      <input name="button" type="image" src="${pageContext.request.contextPath }/images/search1.gif"  onclick="openfind();"/>
            </div>
         </div>
         <div id="find" style="display: none">
   			 <form action="../user/userList.do" >
    		  <table>
      			 <tr>
      				<td>用户登陆ID：</td> 
      				<td><input name="loginId" type="text" value=""></td>
		  			<td>用户中文名：</td>
		   			<td><input name="userName" type="text" value=""></td>
		   			<td><input type="image" src="${pageContext.request.contextPath }/images/search1.gif" class="input_button9" title="搜索"></input></td>
				</tr>
	  		  </table>
			</form>
		</div>
   </div>
         
         <table class="kv-table">
         	<thead>
            	 <tr>
            	    <td > 用户登陆ID </td>
				    <td > 用户中文名字 </td>
				    <td > 用户所在部门 </td>
				    <td > 用户所属岗位 </td>
				    <td > 用户状态 </td>
				    <td > 操作 </td>
                 </tr>
            </thead>
            <tbody>
               
               <c:forEach items="${data.pageData}" var="user" >
               <tr>
                     <td >${user.loginId } </td>
					 <td >${user.userName } </td>
					 <td >${user.departmentName } </td>
					 <td >${user.jobName } </td>
					 <td >${user.userStatus==1?'启用':'禁用' } </td>
					 <td >
					   <div class="handle">
					   <a href="../user/toUserUpte.do?loginId=${user.loginId }" >
					        <span class="handle-icon fix"></span>
					   </a>
					   <c:if test="${user.loginId!='admin' }">
					   	<a href="../user/userDelete.do?userId=${user.loginId }" >
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
	    <p align="right">
		<font color="black">共</font><font color="black">${data.totalRecord}</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		 <a href="../user/userList.do?curpage=1 ">首  页</a>
		<c:if test="${data.curPage!=1 }">
         <a href="../user/userList.do?curpage=${data.curPage-1 }">上一页</a>
        </c:if>
        <c:if test="${data.curPage!=data.totalPage }" >
         <a href="../user/userList.do?curpage=${data.curPage+1 }&loginId=${log}&userName=${un}">下一页</a>
        
        </c:if> 
         <a href="../user/userList.do?curpage=${data.totalPage }">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../user/userList.do?curpage=');" href="javascript:;"> 跳转</a>
		   </p>
  </body>
</html>