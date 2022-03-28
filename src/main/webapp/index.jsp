<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<hr/>
<form action="#" id="loginForm">
    用户名:<input type="text" placeholder="请输入用户名" name="username"><br/>
    密&ensp;&ensp;码:<input type="password" placeholder="请输入密码" name="password"><br/>
    <input type="button"  id="myLogin" value="登录" >
    <input type="button" href="zhuce.jsp" id="zhuCe" value="注册" >

</form>
</body>
<script>
    $(function(){
        $("#myLogin").click(function(){
            $.ajax({
                url:"/SpringMVC_02/admin/login",
                data: $("#loginForm").serialize(),
                type :"post" ,
                success: function (resp) {
                    if(resp.code==1){
                        alert(resp.msg) ;
                    }
                },
                error: function(resp){
                },
                dataType: "json"
            });
        });
    });
</script>
</html>
