<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 小胖
  Date: 2020/1/7
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% pageContext.setAttribute("ctx",request.getContextPath());%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Login</title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <link rel="icon" href="${ctx}/bootstrap/assets/img/icon.ico" type="image/x-icon"/>

    <!-- Fonts and icons -->
    <script src="${ctx}/bootstrap/assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
        WebFont.load({
            google: {"families":["Open+Sans:300,400,600,700"]},
            custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"],
                urls: ['${ctx}/bootstrap/assets/css/fonts.css']},
            active: function() {
                sessionStorage.fonts = true;
            }
        });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="${ctx}/bootstrap/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/bootstrap/assets/css/azzara.min.css">
</head>
<body class="login">
<div class="wrapper wrapper-login">
    <div class="container container-login animated fadeIn">
        <h3 class="text-center">Sign In To Admin</h3>
        <form action="${ctx}/admin/login" method="post">
            <div class="login-form">
                <div class="form-group form-floating-label">
                    <input id="username" name="username" type="text" class="form-control input-border-bottom" required>
                    <label for="username" class="placeholder">Username</label>
                </div>
                <div class="form-group form-floating-label">
                    <input id="password" name="password" type="password" class="form-control input-border-bottom" required>
                    <label for="password" class="placeholder">Password</label>
                    <div class="show-password">
                        <i class="flaticon-interface"></i>
                    </div>
                </div>
                <div class="form-action mb-3">
                    <button type="submit" class="btn btn-primary btn-rounded btn-login" >Sign In</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="${ctx}/bootstrap/assets/js/core/jquery.3.2.1.min.js"></script>
<script src="${ctx}/bootstrap/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="${ctx}/bootstrap/assets/js/core/popper.min.js"></script>
<script src="${ctx}/bootstrap/assets/js/core/bootstrap.min.js"></script>
<script src="${ctx}/bootstrap/assets/js/ready.js"></script>
</body>
</html>
