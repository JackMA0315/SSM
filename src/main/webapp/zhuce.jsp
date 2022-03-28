<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" >
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        #myLogin{
            border: 1px solid #000;
            width: 640px;
            height: 300px;
            margin-left: 400px;
            margin-top: 140px;
        }
        #userDiv{
            margin-top: 30px;
            margin-right: 10px;
        }
        #pwdDiv{
            margin-top: 30px;
            margin-right: 10px;
        }
        #pwdDiv1{
            width: 600px;
        }
    </style>
    <script>
        function qrmm() {
            var password = document.getElementById("password").value;
            var querenmm = document.getElementById("doublePassword").value ;
            if(password != querenmm){
                alert("两次密码不相同，请检查");
            }
        }
    </script>
</head>
<body>
<div id="myLogin">
    <form class="form-horizontal" action="${pageContext.request.contextPath}/login" method="post">
        <div class="form-group" id="userDiv">
            <label for="username" class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="name" id="username" placeholder="请您输入用户名">
            </div>
        </div>
        <div class="form-group" id="pwdDiv">
            <label for="password" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="password" id="password" placeholder="请输入密码">
            </div>
        </div>
        <div class="form-group" id="pwdDiv1">
            <label for="password" class="col-sm-2 control-label">确认密码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="password" id="doublePassword" onblur="qrmm()" placeholder="请输入密码">
            </div>
        </div>
        <div class="form-group" style="margin-left: 30px">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> 记住密码
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group" style="margin-left: 30px">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">注册</button>
            </div>
            <span style="color: red;font-size: 20px;"><strong>${msg}</strong>   </span>
        </div>
    </form>
</div>
</body>
</html>
