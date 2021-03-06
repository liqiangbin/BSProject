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
				<li class="active">我的购物车</li>
			</ol>
		</div>
	</div>
<div class="checkout">
		<div class="container">
			<h3 class="animated wow slideInLeft" data-wow-delay=".5s" style="font-family: 微软雅黑">您的购物车共包含书籍: <span><label id="size">${size}</label>本</span></h3>
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<form method="post" action='<c:url value="/book/makeOrder"></c:url>'>
				<table class="timetable_sub">
					<thead>
						<tr>
							<th width="5%">序号</th>	
							<th width="25%">图书</th>
							<th width="15%">数量</th>
							<th width="18%">书名</th>
							<th width="15%">原价 -折扣</th>
							<th width="15%">折后价</th>
							<th width="8%">移除</th>
						</tr>
					</thead>
					  <c:if test="${empty myShopCar}">
					  <tr class="rem1">
					  <td colspan="7">
					    <div class="alert alert-warning">购物车空空如也，快去购书吧！</div>
					  </td>
					  </tr>
					  </c:if>
					   <c:if test="${!empty myShopCar}">
					    <c:forEach var="shopCar" items="${myShopCar}" varStatus="status" >
					    <input type="hidden" id="CalNumber${status.count}" name="CalNumber${status.count}" class="canNumber" onchange="calTotalMoney();" value="${shopCar.quantity}">
					     <input type="hidden" id="Calprice${status.count}" name="Calprice${status.count}" value="${shopCar.discountedPrice}">
					      <input type="hidden" id="bookid${status.count}" name="bookid${status.count}" value="${shopCar.bookid}">
					       <input type="hidden" id="bookname${status.count}" name="bookname${status.count}" value="${shopCar.bookname}">
					       <input type="hidden" id="id${status.count}" name="id${status.count}" value="${shopCar.id}">
					    <input type="hidden" id="img${status.count}" name="img${status.count}" value="${shopCar.imgSrc}">
					    </c:forEach>
					    <input type="hidden" id="totalMoney" name="totalMoney" value="${totalMoney}">
					    <input type="hidden" id="shoCarSize" name="shoCarSize" value="${shopCarSize}">
					    <c:forEach var="shopCar" items="${myShopCar}" varStatus="status" > 
					<tr class="rem${status.count}">
						<td class="invert">${status.count}</td>
						<td class="invert-image"><a href="single.html">
						<img src='<c:url value="/upload/${shopCar.imgSrc}"></c:url>' alt=" " class="img-responsive" /></a></td>
						<td class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus" onclick="reduce(${status.count},this);">&nbsp;</div>
									<div class="entry value"><span>${shopCar.quantity}</span></div>
									<div class="entry value-plus active" onclick="plus(${status.count},this);">&nbsp;</div>
								</div>
							</div>
						</td>
						<td class="invert">${shopCar.bookname}</td>
						<td class="invert">${shopCar.price}&nbsp;元  <c:if test="${shopCar.discount!=null}">&nbsp;<span style="font-weight:text-shadow;font-style:italic;color:red;">${shopCar.discount}&nbsp;折</span></c:if></td>
						<td class="invert">${shopCar.discountedPrice}&nbsp;元
						</td>
						<td class="invert">
							<div class="rem">
								<a href='<c:url value="/customer/deleteShopCar?id=${shopCar.id}"></c:url>'><div class="close1" id="close${status.count}"> </div></a>
							</div>
						</td>
					</tr>
					</c:forEach>
					      <input type="hidden" id="allnumber" name="allnumber" value="${size}">
								<!--quantity-->
									<script>
									function calTotalMoney(){
										var totalMoney=0;
										  <c:forEach var="shopCar" items="${myShopCar}" varStatus="status" >
										   var count=$("#CalNumber${status.count}").val();
										   var price=$("#Calprice${status.count}").val();
										   totalMoney=totalMoney+count*price;
										   console.log(count+"|"+price+"|"+count*price);
										    </c:forEach>
										    $("#totalMoney1").html(totalMoney.toFixed(2));
										    $("#totalMoney").val(totalMoney.toFixed(2));
										    
									}
									 function plus(idCount,_this){
										var divUpd = $(_this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
										$("#CalNumber"+idCount).val(newVal);
										var num=parseInt($("#allnumber").val())+1;
										$("#allnumber").val(num);
										$("#size").html(num);
										calTotalMoney();
									}

									 function reduce(idCount,_this){
										var divUpd = $(_this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1){
											divUpd.text(newVal);
											$("#CalNumber"+idCount).val(newVal);
											var num=parseInt($("#allnumber").val()-1);
											$("#size").html(num);
											calTotalMoney();
										}
									}
									</script>
								<tr >
						<td  colspan="7" align="right"><div style="margin-right: -700px;margin-top:20px;margin-bottom:20px;">
					
						<label style="font-size:20px;" >合计：<label id="totalMoney1" style="font-size:20px;">${totalMoney}</label> 元</label><br><br>
						<button type="submit" class="btn btn-warning btn-lg"> 
						&nbsp; 结&nbsp;&nbsp;算&nbsp;&nbsp;</button>
						 </div>
						</td>
					</tr>
					</c:if>
				</table>
				</form>
			</div>
		</div>
	</div>
<%@ include file="/customer/commons/foot.jsp"%>
<script type="text/javascript">

</script>
</body>

</html>