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
				<h3 class="page-title">IBooK首页</h3>
				<%-- <input type="text" value="${managers.Id}"> --%>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><i class="fa fa-home"></i> <a href="index.html">IBooK首页</a>
						</li>
					</ul>
				</div>
				<!-- END PAGE HEADER-->
				 <!-- BEGIN 消费成功金额...总入账金额汇总 -->
            <div class="row">
                <div class="col-md-12">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="padding-left:0">
                        <div class="dashboard-stat blue-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-rmb"></i></div>
                            <div class="details">
                                <div class="number">${allOrder} <span class="desc">笔</span></div>
                                <div class="desc">成功完成订单</div>
                            </div>
                            <a class="more" href="#">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat red-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-trophy"></i></div>
                            <div class="details">
                                <div class="number">${allBook }<span class="desc">本</span></div>
                                <div class="desc">总计销售图书</div>
                            </div>
                            <a class="more" href="#">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat green-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-shopping-cart"></i></div>
                            <div class="details">
                                <div class="number">${allMoney}<span class="desc">元</span></div>
                                <div class="desc">总交易金额</div>
                            </div>
                            <a class="more" href="#">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="padding-right:0">
                        <div class="dashboard-stat purple-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-database"></i></div>
                            <div class="details">
                                <div class="number">${allMoney}<span class="desc">元</span></div>
                                <div class="desc">总入账金额</div>
                            </div>
                            <a class="more" href="#">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
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
										class="caption-subject font-green-sharp bold uppercase">本月日交易趋势图</span>
								</div>
								<div class="actions more">
									<a href="#">查看更多&nbsp;&nbsp;<i
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
										class="caption-subject font-green-sharp bold uppercase">热门快捷服务</span>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row">
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-blue" href='<c:url value="/book/getBookByPage"></c:url>'>
											<div class="hs-service-body clearfix">
												<img
													src='<c:url value="/assets/admin/layout2/img/service-blueico.jpg"></c:url>'
													class="img-circle">
												<h4>图书管理</h4>
												<p>为您提供图书相关的管理功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-cyan"
											href='<c:url value="/main/count"></c:url>'>
											<div class="hs-service-body clearfix">
												<img
													src='<c:url value="/assets/admin/layout2/img/service-cyanico.jpg"></c:url>'
													class="img-circle">
												<h4>销量统计</h4>
												<p>为您展示直白的销量信息</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-yellow"
											href='<c:url value="/notice/getNoticeByPage"></c:url>'>
											<div class="hs-service-body clearfix">
												<img
													src='<c:url value="/assets/admin/layout2/img/service-yellowico.jpg"></c:url>'
													class="img-circle">
												<h4>公告管理</h4>
												<p>为您系统公告和优惠信息管理</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-green" href='<c:url value="/manager/getManagerByPage"></c:url>'>
											<div class="hs-service-body clearfix">
												<img
													src='<c:url value="/assets/admin/layout2/img/service-greenico.jpg"></c:url>'
													class="img-circle">
												<h4>用户管理</h4>
												<p>为您提供角色分配的功能</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-red" href='<c:url value="/suggest/editSuggest"></c:url>'>
											<div class="hs-service-body clearfix">
												<img src='<c:url value="/assets/admin/layout2/img/service-redico.jpg"></c:url>'
													class="img-circle">
												<h4>智能推荐管理</h4>
												<p>方便您为用户选择合适的推荐方式</p>
											</div>
										</a>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<a class="hs-service hs-service-purple"
											href='<c:url value="/manager/passwordEdit.jsp"></c:url>'>
											<div class="hs-service-body clearfix">
												<img
													src='<c:url value="/assets/admin/layout2/img/service-purpleico.jpg"></c:url>'
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
									<a href='<c:url value="/notice/getNoticeByPage"></c:url>'>查看更多&nbsp;&nbsp;<i
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
											 <c:forEach var="notice" items="${managerNotice}"  varStatus="status">
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
																	${notice.title }
																	<br><span> 
																		${notice.content }
																	</span>
																</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">${notice.date }</div>
													</div>
												</li>
											 </c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<!--END 系统公告-->
							</div>
						<div class="portlet-title tabbable-line">
								<div class="caption">
									<i class="icon-bell font-green-sharp"></i> <span
										class="caption-subject font-green-sharp bold">优惠信息</span>
								</div>
								<div class="actions more">
									<a href='<c:url value="/notice/getNoticeByPage"></c:url>'>查看更多&nbsp;&nbsp;<i
										class="m-icon-swapright m-icon"></i></a>
								</div>
							</div>
							<!--BEGIN 系统公告-->
								<div class="tab-content">
									<div class="tab-pane active" id="tab_1_1">
										<div class="scroller" data-always-visible="1"
											data-rail-visible="0">
											<ul class="feeds">
											 <c:forEach var="notice" items="${activeNotice}"  varStatus="status">
													<li>
													<div class="col1">
														<div class="cont">
															<div class="cont-col1">
																<div class="label label-sm label-danger">
																	<i class="fa fa-bolt"></i>
																</div>
															</div>
															<div class="cont-col2">
																<div class="desc">${notice.title }</div>
																<div class="desc">${notice.content}</div>
															</div>
														</div>
													</div>
													<div class="col2">
														<div class="date">${notice.date }</div>
													</div>
												</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<!--END 系统公告-->
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
					"platformMargin":
						 <c:if test="${!empty moneyList}">
						 [
						 <c:forEach var="money" items="${moneyList}"  varStatus="status">
						 
						 <c:if test="${money.day!=31}">
						 {"name": "${money.day}", "value": ${money.money}},
						 </c:if>
						 <c:if test="${money.day==31}">
						 {"name": "${money.day}", "value": ${money.money}}
						 </c:if>
							</c:forEach>
							]
						 </c:if>
					 <c:if test="${empty moneyList}">
					 [{ "name": "01", "value": 0.00 }
					 , { "name": "02", "value": 0.00 }
					 , { "name": "03", "value": 0.00 }
					 , { "name": "04", "value": 0.00 }
					 , { "name": "05", "value": 0.00}				
					 , { "name": "06", "value": 0.00 }
					 , { "name": "07", "value": 0.00 }
					 , { "name": "08", "value": 0.00 }						
					 , { "name": "09", "value": 0.00 }
					 , { "name": "10", "value": 0.00 }       				
					 , { "name": "11", "value": 0.00  }
					 , { "name": "12", "value": 0.00  }
					 , { "name": "13", "value": 0.00 }
					 , { "name": "14", "value": 0.00 }
					 , { "name": "15", "value": 0.00}  
					 , { "name": "16", "value": 0.00 }
					 , { "name": "17", "value": 0.00 }
					 , { "name": "18", "value": 0.00 }
					 , { "name": "19", "value": 0.00 }
					 , { "name": "20", "value": 0.00}  
					 , { "name": "21", "value": 0.00 }
					 , { "name": "22", "value": 0.00 }
					 , { "name": "23", "value": 0.00 }
					 , { "name": "24", "value": 0.00 }
					 , { "name": "25", "value": 0.00 }
					 , { "name": "26", "value": 0.00 }
					 , { "name": "27", "value": 0.00 }
					 , { "name": "28", "value": 0.00}  
					 , { "name": "29", "value": 0.00 }
					 , { "name": "30", "value": 0.00  }
					 , { "name": "31", "value": 0.00 }] 
						 </c:if>
			};
			jQuery(document).ready(function() {
				Metronic.init(); // init metronic core components
				Layout.init(); // init current layout						
				Index.initDrawPlatformMarginChart();
			});
		</script>
</body>

</html>