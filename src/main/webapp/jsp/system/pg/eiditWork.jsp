<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>重新分配巡检工</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/css/main.css">
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/js/addData.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/js/jquery-1.8.2.js"></script>
		<script type="text/javascript">
   
	$(function() {
		$("#xjz").change(function() {
			$("#sel2").empty();
			$.ajax( {
				url : "${pageContext.request.contextPath }/pg",
				type : "post",
				dataType : "json",
				data : {
					"pgId" : $(this).val()
				},
				success : function(data) {
					for (var i = 0; i < data.length; i ++) {
						//alert(data[i].worker_Name)
						$("#sel2").append("<option  value='"+data[i].worker_ID+"'>"+data[i].worker_Name+"</option>")
					}
				},
				error : function() {
					alert("错了错了");
				}
			});

		});

	});
</script>

	</head> 
  
  <body>  

	<span class="sys_list_yh">系统管理&gt;&gt;巡检组列表&gt;&gt;重新分配巡检工</span>
					
       <form action="${pageContext.request.contextPath }/pigroup/pigroupCxfp.do?groupId=${groupId}" method="post">
       <table width="500" height="400" align="center">
         <tr height="100">
           <td colspan="2">选择巡检组：
           	<select id="xjz">
           		<option>请选择</option>
           	 	<c:forEach items="${groupList}" var="gl">
           				<option value="${gl.group_ID}" name="groupName"  />
           				${gl.group_Name }</option>
           		</c:forEach>	
           	</select>
           </td>
         </tr>
         <tr valign="top" height="300">
 			<td width="40%" height="50%">
				   <table>
				        <select size="10" multiple name="se2" id="sel2" style="width:120pt"> 	
				        	<option  value="" selected >本组员工</option>
				   <%--    	<c:forEach items="${wokerList}" var="wl">
	                            <option  value="${wl.worker_ID }" selected >${wl.worker_Name }</option>
	                        </c:forEach>  --%>  
				       </select>
				    </table>
 			  </td>	          
 			  <td valign="top">
 			     <input type="button" value="<<" onclick="Add();"><br>
 			     <input type="button" value=">>" onclick="Del();"><br>
 			   </td>
 			     <td width="40%" height="50%">
 			     	 <select size="10" multiple name="se1" id="sel1" style="width:120pt">
                            <c:forEach items="${list}" var="l">
	                            <option  value="${l.worker_ID }" selected >${l.worker_Name }</option>
	                        </c:forEach>
 			      	</select>
 			     </td>
           </tr>                         
        </table> 
         <p align="center">
           <input type="submit" value="提交">
         
           <input type="button" value="返回" onclick="history.back();">
         </p>      
      </form>
  </body>
</html>


