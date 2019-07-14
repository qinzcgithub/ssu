<#assign base = request.contextPath/>
<!DOCTYPE HTML>
<HTML lang="en">
<HEAD>
    <TITLE>测试首页</TITLE>
    <#--<base id="base" href="${base}">-->
    <link rel="stylesheet" href="/static/css/bootstrap.min.css" />
    <#--<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>-->
    <script src="/static/js/bootstrap.min.js"></script>
</HEAD>
<BODY>
${name}
<#--<a class="getBook" onclick="dianji()">点击</a><br/>-->
<#--<button onclick="dianji()">点击</button>-->
</BODY>
<SCRIPT>
    // function dianji() {
    //     $.ajax({
    //         url: "/account/g/1",
    //         type: "GET",
    //         success: function (data) {
    //             alert(data);
    //         }
    //     })
    // }
    // var base = document.getElementById("base").href;
    // // 与后台交互
    // _send = function(async,url, value, success, error) {
    //     $.ajax({
    //         async : async,
    //         url : base + '/' + url,
    //         contentType : "application/x-www-form-urlencoded; charset=utf-8",
    //         data : value,
    //         dataType : 'json',
    //         type : 'post',
    //         success : function(data) {
    //             success(data);
    //         },
    //         error : function(data) {
    //             error(data);
    //         }
    //     });
    // };

</SCRIPT>
</HTML>