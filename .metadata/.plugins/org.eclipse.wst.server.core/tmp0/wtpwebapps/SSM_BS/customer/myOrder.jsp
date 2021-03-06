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
				<li class="active">我的订单</li>
			</ol>
		</div>
	</div>
<div class="checkout">
		<div class="container">
			<h3 class="animated wow slideInLeft" data-wow-delay=".5s" style="font-family: 微软雅黑">您共有订单: <span>${size}单</span></h3>
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				
				
				
				
				<table class="timetable_sub" style="font-family: 微软雅黑;">
					<thead>
						<tr>
							<th width="10%">订单号</th>	
							<th width="10%">日期</th>	
							<th width="20%">图书</th>
							<th width="10%">数量</th>
							<th width="10%">价格</th>
							<th width="10%">邮费</th>
							<th width="10%">合计金额</th>
							<th width="10%">订单状态</th>
							<th width="10%">操作</th>
						</tr>
					</thead>
					  <c:if test="${empty myOrderList}">
					  <tr class="rem1">
					  <td colspan="8">
					    <div class="alert alert-warning">您暂时没有订单，快去买买买吧！</div>
					  </td>
					  </tr>
					  </c:if>
					   <c:if test="${!empty myOrderList}">
						 <c:forEach var="order" items="${myOrderList}" varStatus="status" >
						 <% int m=0; %>
						  <tr class="rem${status.count}">
						<td class="invert" rowspan="${order.detialNumber}">${order.orderid}</td> 
						<td class="invert" rowspan="${order.detialNumber}">${order.orderdate}</td>
						</tr>
					     <c:forEach var="orderDetial" items="${orderDetial}" > 
					      <c:if test="${orderDetial.orderid==order.orderid}">
					 <tr class="rem${status.count}">
						<td class="invert-image">
						<a href='<c:url value="/book/showBookDetial?id=${orderDetial.bookid}"></c:url>' >
						<img src='<c:url value="/upload/${orderDetial.imgSrc}"></c:url>' alt=" " class="img-responsive" />
						<br>${orderDetial.bookname}
						</a>
						</td>
						<td class="invert">${orderDetial.quantity}</td>
						<td class="invert">${orderDetial.price}</td>
						<%if(m==0){
							%>
							<td  class="invert" rowspan="${order.detialNumber}">${order.transfee}&nbsp;元</td>
						<td  class="invert" rowspan="${order.detialNumber}">${order.totalmoney}&nbsp;元</td>
						<td  class="invert" rowspan="${order.detialNumber}">
						 <c:if test="${order.status==0 }">
															<label style="color:green;">成功</label>
															</c:if>
															<c:if test="${order.status==1 }">
															<label style="color:blue;">待付款</label>
															</c:if>
															<c:if test="${order.status==2 }">
															<label style="color:red;">退款中<br>(等待审核)</label>
															</c:if>
															<c:if test="${order.status==3 }">
															<label style="color:gray;">已退款</label>
															</c:if>
															<c:if test="${order.status==4 }">
															<label style="color:orange;">待发货<br>(已付款)</label>
															</c:if>
															<c:if test="${order.status==5 }">
															<label style="color:porpuse;">送货中</label>
															</c:if>
						</td>
							<td  class="invert" rowspan="${order.detialNumber}">
							<c:if test="${order.status==5 }">
							<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderUpdate1?id=${order.id}&status=0"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="确认收货" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
							<span class="fa fa-check-square">
							</span>
															</a><br>
															</c:if>
							<c:if test="${order.status==0 }">
							<!-- 评价订单  +申请退款 -->
							<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderAssess?orderid=${order.orderid}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="订单评价" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="fa fa-chevron-right">
																</span>
															</a><br>
							<a class="btn btn-circle btn-icon-only btn-default tooltips"  style="margin: 5px;width:40px" href='<c:url value="/order/orderUpdate1?id=${order.id}&status=2"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="申请退款" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="fa fa-rotate-left"></span>
															</a><br>
															<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderdelete?id=${order.id}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="删除订单" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<i class="icon-trash"></i>
															</a><br>
							</c:if>
							<c:if test="${order.status==1 }">
							<!-- 付款 +删除订单-->
								<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderUpdate1?id=${order.id}&status=4"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="付款" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<span class="fa fa-rmb"></span>
															</a><br>
																<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderdelete?id=${order.id}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="删除订单" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<i class="icon-trash"></i>
															</a><br>
							</c:if>
							<c:if test="${order.status==4 }">
							<!-- 催单-->
								<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='#' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="提醒发货" >
																<span class="fa fa-space-shuttle"></span>
															</a><br>
																
							</c:if>
							<!--已退款  -->
							<c:if test="${order.status==3 }">
							<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderdelete?id=${order.id}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="删除订单" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<i class="icon-trash"></i>
															</a><br>
															</c:if>
							<!-- 订单详情  -->
							<a class="btn btn-circle btn-icon-only btn-default tooltips" style="margin: 5px;width:40px" href='<c:url value="/order/orderDetial1?orderid=${order.orderid}"></c:url>' data-toggle="tooltip" data-placement="bottom" data-html="true" data-original-title="订单详情" onclick="turnTo('/coupon/cashcoupon/edit/${item.id}')">
																<i class="fa fa-info"></i>
															</a><br>
						</td>
						<%m=1;} %>
						</tr>
				  </c:if>
					</c:forEach>
					<% m=0; %>
					</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>
<%@ include file="/customer/commons/foot.jsp"%>
<script type="text/javascript">
$(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>
<script
	src='<c:url value="/assets/global/plugins/bootstrap/js/bootstrap.min.js"></c:url>'
	type="text/javascript"></script>
</body>

</html>