<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<% pageContext.setAttribute("ctx" , request.getContextPath());%>
<html>
<head>
    <title>前端登录</title>
    <!-- CSS Files -->
    <link rel="stylesheet" href="${ctx}/bootstrap/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/bootstrap/assets/css/azzara.min.css">
</head>
<body class="login">
    <div class="wrapper wrapper-login">
        <div class="container container-login animated fadeIn">
            <h3 class="text-center">Welcome to our FlowerShop</h3>
            <form  action="${ctx}/user/login" method="post" onSubmit="return checkForm()">
                <div class="login-form">
                    <div class="form-group">
                        <label for="username" class="placeholder"><b>Account/Email/Phone</b></label>
                        <input id="username" name="account" type="text" class="form-control" required onblur="checkUserMess()">
                    </div>
                    <div class="form-group">
                        <label for="password" class="placeholder"><b>Password</b></label>
                        <a href="#" class="link float-right">Forget Password ?</a>
                        <div class="position-relative">
                            <input id="password" name="password" type="password" class="form-control" required>
                            <div class="show-password">
                                <i class="flaticon-interface"></i>
                            </div>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="password" class="placeholder"><b>validateCode</b></label>
                        <input type="text" name="code" class="form-control"  class="form-control" required/>
                    </div>
                    <div style="width: 50% ;margin-left:30%;">
                        <img id = "code" src="${ctx}/validateCode" class = "validateCode"/>
                        <a href="javascript:refreshCode();">
                            刷新
                        </a>
                    </div>

                    <div class="form-group form-action-d-flex mb-3">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="rememberme">
                            <label class="custom-control-label m-0" for="rememberme">Remember Me</label>
                        </div>
                        <button class="btn btn-primary col-md-5 float-right mt-3 mt-sm-0 fw-bold" type="submit">Sign In</button>
                    </div>
                    <div class="login-account">
                        <span class="msg">Don't have an account yet ?</span>
                        <a href="${ctx}/reg.jsp" id="show-signup" class="link">Sign Up</a>
                    </div>
                    <!--登录拦截提示-->
                    <span style="color: red">${requestScope.msg}</span>
                </div>
            </form>
        </div>
    </div>
    <%--${requestScope.msg}
    <form  action="${ctx}/user/login" method="post" onSubmit="return checkForm()">
        <div class="form-group">
            <label class="placeholder"><b>Account/Email/Phone</b></label>
            <input type="text" name="account"  id="signin-mess" onblur="checkUserMess()" class="form-control">
        </div>
        <div class="form-group">
            <label class="placeholder"><b>Password</b></label>
            <input type="password"  name="password" class="form-control">
        </div>
        <div class="form-group">
            <label class="placeholder"><b>ValidateCode</b></label>
            <input type="text" name="code" class="form-control"/>
        </div>
        <div class="form-group">
            <img id = "code" src="${ctx}/validateCode" class = "validateCode"/>
             <a href="javascript:refreshCode();">看不清，换一个</a>
        </div>
        <div class="form-group">
             <button class="btn btn-default" type="submit">Sign In</button>
        </div>
        <a href="${ctx}/admin">后台登录</a>
        <a href="${ctx}/cart">购物车</a>
    </form>--%>

    <%--js代码--%>
    <script type="text/javascript" language="javascript">
        function checkForm(){
            var account = checkUserMess();
            return account ;
        }

        function checkUserMess(){
            var phone=/^1[34578]\d{9}$/;/* 手机号验证，11位手机号 */
            var account=/^\w{3,}$/;/*用户名验证，至少三位 */
            var email=/^\w+@\w+\.[A-Za-z]{2,3}(\.[A-Za-z]{2,3})?$/;

            /* 获取用户登陆信息 */
            var account = $("#signin-mess").val();

            /* 判断用户输入是否为邮箱，是则将name属性值改为邮箱 */
            if(email.test(account)){
                $("#signin-mess").attr("name","email");
            }

            /* 判断用户输入是否为邮箱，是则将name属性值改为邮箱 */
            if(phone.test(account)){
                $("#signin-mess").attr("name","phone");
            }
        }
    </script>

    <script type="text/javascript">

        function refreshCode(){
            document.getElementById("code").src = "${ctx}/validateCode?" + Math.random();
        }
    </script>

</body>
</html>

