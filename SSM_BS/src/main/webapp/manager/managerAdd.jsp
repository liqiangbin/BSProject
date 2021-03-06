<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/head.jsp"%>
</head>

<!-- BEGIN BODY -->
<body
	class="page-container-bg-solid page-sidebar-closed-hide-logo page-header-fixed ">
	<!-- BEGIN TOP -->
	<%@ include file="/commons/top.jsp"%>
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<%@ include file="/commons/left.jsp"%>
		<!-- END SIDEBAR -->
		<!-- 下面是正文部分 -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">用户管理</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li class="active"><i class="fa fa-home"></i> <a
							href="index.html">MSC首页</a> <i class="fa fa-angle-right"></i></li>
						<li><a href="javascript:void(0)">系统管理</a> <i
							class="fa fa-angle-right"></i></li>
						<li class="active"><a
							href='<c:url value="/manager/manager.jsp"></c:url>'>用户管理</a> <i
							class="fa fa-angle-right"></i></li>
						<li><a href='<c:url value="/manager/managerAdd.jsp"></c:url>'>新增用户</a>
						</li>
					</ul>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<form class="form-horizontal form-row-seperated"
							id="managerAddForm"
							action=<c:url value="/manager/addManager"></c:url> method="post">
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-user font-green-sharp"></i> <span
											class="caption-subject font-green-sharp bold">新增用户</span>
									</div>
									<div class="actions btn-set">
										<a class="btn btn-default btn-circle"
											href="javascript:history.go(-1)"><i
											class="fa fa-angle-left"></i> 返回</a>
									</div>
								</div>
								<div class="portlet-body">
									<div class="table-responsive">
										<table class="table table-bordered table_sxcondition">
											<tr>
												<th width="25%">登录名：</th>
												<td width="75%"><input type="text"
													class="form-control input-large" id="loginname"
													name="loginname" value="${manager.loginname}" autofocus></td>
											</tr>
											<tr>
												<th width="25%">密码：</th>
												<td width="75%"><div class="form-inline">
														<input class="form-control input-large"
															style="width: 180px;" type="password"
															name="password" id="password" value="${manager.password}" />
													<button class="btn btn-info btn-sm" data-toggle="modal"
															id="setPassword"  type="button">
															<i class="fa fa-hand-o-left">设为默认 </i>
														</button>
													</div></td>
											</tr>
											<tr>
												<th width="25%">再次输入密码：</th>
												<td width="75%"><input type="password" id="repassword"
													name="repassword" class="form-control input-large" value="${manager.password}">
												</td>
											</tr>
											<tr>
												<th width="25%">用户姓名：</th>
												<td width="75%"><input type="text" id="name"
													name="name" class="form-control input-large" value="${manager.name}"></td>
											</tr>
											<tr>
												<th width="25%">状态：</th>
												<td width="75%"><select
													class="bs-select form-control input-large" id="status"
													name="status" data-placeholder="正常" value="${manager.status}">
														<option value="0">正常</option>
														<option value="1">停用</option>
												</select></td>
											</tr>
											<tr>
												<th width="25%">后台角色：</th>
												<td width="75%"><select
													class="bs-select form-control input-large" id="role"
													name="role" data-placeholder="主管" value="${manager.role}">
														<option value="0" selected>管理员</option>
														<option value="1">操作员</option>
												</select></td>
											</tr>
											<tr>
												<th>&nbsp;</th>
												<td><a href="javascript:history.go(-1)"
													class="btn default"><i class="fa fa-angle-left"></i> 返回</a>
													<button type="reset" class="btn default">
														<i class="fa fa-reply"></i> 重置
													</button>
													<button type="submit" class="btn btn-primary">
														<i class="fa fa fa-check"></i> 提交
													</button>
													<label style="color:red;">${success}</label>
													</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- END PAGE CONTENT-->

			</div>
		</div>
		<!-- END CONTAINER -->
		<!-- 正文部分结束 -->
	</div>
	<%@ include file="/commons/foot.jsp"%>
	<script type="text/javascript">
	$("#setPassword").click(function(){
		$("#repassword").val("111111");
		$("#password").val("111111");
	});
		$("#managerAddForm").validate({
			errorClass : "notice",
			rules : {
				loginname : {
					required : true
				},
				password : {
					required : true,
					rangelength : [ 6, 20 ],
					pattern : /^[a-zA-Z0-9_]*$/
				},
				repassword : {
					equalTo : "#password"
				},
				name : {
					required : true
				}
			},
			messages : {
				loginname : {
					required : "登录名不能为空"
				},
				password : {
					required : "密码不能为空",
					rangelength : "密码长度必须为6-20之间",
					pattern : "密码不能包含特殊字符"
				},
				repassword : {
					equalTo : "两次密码输入不一致"
				},
				name : {
					required : "用户姓名不能为空"
				}
			},
			focusInvalid : true,
		});
	</script>
</body>

</html>