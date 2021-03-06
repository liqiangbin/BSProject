<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->
	<!-- BEGIN HEAD -->

	<head>
		<meta charset="utf-8" />
		<title>IBooK-商家服务平台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1.0" name="viewport" />
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<meta content="" name="description">
		<meta content="bin--开发" name="author">
		<!-- BEGIN PACE PLUGIN FILES -->
		<script src='<c:url value="assets/global/plugins/pace/pace.min.js"></c:url>' type="text/javascript"></script>
		<link href='<c:url value="assets/global/plugins/pace/themes/pace-theme-flash.css"></c:url>' rel="stylesheet" type="text/css" />
		<!-- END PACE PLUGIN FILES -->
		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<link href='<c:url value="assets/global/plugins/font-awesome/css/font-awesome.min.css"></c:url>' rel="stylesheet" type="text/css">
		<link href='<c:url value="assets/global/plugins/simple-line-icons/simple-line-icons.min.css"></c:url>' rel="stylesheet" type="text/css">
		<link href='<c:url value="assets/global/plugins/bootstrap/css/bootstrap.min.css"></c:url>' rel="stylesheet" type="text/css">
		<!-- END GLOBAL MANDATORY STYLES -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<link href='<c:url value="assets/global/plugins/vendors/css/style.css"></c:url>' rel="stylesheet" type="text/css">
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN THEME STYLES -->
		<link href='<c:url value="assets/global/css/components.css"></c:url>' id="style_components" rel="stylesheet" type="text/css" />
		<link href='<c:url value="assets/global/css/plugins.css"></c:url>' rel="stylesheet" type="text/css" />
		<link href='<c:url value="assets/admin/layout2/css/layout.css"></c:url>' rel="stylesheet" type="text/css" />
		<link id="style_color" href='<c:url value="assets/admin/layout2/css/themes/grey.css"></c:url>' rel="stylesheet" type="text/css" />
		<link href='<c:url value="assets/admin/layout2/css/custom.css"></c:url>' rel="stylesheet" type="text/css" />
		<!-- END THEME STYLES -->

		<link rel="shortcut icon" href="book1.jpg" />
	</head>
	<!-- END HEAD -->
	<!-- BEGIN BODY -->

	<body class="page-container-bg-solid page-sidebar-closed-hide-logo page-header-fixed ">
		<!-- BEGIN HEADER -->
		<div class="page-header navbar navbar-fixed-top">
			<!-- BEGIN HEADER INNER -->
			<div class="page-header-inner">
				<!-- BEGIN LOGO -->
				<div class="page-logo">
					<a href="index.html">
						<img src='<c:url value="assets/admin/layout2/img/logo.png"></c:url>' alt="logo" class="logo-default" />
					</a>
					<div class="menu-toggler sidebar-toggler"></div>
				</div>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>
				<!-- END RESPONSIVE MENU TOGGLER -->
				<!-- BEGIN PAGE ACTIONS -->
				<div class="page-actions page-actions-cn"></div>
				<!-- END PAGE ACTIONS -->
				<!-- BEGIN PAGE TOP -->
				<div class="page-top">
					<!-- BEGIN TOP NAVIGATION MENU -->
					<div class="top-menu">
						<ul class="nav navbar-nav pull-right">

							<!-- BEGIN NOTIFICATION DROPDOWN -->
							<li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
								<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									<i class="icon-bell"></i>
									<span class="badge badge-danger"> 3 </span>
								</a>
								<ul class="dropdown-menu">
									<li class="external">
										<h3>你有<span class="bold">12</span>条未处理订单</h3>
									</li>
									<li>
										<ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
											<li>
												<a href="javascript:;">
													<span class="time">just now</span>
													<span class="details">
										<span class="label label-sm label-icon label-success">
										<i class="fa fa-plus"></i>
										</span> New user registered. </span>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<span class="time">3 mins</span>
													<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span> Server #12 overloaded. </span>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<span class="time">10 mins</span>
													<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span> Server #2 not responding. </span>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<span class="time">14 hrs</span>
													<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span> Application error. </span>
												</a>
											</li>
											<li>
												<a href="javascript:;">
													<span class="time">2 days</span>
													<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span> Database overloaded 68%. </span>
												</a>
											</li>

											<a href="javascript:;">
												<span class="time">9 days</span>
												<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span> Storage server failed. </span>
											</a>
									</li>
									</ul>
							</li>
							</ul>
							</li>
							<!-- END NOTIFICATION DROPDOWN -->
							<!-- BEGIN USER LOGIN DROPDOWN -->
							<li class="dropdown dropdown-user">
								<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
									<img alt="" class="img-circle" src='<c:url value="assets/admin/layout2/img/avatar.png"></c:url>' />
									<span class="username username-hide-on-mobile">Nick </span>
									<i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-default">
									<li>
										<a href="userinfo.html">
											<i class="icon-user"></i> 个人信息</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="pwdsettings.html">
											<i class="icon-lock"></i> 密码修改</a>
									</li>
									<li>
										<a href="login.html">
											<i class="icon-key"></i> 退出</a>
									</li>
								</ul>
							</li>
							<!-- END USER LOGIN DROPDOWN -->
						</ul>
					</div>
					<!-- END TOP NAVIGATION MENU -->
				</div>
				<!-- END PAGE TOP -->
			</div>
			<!-- END HEADER INNER -->
		</div>
		<!-- END HEADER -->
		<div class="clearfix"></div>
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN SIDEBAR -->
			<div class="page-sidebar-wrapper">
				<div class="page-sidebar navbar-collapse collapse">
					<!-- BEGIN SIDEBAR MENU -->
					<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
						<li class="start active ">
							<a href="index.html">
								<i class="icon-home"></i>
								<span class="title">IBooK首页</span>
								<span class="selected"></span>
							</a>
						</li>
						<li>
							<a href="order.html">
								<i class="fa fa-list-ul"></i>
								<span class="title">订单管理</span>
								<span class="arrow"></span>
							</a>

						</li>
						<li>
							<a href="book.html">
								<i class="fa fa-book"></i>
								<span class="title">图书管理</span>
								<span class="arrow "></span>
							</a>
						</li>
						<li>
							<a href="sales.html">
								<i class="fa fa-line-chart"></i>
								<span class="title">销量统计</span>
								<span class="arrow "></span>
							</a>
						</li>
						<li>
							<a href="recommendation.html">
								<i class="fa fa-credit-card"></i>
								<span class="title">智能推荐管理</span>
								<span class="arrow "></span>
							</a>
						</li>
						<li>
							<a href="javascript:;">
								<i class="fa fa-shirtsinbulk"></i>
								<span class="title">公告管理</span>
								<span class="arrow "></span>
							</a>
							<ul class="sub-menu">
								<li>
									<a href="notice_add.html">
										<i class="fa fa-user"></i> 发布公告
									</a>
								</li>
								<li>
									<a href="notice_activity.html">
										<i class="fa fa-users"></i> 公告管理
									</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="javascript:;">
								<i class="fa fa-jsfiddle"></i>
								<span class="title">系统管理</span>
								<span class="arrow "></span>
							</a>
							<ul class="sub-menu">
								<li>
									<a href="manager.html">
										<i class="fa fa-stumbleupon-circle"></i> 账号管理
										<i class="fa fa"></i>
									</a>
								</li>
								<li>
									<a href="ibook.html">
										<i class="fa fa-gift"></i> IBooK信息
									</a>
								</li>
								<li>
									<a href="password_edit.html">
										<i class="icon-lock"></i> 密码修改
									</a>
								</li>
							</ul>
						</li>

					</ul>
					<!-- END SIDEBAR MENU -->
				</div>
			</div>
			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<div class="page-content" style="min-height:645px">
					<!-- BEGIN PAGE HEADER-->
					<h3 class="page-title">图书管理</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li class="active">
								<i class="fa fa-home"></i>
								<a href="index.html">IBooK首页</a>
								<i class="fa fa-angle-right"></i>
							</li>

							<li>
								<a href="#">图书管理</a>
							</li>
						</ul>
					</div>
					<!-- END PAGE HEADER-->
 <div class="row">
                <div class="col-md-12">						
                        <div class="portlet light ">
                            <div class="portlet-title" style="min-height:43px;">
                                <div class="tabbable-line">									
                                    <ul class="nav nav-tabs ">
                                        <li class="active">
                                            <a href="#tab_1_1" data-toggle="tab">日交易报表</a>
                                        </li>
                                        <li>
                                            <a href="#tab_1_2" data-toggle="tab">周交易报表</a>
                                        </li>
                                        <li>
                                            <a href="#tab_1_3" data-toggle="tab">月交易报表</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="tabbable-line tabs-below">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab_1_1">
                                            <form class="form-horizontal form-row-seperated" action="#">									
                                                <div class="table-responsive">
                                                <table class="table table-bordered table_sxcondition" style="margin-bottom:0;">
                                                    <tr>
                                                        <th width="13.33%">设备号：</th>
                                                        <td width="20%"><input type="text" class="form-control input-large" autofocus></td>
                                                        <th width="13.33%">日期：</th>
                                                        <td width="20%">
                                                            <input class="form-control form-control-inline input-large date-picker" size="16" type="text" value=""/>
                                                        </td>																									
                                                        <td width="33.33%"><button type="submit" class="btn default"><i class="fa fa-close"></i> 重置</button> <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> 查询</button></td>																														
                                                    </tr>											
                                                </table>
                                                </div>
                                            </form>																										
                                        </div>
                                        <div class="tab-pane" id="tab_1_2">
                                            <form class="form-horizontal form-row-seperated" action="#">									
                                                <div class="table-responsive">
                                                <table class="table table-bordered table_sxcondition" style="margin-bottom:0;">
                                                    <tr>
                                                        <th width="13.33%">设备号：</th>
                                                        <td width="20%"><input type="text" class="form-control input-large"></td>
                                                        <th width="13.33%">年份：</th>
                                                        <td width="20%">
                                                            <!--Begin年份控件-->      
                                                            <div id="yearPicker" class="input-group date form_date">
                                                                  <input id="yearInput" class="form-control" size="16" type="text" name="reportYear" value="" />
                                                                  <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>      
                                                            <!--End年份控件-->
                                                        </td>	
                                                        <th width="13.33%">周：</th>
                                                        <td width="20%">																			              
                                                            <!--Begin周控件-->     
                                                            <div id="weekDiv" class="input-group" >
                                                                  <input id="weekInput" class="form-control weekpickerclass weekshow" size="30" type="text" name="reportWeek" value="" />
                                                                  <div id="weekSpan" class="input-group-addon weekpickerclass weekshow"><span class="glyphicon glyphicon-calendar weekpickerclass"></span></div>             
                                                            </div>      
                                                            <!--End周控件-->
                                                        </td>														
                                                    </tr>		
                                                    <tr>															
                                                        <td colspan="6" style="text-align:center;"><button type="submit" class="btn default"><i class="fa fa-close"></i> 重置</button> <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> 查询</button></td>
                                                    </tr>
                                                </table>
                                                </div>
                                            </form>		
                                        </div>
                                        <div class="tab-pane" id="tab_1_3">
                                            <form class="form-horizontal form-row-seperated" action="#">									
                                                <div class="table-responsive">
                                                <table class="table table-bordered table_sxcondition" style="margin-bottom:0;">
                                                    <tr>
                                                        <th width="13.33%">设备号：</th>
                                                        <td width="20%"><input type="text" class="form-control input-large" ></td>
                                                        <th width="13.33%">月份：</th>
                                                        <td width="20%">
                                                            <!--Begin月份控件-->    
                                                            <div id="monthPicker" class="input-group date form_date">
                                                                <input class="form-control" size="16" type="text" name="reportMonth" value="" />
                                                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                                            </div>   
                                                            <!--End月份控件--> 
                                                        </td>																									
                                                        <td width="33.33%"><button type="submit" class="btn default"><i class="fa fa-close"></i> 重置</button> <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> 查询</button></td>																														
                                                    </tr>											
                                                </table>
                                                </div>
                                            </form>	
                                        </div>
                                    </div>									
                                </div>							
                            </div>					
                        </div>						
                </div>
            </div>
            <!-- BEGIN 消费成功金额...总入账金额汇总 -->
            <div class="row">
                <div class="col-md-12">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="padding-left:0">
                        <div class="dashboard-stat blue-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-rmb"></i></div>
                            <div class="details">
                                <div class="number">1410<span class="desc">.02 元</span></div>
                                <div class="desc">消费成功金额</div>
                            </div>
                            <a class="more" href="transstatistic-skfw.html">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat red-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-trophy"></i></div>
                            <div class="details">
                                <div class="number">0<span class="desc">.00 元</span></div>
                                <div class="desc">预授权完成金额</div>
                            </div>
                            <a class="more" href="transstatistic-skfw.html">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat green-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-shopping-cart"></i></div>
                            <div class="details">
                                <div class="number">1410<span class="desc">.02 元</span></div>
                                <div class="desc">总交易金额</div>
                            </div>
                            <a class="more" href="transstatistic-skfw.html">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" style="padding-right:0">
                        <div class="dashboard-stat purple-soft" href="javascript:;">
                            <div class="visual"><i class="fa fa-database"></i></div>
                            <div class="details">
                                <div class="number">1398<span class="desc">.10 元</span></div>
                                <div class="desc">总入账金额</div>
                            </div>
                            <a class="more" href="transstatistic-skfw.html">查看更多<i class="m-icon-swapright m-icon-white"></i></a>
                        </div>
                    </div>									
                </div>
            </div>
            <!-- END 消费成功金额...总入账金额汇总 -->				
            <!--BEGIN 支付机构统计&支付方式统计-->
            <div class="clearfix"></div>
            <div class="row">
                <!-- BEGIN 支付机构统计-->
                <div class="col-md-6 col-sm-6">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-bar-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">支付机构统计</span>									
                            </div>								
                        </div>
                        <div class="portlet-body">
                            <div class="echart-chart">
                                <div class="echart-chart-content" id="summary" style="height:235px;"></div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- END 支付机构统计-->					
                <!-- BEGIN 支付方式统计-->
                <div class="col-md-6 col-sm-6">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-pie-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">支付方式统计</span>									
                            </div>								
                        </div>
                        <div class="portlet-body">																
                            <div id="chart_5" class="chart" style="height: 235px;"></div>
                        </div>
                    </div>
                    
                </div>
                <!-- END 支付方式统计-->
            </div>
            <!--END 支付机构统计&支付方式统计-->				
            <div class="clearfix"></div>				
            <!-- BEGIN 日交易趋势图-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN PORTLET-->
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-area-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">日交易趋势图</span>									
                            </div>								
                        </div>
                        <div class="portlet-body">
                            <div class="echart-chart">
                              <div class="echart-chart-content" id="margins" style="height: 235px;"></div>
                            </div>
                        </div>
                    </div>
                    <!-- END PORTLET-->
                </div>
            </div>
            <!-- END 日交易趋势图-->				
            <!-- BEGIN 发卡行/支付公司统计&交易状态分析-->
            <div class="clearfix"></div>
            <div class="row">
                <!-- BEGIN 发卡行/支付公司统计-->
                <div class="col-md-6 col-sm-6">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-pie-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">发卡行/支付公司统计</span>									
                            </div>								
                        </div>
                        <div class="portlet-body">
                            <div class="echart-chart">
                              <div class="echart-chart-content" id="project-guarantee-type" style="height:235px;"></div>
                            </div>    
                        </div>
                    </div>
                    
                </div>
                <!-- END 发卡行/支付公司统计-->					
                <!-- BEGIN 交易状态分析-->
                <div class="col-md-6 col-sm-6">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-bars font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">交易状态分析</span>									
                            </div>								
                        </div>
                        <div class="portlet-body">
                                <table class="table table-striped table-bordered table-hover" id="datatable_products">
                                    <thead>													
                                        <tr role="row" class="heading">
                                            <th width="20%">状态</th> <th width="30%">交易类型</th> <th width="30%">金额（元）</th> <th width="20%">笔数</th>
                                        </tr>										
                                    </thead>
                                    <tbody>
                                        <tr role="row" class="filter">			
                                            <td>成功</td> <td>消费</td> <td>1.50</td> <td>3</td>
                                        </tr>																											
                                    </tbody>
                                </table>									
                        </div>
                    </div>
                    
                </div>
                <!-- END 交易状态分析-->
            </div>
            <!-- END 发卡行/支付公司统计&交易状态分析-->
        </div>
    </div>
    <!-- END CONTENT -->		
