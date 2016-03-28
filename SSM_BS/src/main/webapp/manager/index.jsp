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
			<div class="page-content">
				<!-- BEGIN PAGE HEADER-->
				<h3 class="page-title">MSC首页</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><i class="fa fa-home"></i> <a href="index.html">MSC首页</a>
						</li>
					</ul>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN 消费成功金额...总入账金额汇总 -->
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat blue-soft" href="javascript:;">
							<div class="visual">
								<i class="fa fa-rmb"></i>
							</div>
							<div class="details">
								<div class="number">
									1410.02<span class="desc"> 元</span>
								</div>
								<div class="desc">消费成功金额</div>
							</div>
							<a class="more" href="transstatistic-skfw.html">查看更多<i
								class="m-icon-swapright m-icon-white"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat red-soft" href="javascript:;">
							<div class="visual">
								<i class="fa fa-trophy"></i>
							</div>
							<div class="details">
								<div class="number">
									0.00<span class="desc"> 元</span>
								</div>
								<div class="desc">预授权完成金额</div>
							</div>
							<a class="more" href="transstatistic-skfw.html">查看更多<i
								class="m-icon-swapright m-icon-white"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat green-soft" href="javascript:;">
							<div class="visual">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<div class="details">
								<div class="number">
									1410.02<span class="desc"> 元</span>
								</div>
								<div class="desc">总交易金额</div>
							</div>
							<a class="more" href="transstatistic-skfw.html">查看更多<i
								class="m-icon-swapright m-icon-white"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat purple-soft" href="javascript:;">
							<div class="visual">
								<i class="fa fa-database"></i>
							</div>
							<div class="details">
								<div class="number">
									1398.1<span class="desc"> 元</span>
								</div>
								<div class="desc">总入账金额</div>
							</div>
							<a class="more" href="transstatistic-skfw.html">查看更多<i
								class="m-icon-swapright m-icon-white"></i></a>
						</div>
					</div>
				</div>
				<!-- END 消费成功金额...总入账金额汇总 -->
				<div class="clearfix"></div>
				<!-- BEGIN 日交易趋势图-->
				<div class="row">
					<div class="col-md-12">
						<div class="portlet light ">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-area-chart font-green-sharp"></i> <span
										class="caption-subject font-green-sharp bold uppercase">日交易趋势图</span>
								</div>
								<div class="actions more">
									<a href="transstatistic-skfw.html">查看更多&nbsp;&nbsp;<i
										class="m-icon-swapright m-icon"></i></a>
								</div>
							</div>
							<div class="portlet-body">
								<div class="echart-chart">
									<div class="echart-chart-content" id="margins"
										style="height: 235px;"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END 日交易趋势图-->
				<!-- BEGIN 热门自主服务&系统公告-->
				<div class="row">
					<div class="col-lg-8 col-md-12">
						<!-- BEGIN 热门自主服务-->
						<div class="portlet light ">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-h-square font-green-sharp"></i> <span
										class="caption-subject font-green-sharp bold uppercase">热门自主服务</span>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row">
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-blue" href="transquery.html">
											<div class="hs-service-body clearfix">
												<img
													src="../../assets/admin/layout2/img/service-blueico.jpg"
													class="img-circle">
												<h4>交易查询</h4>
												<p>为您提供收款服务的交易查询功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-cyan"
											href="transstatistic-skfw.html">
											<div class="hs-service-body clearfix">
												<img
													src="../../assets/admin/layout2/img/service-cyanico.jpg"
													class="img-circle">
												<h4>交易统计</h4>
												<p>为您提供首款服务的交易统计功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-yellow"
											href="transreconciliation.html">
											<div class="hs-service-body clearfix">
												<img
													src="../../assets/admin/layout2/img/service-yellowico.jpg"
													class="img-circle">
												<h4>交易对账</h4>
												<p>为您提供首款服务的交易对账功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-green" href="usermng.html">
											<div class="hs-service-body clearfix">
												<img
													src="../../assets/admin/layout2/img/service-greenico.jpg"
													class="img-circle">
												<h4>用户管理</h4>
												<p>为您提供角色分配的功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-red" href="authoritymng.html">
											<div class="hs-service-body clearfix">
												<img src="../../assets/admin/layout2/img/service-redico.jpg"
													class="img-circle">
												<h4>权限管理</h4>
												<p>为角色提供权限分配功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-purple"
											href="pwdsettings.html">
											<div class="hs-service-body clearfix">
												<img
													src="../../assets/admin/layout2/img/service-purpleico.jpg"
													class="img-circle">
												<h4>密码修改</h4>
												<p>为您提供密码修改功能</p>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<!-- END 热门自主服务-->
					</div>
					<div class="col-lg-4  col-md-12">
						<!-- BEGIN 系统公告-->
						<div class="portlet light">
							<div class="portlet-title tabbable-line">
								<div class="caption">
									<i class="icon-bell font-green-sharp"></i> <span
										class="caption-subject font-green-sharp bold">系统公告</span>
								</div>
								<div class="actions more">
									<a href="news.html">查看更多&nbsp;&nbsp;<i
										class="m-icon-swapright m-icon"></i></a>
								</div>
							</div>
							<div class="portlet-body">
								<!--BEGIN 系统公告-->
								<div class="tab-content">
									<div class="tab-pane active" id="tab_1_1">
										<div class="scroller" data-always-visible="1"
											data-rail-visible="0">
											<ul class="feeds">
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	You have 4 pending tasks. <span
																		class="label label-sm label-info"> Take action
																		<i class="fa fa-share"></i>
																	</span>
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">Just now</div>
													</div>
												</li>
												<li><a href="javascript:;">
														<div class="col1">
															<div class="cont">
																<div class="cont-col1">
																	<div class="label label-sm label-success">
																		<i class="fa fa-bell-o"></i>
																	</div>
																</div>
																<div class="cont-col2">
																	<div class="desc">New version v1.4 just lunched!
																	</div>
																</div>
															</div>
														</div>
														<div class="col2">
															<div class="date">20 mins</div>
														</div>
												</a></li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-danger">
																	<i class="fa fa-bolt"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">Database server #12 overloaded.
																	Please fix the issue.</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">24 mins</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-info">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">New order received. Please take
																	care of it.</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">30 mins</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">New order received. Please take
																	care of it.</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">40 mins</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-warning">
																	<i class="fa fa-plus"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">New user registered.</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">1.5 hours</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-success">
																	<i class="fa fa-bell-o"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">
																	Web server hardware needs to be upgraded. <span
																		class="label label-sm label-default "> Overdue
																	</span>
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">2 hours</div>
													</div>
												</li>
												<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-default">
																	<i class="fa fa-bullhorn"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">New order received. Please take
																	care of it.</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">3 hours</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!--END 系统公告-->
							</div>
						</div>
						<!-- END 系统公告-->
					</div>
				</div>
				<!-- END 热门自主服务&系统公告-->
			</div>
		</div>
		<!-- END CONTENT -->
		<!-- 正文部分结束 -->
	</div>
	<%@ include file="/commons/foot.jsp"%>
		<script>
			var source = {
				"platformMargin": [{
					"name": "00",
					"value": 0.00
				}, {
					"name": "01",
					"value": 0.00
				}, {
					"name": "02",
					"value": 0.00
				}, {
					"name": "03",
					"value": 0.00
				}, {
					"name": "04",
					"value": 0.00
				}, {
					"name": "05",
					"value": 0.00
				}, {
					"name": "06",
					"value": 10.00
				}, {
					"name": "07",
					"value": 0.00
				}, {
					"name": "08",
					"value": 0.00
				}, {
					"name": "09",
					"value": 0.00
				}, {
					"name": "10",
					"value": 7.89
				}, {
					"name": "11",
					"value": 4.50
				}, {
					"name": "12",
					"value": 1.56
				}, {
					"name": "13",
					"value": 0.00
				}, {
					"name": "14",
					"value": 0.00
				}, {
					"name": "15",
					"value": 0.00
				}, {
					"name": "16",
					"value": 0.00
				}, {
					"name": "17",
					"value": 0.00
				}, {
					"name": "18",
					"value": 0.00
				}, {
					"name": "19",
					"value": 0.00
				}, {
					"name": "20",
					"value": 0.00
				}, {
					"name": "21",
					"value": 0.00
				}, {
					"name": "22",
					"value": 0.00
				}, {
					"name": "33",
					"value": 0.00
				}]
			};
			jQuery(document).ready(function() {
				Metronic.init(); // init metronic core components
				Layout.init(); // init current layout						
				Index.initDrawPlatformMarginChart();
			});
		</script>
</body>

</html>