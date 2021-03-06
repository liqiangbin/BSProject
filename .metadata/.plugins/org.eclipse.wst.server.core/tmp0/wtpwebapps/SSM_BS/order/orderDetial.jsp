<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/head.jsp"%>
</head>
<body>
	<!-- BEGIN BODY -->

	<div
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
					<h3 class="page-title">客户信息</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li class="active"><i class="fa fa-home"></i> <a
								href="index.html">IBooK首页</a> <i class="fa fa-angle-right"></i></li>
							<li><a href="javascript:void(0)">订单管理</a> <i
								class="fa fa-angle-right"></i></li>
							<li><a href="#">订单详情</a></li>
						</ul>
					</div>
					<!-- END PAGE HEADER-->
					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-file-text font-green-sharp"></i> <span
											class="caption-subject font-green-sharp bold">订单信息明细</span>
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
											<tr role="row">
												<th width="13.33%">订单号：</th>
												<td width="20%" class="lineheight34">${order.orderid }</td>
												<th width="13.33%">订单日期：</th>
												<td width="20%" class="lineheight34">${order.orderdate }</td>

											</tr>
											<tr role="row">
												<th width="13.33%">订单状态：</th>
												<td width="20%" class="lineheight34">
												<c:if test="${order.status==0 }">
														<label style="color: green;">成功</label>
													</c:if> <c:if test="${order.status==1 }">
														<label style="color: blue;">待付款</label>
													</c:if> <c:if test="${order.status==2 }">
														<label style="color: red;">退款中</label>
													</c:if> <c:if test="${order.status==3 }">
														<label style="color: gray;">已退款</label>
													</c:if> <c:if test="${order.status==4 }">
														<label style="color: orange;">待发货</label>
													</c:if> <c:if test="${order.status==5 }">
														<label style="color: porpuse;">送货中</label>
													</c:if></td>
												<th>姓名：</th>
												<td class="lineheight34">${order.receivename }</td>

											</tr>
											<tr role="row">
												<th>电话：</th>
												<td class="lineheight34">${order.phone }</td>
												<th>地址：</th>
												<td class="lineheight34">${order.address }</td>
											</tr>
											<tr role="row">
												<th>商品信息：</th>
												<td class="lineheight34"><c:forEach var="orderDetial"
														items="${orderDetialList}">
											${orderDetial.bookname}&nbsp;&nbsp;
											</c:forEach></td>
											<th>运费：</th>
												<td class="lineheight34">${order.transfee} &nbsp;元</td>
												
											</tr>
											<tr role="row">
												<th>数量：</th>
												<td class="lineheight34">
												<c:forEach var="orderDetial"
														items="${orderDetialList}">
											${orderDetial.quantity}&nbsp;本&nbsp;&nbsp;
											</c:forEach></td>
												<th>总金额(元)：</th>
												<td class="lineheight34">${order.totalmoney }</td>
											</tr>
											<tr role="row">
											<th>单价：</th>
												<td class="lineheight34"><c:forEach var="orderDetial"
														items="${orderDetialList}">
											${orderDetial.price}&nbsp;元&nbsp;&nbsp;
											</c:forEach></td>
												<th>QQ：</th>
												<td class="lineheight34">
												${order.qq }
												</td>
											</tr>
											<tr role="row">
												<th>备注：</th>
												<td class="lineheight34" colspan="3">${order.comments }</td>
											</tr>


										</table>
									</div>
									<div class="btn-back">
										<a href="javascript:history.go(-1)" class="btn btn-primary"><i
											class="fa fa-angle-left"></i> 返回</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END PAGE CONTENT-->
				<!-- 正文部分结束 -->
			</div>
			<%@ include file="/commons/foot.jsp"%>
		</div>
	</div>
</body>
</html>