</div>
<!-- END CONTAINER -->

			<!-- END CONTAINER -->
			<!-- BEGIN FOOTER -->
			<div class="page-footer">Copyright <sup>&copy;</sup> BS_2016 |上海电力学院 | 软件工程 2012221| Bin 20123094</div>
			<!-- END FOOTER -->
			<!-- BEGIN SCROLL-TO -->
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
			<!-- END SCROLL-TO -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src='<c:url value="assets/global/plugins/respond.min.js"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/excanvas.min.js"></c:url>'></script> 
<![endif]-->
<script src='<c:url value="assets/global/plugins/jquery.min.js" type="text/javascript"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></c:url>'></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src='<c:url value="assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></c:url>'></script>
<script type="text/javascript" src='<c:url value="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></c:url>'></script>
<script type="text/javascript"	src='<c:url value="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></c:url>'></script>
<script type="text/javascript"	src='<c:url value="assets/global/plugins/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></c:url>'></script>
<script type="text/javascript"	src='<c:url value="assets/global/plugins/bootstrap-datetimepicker/js/custom-datetimepicker.js"></c:url>'></script>
<script src='<c:url value="assets/global/plugins/vendors/echart/echarts.js"></c:url>' type='text/javascript'></script>
<script src='<c:url value="assets/admin/pages/scripts/chart-helper.js"></c:url>' type='text/javascript'></script>
<script src='<c:url value="assets/global/plugins/amcharts/amcharts/amcharts.js"></c:url>'type="text/javascript"></script>
<script src='<c:url value="assets/global/plugins/amcharts/amcharts/serial.js"></c:url>' type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src='<c:url value="assets/global/scripts/metronic.js"></c:url>' type="text/javascript"></script>
<script src='<c:url value="assets/admin/layout2/scripts/layout.js"></c:url>' type="text/javascript"></script>
<script src='<c:url value="assets/admin/pages/scripts/lanswitch.js"></c:url>' type="text/javascript"></script>
<script src='<c:url value="assets/admin/pages/scripts/index.js"></c:url>' type="text/javascript"></script>
<script src='<c:url value="assets/global/scripts/datatable.js"></c:url>'></script>
<script src='<c:url value="assets/admin/pages/scripts/trans-status.js"></c:url>'></script>
<script src='<c:url value="assets/admin/pages/scripts/charts-amcharts.js"></c:url>'></script>
<!-- END PAGE LEVEL SCRIPTS -->

			<!-- BEGIN JAVASCRIPTS -->
