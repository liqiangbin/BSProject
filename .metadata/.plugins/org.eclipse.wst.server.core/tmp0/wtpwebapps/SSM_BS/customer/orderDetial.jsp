<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/customer/commons/head.jsp"%>
</head>
<body>
	<%@ include file="/customer/commons/top.jsp"%>
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href='<c:url value="/customer/index"></c:url>'><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li><a href="#">我的订单</a></li>
				<li class="active">订单详情</li>
			</ol>
		</div>
	</div>
	<div class="portlet-body">
		<div class="table-responsive ">
			<table class="table "
				style="width: 80%; margin-left: 170px; margin-top: 30px;">
				<thead>
					<tr>

						<th colspan="4"><span
							class="caption-subject font-green-sharp bold"
							style="font-size: 20px; color: orange;"><i
								class="fa fa-file-text font-green-sharp"></i><B> 订单信息明细</B></span></th>
					</tr>
				</thead>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">订单号：</th>
					<td width="20%" class="lineheight34">${order.orderid }</td>
					<th width="13.33%" style="background-color: #f5f5f5">订单日期：</th>
					<td width="20%" class="lineheight34">${order.orderdate }</td>

				</tr>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">订单状态：</th>
					<td width="20%" class="lineheight34"><c:if
							test="${order.status==0 }">
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
					<th style="background-color: #f5f5f5">客户姓名：</th>
					<td class="lineheight34">${order.receivename }</td>

				</tr>
				<tr role="row">
					<th style="background-color: #f5f5f5">电话：</th>
					<td class="lineheight34">${order.phone }</td>
					<th style="background-color: #f5f5f5">地址：</th>
					<td class="lineheight34">${order.address }</td>
				</tr>
				<tr role="row">
					<th style="background-color: #f5f5f5">商品信息：</th>
					<td class="lineheight34"><c:forEach var="orderDetial"
							items="${orderDetialList}">
											${orderDetial.bookname}&nbsp;&nbsp;
											</c:forEach></td>
					<th style="background-color: #f5f5f5">运费：</th>
					<td class="lineheight34">${order.transfee}&nbsp;元</td>

				</tr>
				<tr role="row">
					<th style="background-color: #f5f5f5">数量：</th>
					<td class="lineheight34"><c:forEach var="orderDetial"
							items="${orderDetialList}">
											${orderDetial.quantity}&nbsp;本&nbsp;&nbsp;
											</c:forEach></td>
					<th style="background-color: #f5f5f5">总金额(元)：</th>
					<td class="lineheight34">${order.totalmoney }</td>
				</tr>
				<tr role="row">
					<th style="background-color: #f5f5f5">单价：</th>
					<td class="lineheight34"><c:forEach var="orderDetial"
							items="${orderDetialList}">
											${orderDetial.price}&nbsp;元&nbsp;&nbsp;
											</c:forEach></td>
					<th style="background-color: #f5f5f5">QQ：</th>
					<td class="lineheight34">${order.qq }</td>
				</tr>
				<tr role="row">
					<th style="background-color: #f5f5f5">买家备注：</th>
					<td class="lineheight34" colspan="3">${order.comments }</td>
				</tr>

				<tr>
					<td colspan="3" align="center"><button type="button"
							onclick="javascript:history.go(-1);"
							class="btn btn-primary btn-lg btn-block" style="width: 150px;">
							<i class="fa fa-angle-left"></i> 返回
						</button></td>
				</tr>
			</table>
		</div>

	</div>
	<%@ include file="/customer/commons/foot.jsp"%>
</body>

</html>