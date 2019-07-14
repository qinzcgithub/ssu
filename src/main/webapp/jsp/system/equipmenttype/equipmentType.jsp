<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>

<title>银行设备种类管理展现</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<%=path %>/css/base.css">
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
            <a href="javascript:;" class="crumbs-label">系统管理&gt;&gt;银行设备种类管理列表</a>
        </div>
    </div>
  
    <div id="inner-bd">
   
        <div class="button-group">
        
            <div class="button">
              <img src="${pageContext.request.contextPath }/images/add.gif" onclick="location.href='../equipmentType/equipmentTypeGoAdd.do'">
            </div>
            <div class="button">
            
              <img src="${pageContext.request.contextPath }/images/search1.gif" onclick="openfind();">
            </div>
         </div>
         
         <div id="find" style="display: none">
   			 <form action="../equipmentType/equipmentTypeList.do?typeName=${name}" >
    		  <table>
      			 <tr>
		  			<td>设备种类名称：</td>
		   			<td><input name="typeName" type="text" value=""></td>
		   			<td><input type="image" src="${pageContext.request.contextPath }/images/search1.gif" class="input_button9" title="搜索"></input></td>
				</tr>
	  		  </table>
			</form>
		</div>
         
         
         <table class="kv-table">
         	<thead>
            	 <tr>
				    <td class="kv-num">设备种类ID</td>
					<td class="kv-name">设备种类名称</td>
					<td class="kv-handle">操作</td>
                </tr>

            </thead>
            <tbody>
              <c:forEach items="${data.pageData}" var="eqType">
	                <tr>
	                    <td>${eqType.equipment_Id }</td>
	                    <td>${eqType.equipment_Name }</td>
	                    <td>
	                    	<div class="handle">
	                    		<a href="../equipmentType/equipmentTypeUpdate.do?EtId=${eqType.equipment_Id}&EtName=${eqType.equipment_Name}">
	                        		<span class="handle-icon fix" ></span>
	                        	</a>
	                        	<c:if test="${eqType.count==0}">
	                        		<a href="../equipmentType/equipmentTypeDel.do?EtId=${eqType.equipment_Id}" onclick="return confirm('确认删除吗？')">
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
		<font color="black">共</font><font color="black">${data.totalRecord }</font>
		<font color="black">项&nbsp;</font>
		<font color="black">每页</font><font color="black">${data.pageSize }</font><font color="black">项&nbsp;</font>
		<font color="black">当前第</font><font color="black">${data.curPage }</font>
		<font color="black">页&nbsp;</font>
		<font color="black">共</font><font color="black">${data.totalPage }</font>
		<font color="black">页&nbsp; </font>
		
		<a href="../equipmentType/equipmentTypeList.do?curpage=1&typeName=${name}">首  页</a>
		<c:if test="${data.curPage!=1 }">
			<a href="../equipmentType/equipmentTypeList.do?curpage=${data.curPage-1 }&typeName=${name}">上一页</a>
        </c:if>
          
        <c:if test="${data.curPage!=data.totalPage }">
	        <a href="../equipmentType/equipmentTypeList.do?curpage=${data.curPage+1 }&typeName=${name}">下一页</a>
	        
        </c:if>
        <a href="../equipmentType/equipmentTypeList.do?curpage=${data.totalPage }&typeName=${name}">尾  页</a>
           第<input id="pagebox" type="text" size="4">页<a onclick="goto2('../equipmentType/equipmentTypeList.do?typeName=${name}&curpage=');" href="javascript:;"> 跳转</a>
		   </p></div>
</body>
</html>