<script>
	 var source = {
        "monthlyInvestAmount": [{ "name": "微信钱包", "value": 5589600.00}
		 , { "name": "百度钱包", "value": 14102800.00}
		 , { "name": "支付宝", "value": 724324162.13}
		 , { "name": "快钱支付", "value": 242344872.50}
		 , { "name": "测试专用", "value": 26581300.00}]     
         ,"platformMargin": [{ "name": "00", "value": 0.00 }
		 , { "name": "01", "value": 0.00 }
		 , { "name": "02", "value": 0.00 }
		 , { "name": "03", "value": 0.00 }
		 , { "name": "04", "value": 0.00 }
		 , { "name": "05", "value": 0.00}				
		 , { "name": "06", "value": 0.00 }
		 , { "name": "07", "value": 0.00 }
		 , { "name": "08", "value": 0.00 }						
		 , { "name": "09", "value": 0.00 }
		 , { "name": "10", "value": 7.89}       				
		 , { "name": "11", "value": 4.50 }
		 , { "name": "12", "value": 1.56 }
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
		 , { "name": "33", "value": 0.00 }] 	
         , "projectGuaranteeType": [{ "name": "微信钱包", "value": 2441542444.42 }
		 , { "name": "百度钱包", "value": 1869759550.23 }
		 , { "name": "支付宝", "value": 1254167809.15 }
		 , { "name": "快钱支付", "value": 386814943.76 }
		 , { "name": "测试专用", "value": 368533874.81 }
		 , { "name": "其它", "value": 217463300.00}]
		 , "dataProvider": [{"payment": "微信卡券","sum": 4025,"color": "#4fc1e9"}
		 , {"payment": "现金","sum": 1882,"color": "#f89135"}
		 , {"payment": "快钱支付","sum": 1809,"color": "#f8585b"}
		 , {"payment": "预付卡条码","sum": 1322,"color": "#ffdc89"}
		 , {"payment": "银联消费","sum": 1122,"color": "#66cc66"}
		 , {"payment": "通联支付终端生产","sum": 1114,"color": "#3faba4"}
		 , {"payment": "快钱支付","sum": 984,"color": "#8877a9"}]
     };
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		Index.initDrawPlatformMarginChart();
		Index.initDrawSummaryChart();
		Index.initDrawPieCharts()						  		
		ChartsAmcharts.init();	
		TransStatus.init();	
    });
    </script>
			<!-- END JAVASCRIPTS -->
	</body>
	<!-- END BODY -->

</html>