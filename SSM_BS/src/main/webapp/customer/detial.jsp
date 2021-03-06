<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/customer/commons/head.jsp"%>
</head>
<body>
	<%@ include file="/customer/commons/top.jsp"%>
<!-- breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
					<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
					<li class="active">图书详情<i class="fa fa-save"></i></li>
				</ol>
			</div>
		</div>
		<!-- //breadcrumbs -->
		<!-- single -->
		<div class="single">
			<div class="container">
				<div class="col-md-9 single-right">
					<div class="col-md-5 single-right-left animated wow slideInUp" data-wow-delay=".5s">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/si.jpg">
									<div class="thumb-image"> <img src="images/si.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/si1.jpg">
									<div class="thumb-image"> <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/si2.jpg">
									<div class="thumb-image"> <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							</ul>
						</div>
						<!-- flixslider -->
						<script defer src="js/jquery.flexslider.js"></script>
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
						<script>
							// Can also be used with $(document).ready()
							$(window).load(function() {
								$('.flexslider').flexslider({
									animation: "slide",
									controlNav: "thumbnails"
								});
							});
						</script>
						<!-- flixslider -->
					</div>
					<div class="col-md-7 single-right-left simpleCart_shelfItem animated wow slideInRight" data-wow-delay=".5s" style="padding-left: 100px;">
						<h3>Men's Solid Casual Shirt 课程</h3>
						<h4><span class="item_price">价格：￥550</span> </h4>
						<h4 style="color: black;">折扣： <span class="item_price" style="color: red;">0.95 折</span> </h4>
						<div class="rating1">
							<span class="starRating" >
							<input id="rating5" type="radio" name="rating" value="5" disabled>
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4" disabled>
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked disabled>
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2" disabled>
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1" disabled>
							<label for="rating1">1</label>
						</span>
						</div>
						<div class="description">
							<h5 style="font-family: '微软雅黑';"><i>简介:</i></h5>
							<p>作者：李强斌QBB</p>
							<p>这里是图书Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
						</div>
						<div class="color-quality">
							<div class="color-quality-left">
								<div class="quantity"> <h5>数量:</h5>
								<div class="quantity-select" >                           
									<div class="entry value-minus" onclick="reduce();">&nbsp;</div>
									<div class="entry value"><input type="text" id="number" name="number" value="1" class="form-control small" style="margin-top:-10px;height: 40px;" /></div>
									<div class="entry value-plus active" onclick="add();">&nbsp;</div>
								</div>
							</div>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="social">
							<div class="occasion-cart">
							<a class="item_add" href="#">加入购物车</a>
							<a class="item_add" href="#">直接购买</a>
						</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="bootstrap-tab animated wow slideInUp" data-wow-delay=".5s">
						<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
								<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Reviews(2)</a></li>
								<li role="presentation" class="dropdown">
									<a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Information <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
										<li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">cleanse</a></li>
										<li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">fanny</a></li>
									</ul>
								</li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
									<p>作者李强斌。。。。。 haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth.
										Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
										</p>
										<h5>图书简介</h5>
									<p>javaEE Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth.
										Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
										</p>
								</div>
								<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
									<div class="bootstrap-tab-text-grids">
										<div class="bootstrap-tab-text-grid">
											<div class="bootstrap-tab-text-grid-left">
												<img src="images/tupian1.jpg" alt=" " class="img-responsive" style="border-radius: 90px;width:80px;height: 80px;"/>
											</div>
											<div class="bootstrap-tab-text-grid-right">
												<ul>
													<li><a href="#">用户1</a></li>
													<li style="color: gray;"><div style="color: red;margin-right: 50px;"><i class="fa fa-star"></i><i class="fa fa-star-half-empty"></i><i class="fa fa-star-half-o"></i></div>2016/5/4 20:30:09</li>
												</ul>
												<p>这本书满分，可以好评</p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="bootstrap-tab-text-grid">
											<div class="bootstrap-tab-text-grid-left">
												<img src="images/tupian3.jpg" style="border-radius: 90px;width:80px;height: 80px;" alt=" " class="img-responsive" />
											</div>
											<div class="bootstrap-tab-text-grid-right">
												<ul>
													<li><a href="#">Admin</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
												</ul>
												<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="bootstrap-tab-text-grid">
											<div class="bootstrap-tab-text-grid-left">
												<img src="images/tupian4.jpg" alt=" " class="img-responsive"  style="border-radius: 90px;width:80px;height: 80px;"/>
											</div>
											<div class="bootstrap-tab-text-grid-right">
												<ul>
													<li><a href="#">Admin</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
												</ul>
												<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="bootstrap-tab-text-grid">
											<div class="bootstrap-tab-text-grid-left">
												<img src="images/tupian2.jpg" alt=" "  sstyle="border-radius: 90px;width:100px;height: 100px;"style="border-radius: 90px;width:80px;height: 80px;" class="img-responsive" />
											</div>
											<div class="bootstrap-tab-text-grid-right">
												<ul>
													<li><a href="#">Admin</a></li>
													<li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
												</ul>
												<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit.</p>
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="add-review">
											<h4>add a review</h4>
											<form>
												<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
												<input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
												<input type="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}" required="">
												<textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
												<input type="submit" value="Send">
											</form>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
									<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia
										banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard
										of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
								</div>
								<div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
									<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park
										Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh
										echo park vegan.</p>
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
				<h3 class="animated wow slideInUp" data-wow-delay=".5s">Related Products</h3>
				<p class="est animated wow slideInUp" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<div class="new-collections-grids">
					<div class="col-md-3 new-collections-grid">
						<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".5s">
							<div class="new-collections-grid1-image">
								<a href="single.html" class="product-image"><img src="images/8.jpg" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.html">Quick View</a>
								</div>
								<div class="new-collections-grid1-right">
									<div class="rating">
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
							<h4><a href="single.html">Running Shoes</a></h4>
							<p>Vel illum qui dolorem eum fugiat.</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p><i>$280</i> <span class="item_price">$150</span><a class="item_add" href="#">add to cart </a></p>
							</div>
						</div>
					</div>
					<div class="col-md-6 new-collections-grid">
						<div class="new-collections-grid1-sub">
							<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".6s">
								<div class="new-collections-grid1-image">
									<a href="single.html" class="product-image"><img src="images/6.jpg" alt=" " class="img-responsive"></a>
									<div class="new-collections-grid1-image-pos">
										<a href="single.html">Quick View</a>
									</div>
									<div class="new-collections-grid1-right">
										<div class="rating">
											<div class="rating-left">
												<img src="images/2.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/2.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/2.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/2.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/2.png" alt=" " class="img-responsive">
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
								</div>
								<h4><a href="single.html">Wall Lamp</a></h4>
								<p>Vel illum qui dolorem eum fugiat.</p>
								<div class="new-collections-grid1-left simpleCart_shelfItem">
									<p><i>$480</i> <span class="item_price">$400</span><a class="item_add" href="#">add to cart </a></p>
								</div>
							</div>
						</div>
						<div class="new-collections-grid1-sub">
							<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".7s">
								<div class="new-collections-grid1-image">
									<a href="single.html" class="product-image"><img src="images/9.jpg" alt=" " class="img-responsive"></a>
									<div class="new-collections-grid1-image-pos">
										<a href="single.html">Quick View</a>
									</div>
									<div class="new-collections-grid1-right">
										<div class="rating">
											<div class="rating-left">
												<img src="images/2.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/1.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/1.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/1.png" alt=" " class="img-responsive">
											</div>
											<div class="rating-left">
												<img src="images/1.png" alt=" " class="img-responsive">
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
								</div>
								<h4><a href="single.html">Wall Lamp</a></h4>
								<p>Vel illum qui dolorem eum fugiat.</p>
								<div class="new-collections-grid1-left simpleCart_shelfItem">
									<p><i>$280</i> <span class="item_price">$150</span><a class="item_add" href="#">add to cart </a></p>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-3 new-collections-grid">
						<div class="new-collections-grid1 animated wow slideInLeft" data-wow-delay=".8s">
							<div class="new-collections-grid1-image">
								<a href="single.html" class="product-image"><img src="images/11.jpg" alt=" " class="img-responsive"></a>
								<div class="new-collections-grid1-image-pos">
									<a href="single.html">Quick View</a>
								</div>
								<div class="new-collections-grid1-right">
									<div class="rating">
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/2.png" alt=" " class="img-responsive">
										</div>
										<div class="rating-left">
											<img src="images/1.png" alt=" " class="img-responsive">
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
							<h4><a href="single.html">Stones Bangles</a></h4>
							<p>Vel illum qui dolorem eum fugiat.</p>
							<div class="new-collections-grid1-left simpleCart_shelfItem">
								<p><i>$340</i> <span class="item_price">$257</span><a class="item_add" href="#">add to cart </a></p>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //single-related-products -->
<%@ include file="/customer/commons/foot.jsp"%>
	<script type="text/javascript">
			function add(){
				var number=parseInt($("#number").val())+1;
				$("#number").val(number);
			}
			function reduce(){
				var number=$("#number").val();
				if(number>1){
					$("#number").val(parseInt(number)-1);
				}
			}
		</script>
</body>

</html>