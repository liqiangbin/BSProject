<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/customer/commons/head.jsp"%>
</head>
<body>
	<%@ include file="/customer/commons/top.jsp"%>
	<script>
 new WOW().init();
</script>
	<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".3s">
				<h3>Free Online Shopping</h3>
				<h4>Up to <span>50% <i>Off/-</i></span></h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>T-Shirts + Formal Pants + Jewellery + Cosmetics</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Toys + Furniture + Lighting + Watches</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Tops + Books & Media + Sports</p>
								</div>
							</div>
						</article>
					</div>
				</div>
					<script src='<c:url value="/customer/js/jquery.wmuSlider.js"></c:url>'></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container"> 
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".3s">
					<div class="grid">
						<figure class="effect-julia">
							<img src="<%=request.getContextPath()%>/customer/images/paihanghead.jpg" alt=" " style="width:400px;height: 462px;" class="img-responsive" />
							<figcaption>
								<h3>IBooK <span>Store</span><i> in online shopping</i></h3>
								<div>
								 <c:forEach var="activity" items="${top3ActivityList}" varStatus="status" > 
								 <c:if test="${status.count==1}">
								 优惠活动一
								 </c:if>
								  <c:if test="${status.count==2}">
								 优惠活动二
								 </c:if>
								  <c:if test="${status.count==3}">
								 优惠活动三
								 </c:if>
									<p style="background-color: pink;">${activity.content}</p><br>
									 </c:forEach>
								</div>
							</figcaption>			
						</figure>
					</div>
				</div>
				
				<div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".3s">
					<c:forEach var="book" items="${top3BbookList}" varStatus="status" > 
					  <c:if test="${status.count!=3}">
					 	<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src='<c:url value="/upload/${book.mainimg}"></c:url>' alt=" " class="img-responsive" style="width:400px;height: 224px;" />
						</div>
						<div class="banner-bottom-grid-left1-pos">
						<p style="color:white;font-size: 16px;font-family:微软雅黑;" >${book.name}</p><br>
							<p style="color: orange;">
							<c:if test="${status.count==1}">
							销量第一
								 </c:if>
								  <c:if test="${status.count==2}">
							销量第二
								 </c:if>
								 </p>
						 </div>
					</div>
					 </c:if>
					 </c:forEach>
				</div>
				<div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".3s">
				<c:forEach var="book" items="${top3BbookList}" varStatus="status" > 
				   <c:if test="${status.count==3}">
					<div class="banner-bottom-grid-left-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src='<c:url value="/upload/${book.mainimg}"></c:url>' style="width:400px;height: 462px;" alt="" class="img-responsive" />
						</div>
						<div class="grid-left-grid1-pos">
						<p style="color:white;font-size: 16px;font-family:微软雅黑;" >${book.name}</p><br>
							<p style="color: orange;">销量第三</p>
						</div>
					</div>
					  </c:if>
					</c:forEach>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- collections -->
	<div class="new-collections">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".3s">猜您喜欢</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".3s">
				本栏是根据您平时的浏览记录以及问卷填写为您智能推荐的图书，您需要的，我们都懂。。。
			</p>
			<div class="new-collections-grids">
				<c:forEach var="book" items="${suggestTop5}" varStatus="status" > 
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".3s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src='<c:url value="/upload/${book.mainimg}"></c:url>' alt=" " style="width: 228px;height:310.328px" class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">去看看</a>
							</div>
							<div class="new-collections-grid1-right">
						 		<div class="rating">
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="clearfix"> </div>
								</div> 
							</div>
						</div>
						<h4><a href="#" ><B>${book.name}</B></a></h4>
						<p>${book.author}&nbsp;&nbsp;${book.publish}</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><span class="item_price" style="font-size:18px;color:red; ">￥${book.price}</span><span class="item_price" style="color:pink;font-size: 16px;">${book.discount}折</span><a class="item_add" href="#" style="font-size: 10px;">加入购物车</a></p>
						</div>
					</div>
				</div>
				</c:forEach>
				<div class="clearfix"> </div>
			</div>
			
		</div>
	</div>
<!-- //collections -->
<!--*****************-->
<div class="new-collections" style="background-color: white;">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".3s">新书上架</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".3s">
				本栏是为您提供最新的图书资源，精彩内容不容错过...
			</p>
			<p class="est animated wow zoomIn" data-wow-delay=".3s" >
				<a href="#"><label style="width:85%">&nbsp;</label> 查看更多>></a>
			</p>
			<div class="new-collections-grids">
				<c:forEach var="newbook" items="${newBookTop3}" varStatus="status" > 
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".3s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src='<c:url value="/upload/${newbook.mainimg}"></c:url>' alt=" " style="width: 228px;height:310.328px" class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">去看看</a>
							</div>
							<div class="new-collections-grid1-right">
						 		<div class="rating">
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/2.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="images/1.png" alt=" " class="img-responsive" />
									</div>
									<div class="clearfix"> </div>
								</div> 
							</div>
						</div>
						<h4><a href="#" ><B>${newbook.name}</B></a></h4>
						<p>${newbook.author}&nbsp;&nbsp;${newbook.publish}</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><span class="item_price" style="font-size:18px;color:red; ">￥${newbook.price}</span><span class="item_price" style="color:pink;font-size: 16px;">${newbook.discount}折</span><a class="item_add" href="#" style="font-size: 10px;">加入购物车</a></p>
						</div>
					</div>
				</div>
				</c:forEach>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //collections -->

<%@ include file="/customer/commons/foot.jsp"%>
</body>

</html>