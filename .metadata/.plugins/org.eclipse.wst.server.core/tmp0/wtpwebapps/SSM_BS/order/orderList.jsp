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
				<h3 class="page-title">订单管理</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li class="active"><i class="fa fa-home"></i> <a
							href="index.html">IBooK首页</a> <i class="fa fa-angle-right"></i></li>

						<li><a href="#">订单管理</a></li>
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
										<i class="fa fa-search font-green-sharp"></i> <span
											class="caption-subject font-green-sharp bold">查询列表</span>
									</div>
								</div>
								<div class="portlet-body">
									<div class="table-responsive">
										<form action='<c:url value="/order/getOrderByPage"></c:url>'
											methoe="post">
											<table class="table table-bordered table_sxcondition">
												<tbody>
													<tr>
														<th width="13.33%">订单日期 :</th>
														<td width="20%">
															<div class="input-group date form_date input-large">
																<input type="text" class="form-control" id="orderdate"
																	name="orderdate" value="${orderParams.orderdate}"
																	id="oderdate" name="orderdate" readonly="true" /> <span
																	class="input-group-addon"><span
																	class="glyphicon glyphicon-calendar"></span></span>
															</div>

														</td>
														<th width="13.33%">订单号 :</th>
														<td width="20%"><input type="text"
															class="form-control input-large" name="orderid"
															id="orderid" value="${orderParams.orderid}"></td>
														<th>订单状态 :</th>
														<td><select class="form-control input-large"
															data-placeholder="全部" id="status" name="status">
																<option value="">全部</option>
																<option value="0"
																	<c:if test="${orderParams.status==0 }">selected</c:if>>成功</option>
																<option value="1"
																	<c:if test="${orderParams.status==1 }">selected</c:if>>待付款</option>
																<option value="2"
																	<c:if test="${orderParams.status==2 }">selected</c:if>>退款中</option>
																<option value="3"
																	<c:if test="${orderParams.status==3 }">selected</c:if>>已退款</option>
														<option value="4"
																	<c:if test="${orderParams.status==4 }">selected</c:if>>待发货</option>
																	<option value="5"
																	<c:if test="${orderParams.status==5 }">selected</c:if>>送货中</option>
														</select></td>
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
										<ul class="list-inline summary">
											<li>订单总数：<span class="highlight">${orderTotal }</span></li>
											<li>成功交易笔数：<span class="highlight">${ordersuccess }</span></li>
											<li>成功交易额：<span class="highlight">${ordermoney }</span>
												元
											</li>
										</ul>
										<div class="row">
											<div class="col-lg-3 col-md-12">
											</div>
											<div class="col-lg-9 col-md-12">
												<div class="table-group-actions pull-right">
													<p class="bg-danger">
														<i class="fa fa-info-circle"></i>
														注:下订单时预留好QQ号码的可以直接点击联系买家进行沟通，若未显示联系买家按钮则只能通过电话联系。
													</p>
												</div>
											</div>
										</div>
										<div id="datatable_products_wrapper"
											class="dataTables_wrapper dataTables_extended_wrapper no-footer">
											<div class="table-scrollable">
												<table
													class="table table-striped table-bordered table-hover dataTable no-footer"
													id="datatable_products"
													aria-describedby="datatable_products_info" role="grid">
													<thead>
														<tr role="row" class="heading">
															<th width="15%" class="sorting_disabled" rowspan="1"
																colspan="1">订单号</th>
															<th width="15%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">下单时间</th>
															<th width="15%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">地址</th>
															<th width="12%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">电话</th>
															<th width="12%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">订单金额（元）</th>
															<th width="12%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">订单状态</th>
															<th width="15%" class="sorting" tabindex="0"
																aria-controls="datatable_products" rowspan="1"
																colspan="1">操作</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="order" items="${orderList}">
															<tr role="row" class="filter">
																<td>${order.orderid }</td>
																<td>${order.orderdate }</td>
																<td>${order.address }</td>
																<td>${order.phone }</td>
																<td>${order.totalmoney }</td>
																<td>
																 <c:if test="${order.status==0 }">
															<label style="color:green;">成功</label>
															</c:if>
															<c:if test="${order.status==1 }">
															<label style="color:blue;">待付款</label>
															</c:if>
															<c:if test="${order.status==2 }">
															<label style="color:red;">退款中</label>
															</c:if>
															<c:if test="${order.status==3 }">
															<label style="color:gray;">已退款</label>
															</c:if>
															<c:if test="${order.status==4 }">
															<label style="color:orange;">待发货</label>
															</c:if>
															<c:if test="${order.status==5 }">
															<label style="color:porpuse;">送货中</label>
															</c:if>
																</td>
																<td>
																<a class="btn btn-circle btn-icon-only btn-default tooltips" href='<c:url value="/order/orderDetial?orderid=${order.orderid}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="订单详情" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<i class="fa fa-info"></i>
															</a>
															<!--联系买家  -->
																<c:if test="${order.qq!=null }">
															<a class="btn btn-circle btn-icon-only btn-default tooltips" href='#' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="联系买家" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="fa fa-phone"></span>
															</a>
															</c:if>
															<!-- 发货 -->
															<c:if test="${order.status==4 }">
															<a class="btn btn-circle btn-icon-only btn-default tooltips" href='<c:url value="/order/orderUpdate?id=${order.id}&status=5"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="发货" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="fa fa-send"></span>
															</a>
															</c:if>
															<!-- 退款 -->
															<c:if test="${order.status==2 }">
															<a class="btn btn-circle btn-icon-only btn-default tooltips" href='<c:url value="/order/orderUpdate?id=${order.id}&status=3"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="同意退款" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="fa fa-money"></span>
															</a>
															</c:if>
																</td>
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
	<%@ include file="/commons/foot.jsp"%>
	<script type="text/javascript">
		$('.form_date').datetimepicker({
			format : 'yyyy-mm-dd',
			language : 'zh_CN',
			autoclose : true,
			viewSelect : 'decade',
			forceParse : 0,
			pickerPosition : 'bottom-left'
		});
	</script>
</body>

</html>