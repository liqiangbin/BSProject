<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/head.jsp"%>
</head>
<body>
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
			<div class="page-content" style="min-height: 801px">
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">图书管理</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><i class="fa fa-home"></i> <a href="/msc/main/index.do">
								IBOOk首页</a> <i class="fa fa-angle-right"></i></li>
						<li><a href="javascript:void(0);"
							>图书管理</a> <i
							class="fa fa-angle-right"></i></li>
							<li><a href="javascript:void(0);"
							>图书分类管理</a> <i
							class="fa fa-angle-right"></i></li>
						<li class="active"><a href="javascript:void(0);">编辑大类</a></li>

					</ul>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<div class="portlet light">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-stumbleupon-circle font-green-sharp"></i> <span
										class="caption-subject font-green-sharp bold">编辑图书大类</span>
								</div>
								<div class="actions btn-set">
									<a class="btn btn-default btn-circle"
										href="javascript:void(0);"
										onclick="javascript:history(-1);"><i
										class="fa fa-angle-left"></i> 返回<!-- 返 回--></a>
								</div>
							</div>
							<div class="portlet-body">
								<div class="table-responsive">
									<form class="form-horizontal form-row-seperated form-inline"
										action="<%=request.getContextPath() %>/subType/updateType" method="post" id="createNotice"
										enctype="multipart/form-data">
										<!-- <input type="hidden" name="genType" value=""/> -->
										<table class="table table-bordered table_sxcondition ">
											<tbody>
											<input type="hidden" id="id" name="id" value=${type.id }>
												<tr>
													<th width="25%">大类编号：<label style="color: red;">&nbsp;*&nbsp;</label></th>
													<td width="75%" class="lineheight34"><input
														id="typenumber" name="typenumber" type="text"
														class="form-control input-large-plus" value="${type.typenumber}"
														autofocus=""></td>
												</tr>
												<tr>
													<th>大类描述：<label style="color: red;">&nbsp;*&nbsp;</label></th>
													<td class="lineheight34"><textarea rows="10" cols="8"
															id="typedescn" name="typedescn"
															class="form-control form-control250 required validate-alphanum"
															style="max-width: 600px; width: 98%; height: 120px;"
															>${type.typedescn}</textarea></td>
												</tr>
												<tr>
													<th></th>
													<td>
														<button type="button" class="btn default"
															onclick="javascript:history(-1);">
															<i class="fa fa-angle-left"></i> 后 退
														</button>
														<button type="submit" id="submitBtn"
															class="btn btn-primary">
															<i class="fa fa-save"></i> 保存
														</button>
													</td>
												</tr>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
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
	$("#createNotice")
			.validate(
					{
						errorClass : "notice",
						rules : {
							typenumber : {
								required : true
							},
							typedescn : {
								required : true,
							}
						},
						messages : {
							typenumber : {
								required : "大类编号不能为空"
							},

							typedescn : {
								required : "大类描述不能为空",
							}
						},
						focusInvalid : true,
					});
</script>
</body>

</html>