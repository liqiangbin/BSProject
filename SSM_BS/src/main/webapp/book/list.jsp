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
			<div class="page-content" style="min-height: 645px">
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">图书管理</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><i class="fa fa-home"></i> <a href="index.html">IBooK首页</a>
							<i class="fa fa-angle-right"></i></li>

						<li class="active"><a href="#">图书管理</a></li>
					</ul>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row">
					<div class="col-md-12">
						<div class="form-horizontal form-row-seperated">
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-search font-green-sharp"></i> <span
											class="caption-subject font-green-sharp bold">查询列表</span>
									</div>
									<div class="actions form-inline">
										<a href='<c:url value="/book/bookAdd"></c:url>'
											class="btn btn-circle btn-primary margin-left5"
											onclick="javascript:;"> <i class="fa fa-plus"></i> <span
											class="hidden-480">新书上架</span>
										</a>
									</div>
								</div>
								<div class="portlet-body">
									<div class="table-responsive">
										<form action='<c:url value="/book/getBookByPage"></c:url>'
											method="post">
											<table class="table table-bordered table_sxcondition">
												<tbody>
													<tr>
														<th width="13.33%">图书名称(模糊):</th>
														<td width="20%"><input type="text"
															class="form-control input-large" name="name" id="name"
															value="${bookParams.name }"></td>
														<th width="13.33%">作者(模糊):</th>
														<td width="20%"><input type="text"
															class="form-control input-large" name="author"
															id="author" value="${bookParams.author }"></td>
														<th>出版社 (模糊):</th>
														<td><input type="text"
															class="form-control input-large" name="publish"
															id="publish" value="${bookParams.publish }"></td>
													</tr>
													<tr>
														<th>图书大类 :</th>
														<td><select class="form-control input-large"
															data-placeholder="全部" id="type" name="type"
															onchange="typeChange()">
																<option value="">显示所有</option>
																<c:forEach var="type" items="${typeList}">
																	<option value="${type.typenumber}"
																		<c:if test="${bookParams.type==type.typenumber}">selected</c:if>>${type.typedescn}</option>
																</c:forEach>
														</select></td>
														<th>图书细类 :</th>
														<td><select class="form-control input-large"
															data-placeholder="全部" id="subtype" name="subtype">
																<option value="">显示所有</option>
																<c:forEach var="sub" items="${subList}">
																	<option value="${sub.id}"
																		<c:if test="${bookParams.subtype==sub.id}">selected</c:if>>${sub.subtypedescn}</option>
																</c:forEach>
														</select></td>
														<td colspan="2" style="text-align: center;">&nbsp;</td>
													</tr>
													<tr>
														<td colspan="6" style="text-align: center;">
															<button type="reset" class="btn default">
																<i class="fa fa-reply"></i> 重置
															</button>
															<button type="submit" class="btn btn-primary">
																<i class="fa fa-search"></i> 查询
															</button>
														</td>
													</tr>
												</tbody>
											</table>
										</form>
									</div>
									<div class="table-container">

										<div id="datatable_products_wrapper"
											class="dataTables_wrapper dataTables_extended_wrapper no-footer">
											<div class="table-scrollable">
												<table
													class="table table-striped table-bordered table-hover dataTable no-footer"
													id="datatable_products"
													aria-describedby="datatable_products_info" role="grid">
													<thead>
														<tr role="row" class="heading">
															<th width="12%" class="sorting_disabled" rowspan="1"
																colspan="1">图书名称</th>
															<th width="8%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">作者</th>
															<th width="12%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">出版社</th>
															<th width="5%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">单价（元）</th>
															<th width="5%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">折扣</th>
															<th width="15%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">分类</th>
															<th width="5%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">已售(本)</th>
															<th width="10%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">库存量(本)</th>
															<th width="20%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">操作</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="book" items="${bookList}">
															<tr role="row" class="filter">
																<td>${book.name }</td>
																<td>${book.author }</td>
																<td>${book.publish }</td>
																<td>${book.price }</td>
																<td>${book.discount }</td>
																<td><c:forEach var="type" items="${typeList}">
																		<c:if test="${book.type==type.typenumber }">
																${type.typedescn }
																</c:if>
																	</c:forEach> -> <c:forEach var="sub" items="${subList}">
																		<c:if test="${book.subtype==sub.id }">
																	${sub.subtypedescn}
																</c:if>
																	</c:forEach></td>
																<td>${book.saled }</td>
																<td <c:if test="${book.stock<=10}"> style="color:red"</c:if>>${book.stock }&nbsp; <a
																	class="btn-arrow-link tooltips"
																	href="javascript:void(0);" data-toggle="modal"
																	data-placement="bottom" data-html="true"
																	data-original-title="修改库存" onclick="editModel(${book.id},${book.stock});">
																		<!-- <i class="icon-trash"></i> --> <span
																		class="glyphicon glyphicon-pencil"></span>
																</a>
																</td>
																<td><a
																	class="btn btn-circle btn-icon-only btn-default tooltips"
																	href='<c:url value="/book/bookDetial?id=${book.id }"></c:url>'
																	data-toggle="tooltip" data-placement="bottom"
																	data-html="true" data-original-title="图书详情"> <i
																		class="fa fa-info"></i>
																</a> <a
																	class="btn btn-circle btn-icon-only btn-default tooltips"
																	href='<c:url value="/book/bookEdit?id=${book.id}"></c:url>' data-toggle="tooltip"
																	data-placement="bottom" data-html="true"
																	data-original-title="编辑">
																		 <span
																		class="glyphicon glyphicon-pencil"></span>
																</a> <a
																	class="btn btn-circle btn-icon-only btn-default tooltips"
																	href="javascript:void(0);"
																	onclick="javascript:showAlertModel('警告信息', '确认删除本书？','<c:url value="/book/deleteById?id=${book.id}"></c:url>');"
																	data-toggle="tooltip" data-placement="bottom"
																	data-html="true" data-original-title="图书下架"> <i
																		class="icon-trash"></i>
																</a></td>
															</tr>
														</c:forEach>
														<%@ include file="/commons/page.jsp"%>
													</tbody>
												</table>
											</div>
										</div>
									</div>
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
	<!-- ********* -->
	<button class="btn btn-circle btn-primary" data-toggle="modal"
								id="modalButton" data-target="#myModal" type="button" style="display: none;">
								<i class="fa fa-plus"></i> 库存编辑
							</button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">库存修改</h4>
				</div>
				<form id="updateStockForm"
					action='<c:url value="/book/updateStock"></c:url>' method="post">
					<div class="modal-body">
						<input type="hidden" id="id" name="id" value="${book.id}">
						<table class="table table-bordered table_sxcondition">
							<tbody>
								<tr>
									<th width="13.33%">库存量：</th>
									<td width="20%"><input type="text"
										class="form-control input-large" name="stock" id="stock"
										></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer" style="margin-top: -20px; padding: 8px;">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消
						</button>
						<button type="button" id="updateStock" onClick="updateStockfun()"
							class="btn btn-primary" data-dismiss="modal">确认修改</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<!--*********************  -->

	<%@ include file="/commons/foot.jsp"%>
	<input type="hidden" id="deleted" value="${bookDeleted}" />
	<input type="hidden" id="update" value="${bookUpdate}" />
	<input type="hidden" id="bookMessage" value="${bookMessage}" />
	<script type="text/javascript">
		function typeChange() {
			var typenumber = $("#type").val();
			$("#subtype").empty();
			$("#subtype").append("<option value=''>显示所有</option>");
			<c:forEach var="subtype" items="${subList}" >
			var typenumber1 = ${subtype.typenumber};
			if (typenumber1 == typenumber) {
				$("#subtype").append('<option value="'+${subtype.id}+'" >${subtype.subtypedescn}</option>');
			}
			</c:forEach>
		}
		//判断是否删除成功
		var deleted = $("#deleted").val();
		if (deleted != "") {
			if(deleted=="success"){
				showAlertModel("提示信息", "删除成功！", null);
				$("#deleted").val("");
			}else{
				showAlertModel("提示信息", "删除失败！", null);
				$("#deleted").val("");
			}
			
		}
		//判断是否修改成功
		var deleted = $("#update").val();
		if (deleted != "") {
			showAlertModel("提示信息", deleted, null);
			$("#deleted").val("");
		}
		//判断添加和修改功能
			var bookMessage = $("#bookMessage").val();
		if (deleted != "") {
			showAlertModel("提示信息", bookMessage, null);
			$("#bookMessage").val("");
		}
		//提交表单
		function updateStockfun() {
			$("#updateStockForm").submit();
		}
		//编辑库存并传参数
		function editModel(id,stock){
			$("#id").val(id);
			$("#stock").val(stock);
			$("#modalButton").click();
		}
	</script>

</body>

</html>