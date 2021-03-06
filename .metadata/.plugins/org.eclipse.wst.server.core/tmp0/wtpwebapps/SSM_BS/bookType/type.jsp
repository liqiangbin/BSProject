<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/head.jsp"%>
</head>

	<!-- BEGIN BODY -->
<body	class="page-container-bg-solid page-sidebar-closed-hide-logo page-header-fixed ">
	<!-- BEGIN TOP -->
	<%@ include file="/commons/top.jsp"%>
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<%@ include file="/commons/left.jsp"%>
		<!-- END SIDEBAR -->
		<!-- 下面是正文部分 -->
	<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<div class="page-content" style="min-height:645px">
					<!-- BEGIN PAGE HEADER-->
					<h3 class="page-title">图书分类管理</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li >
								<i class="fa fa-home"></i>
								<a href="index.html">IBooK首页</a>
								<i class="fa fa-angle-right"></i>
							</li>
							<li >
								<a href="javascript:return 0;">图书管理</a>
								<i class="fa fa-angle-right"></i>
							</li>

							<li class="active">
								<a href="#">分类管理</a>
							</li>
						</ul>
					</div>
					<!-- END PAGE HEADER-->
					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">
							<div class="form-horizontal form-row-seperated" action="#">
								<div class="portlet light">
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-search font-green-sharp"></i>
											<span class="caption-subject font-green-sharp bold">查询列表</span>
										</div>
										
										<div class="actions form-inline">
											<div class="btn-group">
                                        <a class="btn btn-default btn-circle" href="javascript:;" data-toggle="dropdown" aria-expanded="false">
                                       <i class="fa fa-plus"></i> 添加分类 <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right">
                                            <li>
                                                <a href='<c:url value="/bookType/typeAdd.jsp"></c:url>'><i class="fa fa-file-o"></i> 添加大分类</a>
                                            </li>	
                                             <li>
                                                <a href='<c:url value="/subType/addSubtype"></c:url>'><i class="fa fa-file-excel-o"></i> 添加细分类</a>
                                            </li>											
                                        </ul>
                                    </div>
										</div>
									</div>
									<div class="portlet-body">
										<div class="table-responsive">
										<form action='<c:url value="/subType/SellectByParams" ></c:url>' meithod="post">
											<table class="table table-bordered table_sxcondition">
												<tbody>
													<tr>
														<th>图书大类 :</th>
														<td>
															<select class="form-control input-large" data-placeholder="全部" id="typenumber" name="typenumber" onchange="typeChange()">
																<option value="">显示所有</option>
																<c:forEach var="type" items="${typeAll}" > 
																	 <option value="${type.typenumber}" <c:if test="${subtypeParams.typenumber==type.typenumber}">selected</c:if>>${type.typedescn}</option>
															</c:forEach>
															</select>
														</td>
														<th>图书细类 :</th>
														<td>
															<select class="form-control input-large" data-placeholder="全部" id="id" name="id">
																<option value="">显示所有</option>
																	<c:forEach var="sub" items="${subList}" > 
																	 <option value="${sub.id}" <c:if test="${subtypeParams.id==sub.id}">selected</c:if>>${sub.subtypedescn}</option>
															</c:forEach>
															</select>
														</td>
														<td colspan="2" style="text-align:center;">
														&nbsp;
														</td>
													</tr>
													<tr>
														<td colspan="6" style="text-align:center;">
															<button type="reset" class="btn default"><i class="fa fa-reply"></i> 重置</button>
															<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> 查询</button>
														</td>
													</tr>
												</tbody>
											</table>
											</form>
										</div>
										<div class="table-container">

											<div id="datatable_products_wrapper" class="dataTables_wrapper dataTables_extended_wrapper no-footer">
												<div class="table-scrollable">
													<table class="table table-striped table-bordered table-hover dataTable no-footer" id="datatable_products" aria-describedby="datatable_products_info" role="grid">
														<thead>
															<tr role="row" class="heading">
																<th width="5%" class="sorting_disabled" rowspan="1" colspan="1">大类号</th>
																<th width="20%" class="sorting" tabindex="0" aria-controls="datatable_products" rowspan="1" colspan="1">类别描述（没有大类号即为该大类包含的细类）</th>
																	<th width="15%" class="sorting" tabindex="0" aria-controls="datatable_products" rowspan="1" colspan="1">类别操作</th>
															</tr>
														</thead>
														<tbody>
														<c:forEach var="type" items="${typeList}" > 
														<tr>
														<td>${type.typenumber}</td>
														<td style="text-align: left;padding-left: 80px;">${type.typedescn}</td>
														<td>
														<a class="btn btn-circle btn-icon-only btn-default tooltips" href='<c:url value="/subType/editType?id=${type.id}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="编辑" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</a> 
																	<a class="btn btn-circle btn-icon-only btn-default tooltips"  href='javascript:void(0);' onclick="javascript:showAlertModel('警告信息', '确认删除（删除后该类所包含的小类都将被删除）？','<c:url value="/subType/deleteType?typeNumber=${type.typenumber}"></c:url>');" data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="删除">
																		<i class="icon-trash"></i>
																	</a>
																	<a class="btn btn-circle btn-icon-only btn-default tooltips"  href='<c:url value="/subType/addSubtype"></c:url>'  data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="添加子类">
																		<i class="fa fa-plus"></i>
																	</a>
														</td>
														</tr>
														<c:forEach var="subtype" items="${subList}" varStatus="status" > 
														<c:if test="${subtype.typenumber==type.typenumber}">
														 <tr bgcolor="white">
														<td colspan="2" >${subtype.subtypedescn}</td>
														<td>
														<a class="btn btn-circle btn-icon-only btn-default tooltips" href='<c:url value="/subType/editSubtype?id=${subtype.id}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="编辑" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="glyphicon glyphicon-pencil"></span>
															</a>
																	<a class="btn btn-circle btn-icon-only btn-default tooltips"  href='javascript:void(0);' onclick="javascript:showAlertModel('警告信息', '确认删除？','<c:url value="/subType/deleteSubtype?id=${subtype.id}"></c:url>');" data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="删除">
																		<i class="icon-trash"></i>
																	</a>
														</td>
														</tr>
														</c:if> 
														</c:forEach>
														<tr><td colspan="3"></td></tr>
														</c:forEach>
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
			<input type="hidden" id="deletedtype" value="${typeDeleted}"/>
				<input type="hidden" id="deletedsub" value="${subTypeDeleted}"/>
	</div>
	<%@ include file="/commons/foot.jsp"%>
<script type="text/javascript">
var  deleted=$("#deletedtype").val();
if(deleted!=""){
	showAlertModel("提示信息","删除成功！",null);
	$("#deletedtype").val("");
}
var  deleted1=$("#deletedsub").val();
if(deleted1!=""){
	showAlertModel("提示信息","删除成功！",null);
	$("#deletedsub").val("");
}

function  typeChange(){
	 var typenumber=$("#typenumber").val();
	 $("#id").empty();
	 $("#id").append("<option value=''>显示所有</option>");
	 <c:forEach var="subtype" items="${subAll}" > 
	 var typenumber1=${subtype.typenumber};
	 if(typenumber1==typenumber){
		$("#id").append('<option value="'+${subtype.id}+'" >${subtype.subtypedescn}</option>'); 
	 }
</c:forEach>
}
</script>

</body>

</html>