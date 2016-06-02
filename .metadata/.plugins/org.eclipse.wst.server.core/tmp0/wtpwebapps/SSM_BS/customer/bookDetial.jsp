<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/customer/commons/head.jsp"%>
</head>
<body>
	<%@ include file="/customer/commons/top.jsp"%>
	<%@ include file="/customer/contactSellers/importContact.jsp"%>
	<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href='<c:url value="/customer/index"></c:url>'><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">图书详情</li>
			</ol>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- single -->
	<div class="single">
		<div class="container">
			<form id="buyForm" method="post" action="#">
			<input type="hidden" id="type" name="type">
				<div class="col-md-9 single-right">
					<div class="col-md-5 single-right-left animated wow slideInUp"
						data-wow-delay=".5s">
						<div class="flexslider">
							<ul class="slides">
								<!-- 304*425.172 -->
								<li data-thumb='<c:url value="/upload/${book.mainimg}"></c:url>'>
									<div class="thumb-image">
										<img style="width: 304px; height: 425.172px"
											src='<c:url value="/upload/${book.mainimg}"></c:url>'
											data-imagezoom="true" class="img-responsive">
									</div>
								</li>
								<c:if test="${!empty book.img1}">
									<li data-thumb='<c:url value="/upload/${book.img1}"></c:url>'>
										<div class="thumb-image">
											<img style="width: 304px; height: 425.172px"
												src='<c:url value="/upload/${book.img1}"></c:url>'
												data-imagezoom="true" class="img-responsive">
										</div>
									</li>
								</c:if>
								<c:if test="${!empty book.img2}">
									<li data-thumb='<c:url value="/upload/${book.img2}"></c:url>'>
										<div class="thumb-image">
											<img style="width: 304px; height: 425.172px"
												src='<c:url value="/upload/${book.img2}"></c:url>'
												data-imagezoom="true" class="img-responsive">
										</div>
									</li>
								</c:if>
							</ul>
						</div>
						<!-- flixslider -->
						<script defer
							src="<%=request.getContextPath()%>/customer/js/jquery.flexslider.js"></script>
						<link rel="stylesheet"
							href="<%=request.getContextPath()%>/customer/css/flexslider.css"
							type="text/css" media="screen" />
						<script>
							// Can also be used with $(document).ready()
							$(window).load(function() {
								$('.flexslider').flexslider({
									animation : "slide",
									controlNav : "thumbnails"
								});
							});
						</script>
						<!-- flixslider -->
					</div>
					<div
						class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight"
						data-wow-delay=".5s" style="padding-left: 100px;">
						<h3>${book.name}</h3>
						<h4 style="color: black; font-size: 22px;">
							价格： <span class="item_price"
								style="color: #c30; font-style: italic;"> ￥${book.price}元
							</span>
						</h4>
						<h4 style="color: black; font-size: 22px;">
							折扣： <span class="item_price"
								style="color: red; font-style: italic;"> <c:if
									test="${!empty book.discount}">${book.discount} 折</c:if>
							</span>
						</h4>
						<c:if test="${!empty rank}">
							<div class="rating1">
								<span class="starRating"> <input id="rating5"
									type="radio" name="rating" value="5"
									<c:if test="${rank>='4.5'}">checked</c:if> disabled> <label
									for="rating5">5</label> <input id="rating4" type="radio"
									name="rating" value="4"
									<c:if test="${rank>='3.5'&&rank<'4.5'}">checked</c:if> disabled>
									<label for="rating4">4</label> <input id="rating3" type="radio"
									name="rating" value="3"
									<c:if test="${rank>='2.5'&&rank<'3.5'}">checked</c:if> disabled>
									<label for="rating3">3</label> <input id="rating2" type="radio"
									name="rating" value="2"
									<c:if test="${rank>='1.5'&&rank<'2.5'}">checked</c:if> disabled>
									<label for="rating2">2</label> <input id="rating1" type="radio"
									name="rating" value="1"
									<c:if test="${rank<'1.5'}">checked</c:if> disabled> <label
									for="rating1">1</label>
								</span>
							</div>
						</c:if>
						<c:if test="${empty rank}">
							<div class="rating1">
								<span class="starRating"> <input id="rating5"
									type="radio" name="rating" value="5" checked disabled>
									<label for="rating5">5</label> <input id="rating4" type="radio"
									name="rating" value="4" disabled> <label for="rating4">4</label>
									<input id="rating3" type="radio" name="rating" value="3"
									disabled> <label for="rating3">3</label> <input
									id="rating2" type="radio" name="rating" value="2" disabled>
									<label for="rating2">2</label> <input id="rating1" type="radio"
									name="rating" value="1" disabled> <label for="rating1">1</label>
								</span>
							</div>
						</c:if>
						<div class="description">
							<h4 style="color: black; font-size: 22px;">
								<i>简介:</i>
							</h4>
							<p>${book.author}&nbsp;著</p>
	<p>${book.publish}</p>
	<p>${book.introduce}</p>
	<br>
	<a href='<c:url value="/customer/readFree/readFree.jsp"></c:url>' target="_blank" >免费试读<i class="fa fa-hand-o-right"></i></a>
