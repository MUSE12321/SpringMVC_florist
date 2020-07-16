<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<% pageContext.setAttribute("ctx" , request.getContextPath());%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Sign up</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="${ctx}/flowers/assets/img/icon.ico" type="image/x-icon"/>

	<!-- Fonts and icons -->
	<script src="${ctx}/flowers/assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Open+Sans:300,400,600,700"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"], urls: ['../assets/css/fonts.css']},
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

<%--	<div class="login-account">
		<span class="msg">Don't have an account yet ?</span>
		<a href="#" id="show-signup" class="link">Sign Up</a>
	</div>--%>
	<div class="container container-signup animated fadeIn">
		<h3 class="text-center">Sign Up</h3>

		<form action="${ctx}/user/reg"  method="post">

		<div class="login-form">
			<div class="form-group">
				<label for="account" class="placeholder"><b>登录名</b></label>
				<input  id="account" name="account" type="text" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="password" class="placeholder"><b>密码</b></label>
				<div class="position-relative">
					<input  id="password" name="password" type="password" class="form-control" required>
					<div class="show-password">
						<i class="flaticon-interface"></i>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="cfmpassword" class="placeholder"><b>确认密码</b></label>
				<div class="position-relative">
					<input  id="cfmpassword" name="cfmpassword" type="password" class="form-control" required>
					<div class="show-password">
						<i class="flaticon-interface"></i>
					</div>
				</div>
			</div>
			<div class="row form-sub m-0">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input" name="agree" id="agree">
					<label class="custom-control-label" for="agree">I Agree the terms and conditions.</label>
				</div>
			</div>
			<div class="row form-action">
				<div class="col-md-6">
					<a href="#" id="show-signin" class="btn btn-danger btn-link w-100 fw-bold">Cancel</a>
				</div>
				<div class="col-md-6">
					<input type="submit" class="btn btn-primary w-100 fw-bold" value="Sign Up">
					<%--<a href="#" class="btn btn-primary w-100 fw-bold">Sign Up</a>--%>
				</div>
			</div>
		</div>
		</form>
	</div>
</div>
<script src="${ctx}/flowers/assets/js/core/jquery.3.2.1.min.js"></script>
<script src="${ctx}/flowers/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="${ctx}/flowers/assets/js/core/popper.min.js"></script>
<script src="${ctx}/flowers/assets/js/core/bootstrap.min.js"></script>
<script src="${ctx}/flowers/assets/js/ready.js"></script>
</body>
</html>