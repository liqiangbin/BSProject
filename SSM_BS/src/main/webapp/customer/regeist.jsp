<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/customer/commons/head.jsp"%>
</head>
<body>
<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
	<%@ include file="/customer/commons/top.jsp"%>
		<!-- breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
					<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
					<li class="active">注册</li>
				</ol>
			</div>
		</div>
		<!-- //breadcrumbs -->
		<!-- register -->
		<div class="register">
			<div class="container">
				<h3 class="animated wow zoomIn" data-wow-delay=".5s">注 册</h3>
				<p class="est animated wow zoomIn" data-wow-delay=".5s">欢迎您加入IBooK,为了您购书方便请认真填写以下信息</p>
				<div class="login-form-grids">
					<h5 class="animated wow slideInUp" data-wow-delay=".5s">profile information</h5>
					<form class="animated wow slideInUp" data-wow-delay=".5s" action='<c:url value="/customer/regeist"></c:url>' method="post">
						<input type="text" placeholder="First Name..." required=" ">
						<input type="text" placeholder="Last Name..." required=" ">
					
					<div class="register-check-box animated wow slideInUp" data-wow-delay=".5s">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Subscribe to Newsletter</label>
						</div>
					</div>
					<h6 class="animated wow slideInUp" data-wow-delay=".5s" style="font-family: '微软雅黑';">登录信息</h6>
						<input type="text" placeholder="用户名" id="loginname" name="loginname" required="required">
						<input type="password" placeholder="密码" id="password" name="password" required="required">
						<input type="password" placeholder="确认密码" id="repassword" required="required">
						<input type="submit" value="注册">
					</form>
				</div>
				<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
					<a href="index.html">首页</a>
				</div>
			</div>
		</div>
		<!-- //register -->
<%@ include file="/customer/commons/foot.jsp"%>
<script>
			new WOW().init();
		</script>
</body>

</html>