</div>
<div class="color-quality">
	<div class="color-quality-left">
		<div class="quantity">	<h4 style="color: black;font-size: 22px;">数量:</h4>
			<div class="quantity-select" >                           
				<div class="entry value-minus" onclick="reduce();">&nbsp;</div>
				<div class="entry value"><input type="text" id="quantity" name="quantity" value="1" class="form-control small" style="margin-top:-10px;height: 40px;" /></div>
				<div class="entry value-plus active" onclick="add();">&nbsp;</div>
			</div>
		</div>
	</div>
	<div class="clearfix"> </div>
</div>
<div class="social">
	<div class="occasion-cart">
	<input type="hidden" id="bookid" name="bookid" value="${book.id}">
	<input type="hidden" id="bookname" name="bookname" value="${book.name}">
	<input type="hidden" id="price" name="price" value="${book.price}">
	<input type="hidden" id="discount" name="discount" value="${book.discount}">
		<a class="item_add" href="#" id="shopCarBtn" onclick="addShopCar();">加入购物车</a>
		<a class="item_add" href="#" id="buyBtn" onclick="buy();" >直接购买</a>
		<label id="stockShow" style="color:red;display:none;" >库存不足！</label>
	</div>
	<div class="clearfix"> </div>
</div>
</form>
</div>
<div class="clearfix"> </div>
<div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
	<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
		<ul id="myTab" class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true" style="color:gray;font-family: 微软雅黑">书籍参数</a></li>
			<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" style="color:gray;font-family: 微软雅黑">评价（${totalNumber}条）</a></li>
			<li role="presentation" >
				<a href='<c:url value="/customer/readFree/readFree.jsp"></c:url>' target="_blank" style="color:gray;font-family: 微软雅黑" >免费试读入口 <span class="caret"></span></a>
				
			</li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
				<h5>作品信息</h5>	
				<p>
				作者:${book.author}<br>
			   出版社：${book.publish}
				</p>
				<h5>图书简介</h5>
				<p>
				&nbsp;&nbsp;${book.introduce}
				</p>
			</div>
			<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
				<div class="bootstrap-tab-text-grids">
				 <c:if test="${empty assessList}">
				<div class="alert alert-warning">暂无评论！</div>
				</c:if>
				 <c:if test="${!empty assessList}">
				  <c:forEach var="assess" items="${assessList}" varStatus="status" > 
					<div class="bootstrap-tab-text-grid" style="margin-top: 30px;">
						<div class="bootstrap-tab-text-grid-left">
						 <c:if test="${status.count%4=='0'}">
							<img src="<%=request.getContextPath()%>/customer/images/tupian1.jpg" alt=" " class="img-responsive" style="border-radius: 90px;width:80px;height: 80px;"/>
						</c:if>
						<c:if test="${status.count%4=='1'}">
							<img src="<%=request.getContextPath()%>/customer/images/tupian2.jpg" alt=" " class="img-responsive" style="border-radius: 90px;width:80px;height: 80px;"/>
						</c:if>
						<c:if test="${status.count%4=='2'}">
							<img src="<%=request.getContextPath()%>/customer/images/tupian3.jpg" alt=" " class="img-responsive" style="border-radius: 90px;width:80px;height: 80px;"/>
						</c:if>
						<c:if test="${status.count%4=='3'}">
							<img src="<%=request.getContextPath()%>/customer/images/tupian4.jpg" alt=" " class="img-responsive" style="border-radius: 90px;width:80px;height: 80px;"/>
						</c:if>
						</div>
						<div class="bootstrap-tab-text-grid-right">
							<ul>
								<li><a href="javascript:void(0);">${assess.user} 
								</a>
								</li>
								<li style="color: gray;">
								<div style="color: red;margin-right: 50px;">
								</div>${assess.dateString}</li>
							</ul>
							<div style="margin-top: -23px;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<i class="fa fa-star" style="<c:if test="${assess.rank>='1'}">color:orange;</c:if>" ></i>
								<i class="fa fa-star" style="<c:if test="${assess.rank>='2'}">color:orange;</c:if>"></i>
								<i class="fa fa-star" style="<c:if test="${assess.rank>='3'}">color:orange;</c:if>"></i>
								<i class="fa fa-star" style="<c:if test="${assess.rank>='4'}">color:orange;</c:if>"></i>
								<i class="fa fa-star" style="<c:if test="${assess.rank>='5'}">color:orange;</c:if>"></i>
							</div>
							<p>${assess.comment}</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					</c:forEach>
					</c:if>
				</div>
			</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"> </div>
