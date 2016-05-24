<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/customer/commons/head.jsp"%>
</head>
<body>
	<%@ include file="/customer/commons/top.jsp"%>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">登录页</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- login -->
	<div class="login">
		<div class="container">
			<form action='<c:url value="/login/customerLogin"></c:url>' method="post">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">登 录</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">如果您还未注册，请先点击左上角注册之后再来登录哦！</p>
			<p class="est animated wow zoomIn" data-wow-delay=".5s" id="regeistLabel" style="color:green;"></p>
			<p class="est animated wow zoomIn" data-wow-delay=".5s" id="regeistLabel" style="color:red;">${loginMessage }</p>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
			
					<input type="text" placeholder="用户名" id="loginname" name="loginname" required="required">
					<input	type="password" placeholder="密码" required="required" id="password" name="password">
					<div class="forgot">
					<a href="#">忘记密码?</a>
					</div>
					<input type="submit" value="登录">
				
			</div>
			</form>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New
				People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s">
				<a href='<c:url value="/customer/regeist.jsp"></c:url>'>注册</a> (or) <a href="index.html">首页<span
					class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a>
			</p>
		</div>
	</div>
	<!-- //login -->
<%@ include file="/customer/commons/foot.jsp"%>
<input type="hidden" id="regeistMessage" value=${regeistMessage}>
<script type="text/javascript">
if($("#regeistMessage").val()!=""){
	$("#regeistLabel").html($("#regeistMessage").val());
}
</script>
</body>

</html>