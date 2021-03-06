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
				<div class="page-content" style="min-height:645px">
					<!-- BEGIN PAGE HEADER-->
					<h3 class="page-title">智能推荐管理</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li >
								<i class="fa fa-home"></i>
								<a href="index.html">IBooK首页</a>
								<i class="fa fa-angle-right"></i>
							</li>

							<li class="active">
								<a href="#">智能推荐管理</a>
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
											<span class="caption-subject font-green-sharp bold">推荐方式</span>
										</div>
										
										
									</div>
									<div class="portlet-body">
										<div class="table-responsive">
										<form action='<c:url value="/suggest/updateSuggest"></c:url>' meithod="post">
											<table class="table table-bordered table_sxcondition">
												<tbody>
													<tr>
														<th>老用户推荐方式 :</th>
														<td>
															<select class="form-control input-large" data-placeholder="全部" id="suggestParam0" name="suggestParam0" onchange="typeChange()">
																<c:forEach var="list" items="${allList}"> 
																	 <option value="${list.choosenumber}" <c:if test="${list.choosenumber==suggest0.choosenumber}">selected</c:if>>${list.choosedescn}</option>
															</c:forEach>
															</select>
														</td>
														</tr>
														<tr>
														<th>新用户推荐方式 :</th>
														<td>
															<select class="form-control input-large" data-placeholder="全部" id="suggestParam1" name="suggestParam1">
																<c:forEach var="list" items="${allList}" > 
																	 <option value="${list.choosenumber}" <c:if test="${list.choosenumber==suggest1.choosenumber}">selected</c:if>>${list.choosedescn}</option>
															</c:forEach>
															</select>
														</td>
													</tr>
													<tr>
														<th>普通游客推荐方式 :</th>
														<td>
															<select class="form-control input-large" data-placeholder="全部" id="suggestParam2" name="suggestParam2">
																<c:forEach var="list" items="${allList}">
																	 <option value="${list.choosenumber}" <c:if test="${list.choosenumber==suggest2.choosenumber}">selected</c:if>>${list.choosedescn}</option>
															</c:forEach>
															</select>
														</td>
													</tr>
													<tr>
													<td colspan="4">&nbsp;</td>
													</tr>
													<tr>
														<td colspan="4" style="text-align:center;">
															<button type="reset" class="btn default"><i class="fa fa-reply"></i> 重置</button>
															<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> 查询</button>
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
					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END CONTAINER -->
		<!-- 正文部分结束 -->
		<input type="hidden" id="updated" name="" value="${updated}">
	</div>
	<%@ include file="/commons/foot.jsp"%>
<script type="text/javascript">
var data=$("#updated").val();
if(data!=""&data!=null){
	showAlertModel("提示",data,null);
}
</script>
</body>

</html>