</div>
</div>
<!-- //single -->
<!-- single-related-products -->
<div class="single-related-products">
	<div class="container">
		<h3 class="animated wow slideInUp" data-wow-delay=".5s">同类书籍</h3>
		<p class="est animated wow slideInUp" data-wow-delay=".5s">根据您的浏览记录，系统猜您会喜欢以下图书哦！不妨试试看。</p>
		<div class="new-collections-grids">
		<c:forEach var="book" items="${showSuggestList}" varStatus="status" > 
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".3s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src='<c:url value="/upload/${book.mainimg}"></c:url>' alt=" " style="width: 200px;height:230px" class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">去看看</a>
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
	<input type="hidden" id="shopCarMessage" value="${shopCarMessage}">
</div>
<!-- //single-related-products -->
<%@ include file="/customer/commons/foot.jsp"%>
<script type="text/javascript">
var stock=${book.stock};
var quantity=$("#quantity").val();
if(stock<quantity){
	 $("#shopCarBtn").hide();
	 $("#buyBtn").hide();
	 $("#stockShow").show();
	 }else{
		 $("#shopCarBtn").show();
		 $("#buyBtn").show();
		 $("#stockShow").hide();
	 }
	function add(){
		var number=parseInt($("#quantity").val())+1;
		$("#quantity").val(number);
		 if(stock<number){
			 $("#shopCarBtn").hide();
			 $("#buyBtn").hide();
			 $("#stockShow").show();
			 }else{
				 $("#shopCarBtn").show();
				 $("#buyBtn").show();
				 $("#stockShow").hide();
			 }
		
		
	}
	function reduce(){
		var number=$("#quantity").val();
		if(number>1){
			var newnumber=parseInt(number)-1;
			$("#quantity").val(parseInt(number)-1);
			 if(stock<newnumber){
			 $("#shopCarBtn").hiden();
			 $("#buyBtn").hiden();
			 $("#stockShow").show();
			 }else{
				 $("#shopCarBtn").show();
				 $("#buyBtn").show();
				 $("#stockShow").hide();
			 }
		} 
		} 
	setTimeout(function (){ 
		   $(".flex-control-thumbs img").attr("style","width:96.438px;height:134.875px;margin-top:10px;");
						       }, 100); 
			function addShopCar(){ 
				$("#type").val("shopcar");
				$("#buyForm").attr("action",'<c:url value="/book/addShopCar"></c:url>');
				$("#buyForm").submit();
				} 
			function buy(){ 
				$("#type").val("buy");
				$("#buyForm").attr("action",'<c:url value="/book/buy"></c:url>');
				$("#buyForm").submit();
				}
			
		//判断加入购物车
		
		var  shopCarMessage=$("#shopCarMessage").val();
		if(shopCarMessage!=null&&shopCarMessage!=""){
			showAlertModel("提示信息",shopCarMessage,null);
		}
		$("#shopCarMessage").val("");
		 setTimeout(function (){
			 $("#closeImg").attr("src",'http://localhost:8080/SSM_BS/customer/contactSellers/images/closeBtnImg.gif');
			   }, 100);
								</script>
</body>

</html>