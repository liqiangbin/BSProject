<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.lang.Long"%>
<%@include file="/commons/taglibs.jsp"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

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
							<a href='<c:url value="/order/getOrderByPage"></c:url>'>
								<i class="fa fa-list-ul"></i>
								<span class="title">订单管理</span>
								<span class="arrow"></span>
							</a>

						</li>
						<li>
							<a href="#">
								<i class="fa fa-book"></i>
								<span class="title">图书管理</span>
								<span class="arrow "></span>
							</a>
								<ul class="sub-menu">
								<li>
									<a href='<c:url value="/subType/SellectByParams"></c:url>'>
										<i class="fa fa-user"></i> 图书分类管理
									</a>
								</li>
								<li>
									<a href='<c:url value="/book/getBookByPage"></c:url>'>
										<i class="fa fa-users"></i> 图书列表
									</a>
								</li>
							</ul>
						</li>
						<li>
							<a href='<c:url value="/main/count"></c:url>'>
								<i class="fa fa-line-chart"></i>
								<span class="title">销量统计</span>
								<span class="arrow "></span>
							</a>
						</li>
						<li>
							<a href='<c:url value="/suggest/editSuggest"></c:url>'>
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
									<a href='<c:url value="/manager/noticeAdd.jsp"></c:url>'>
										<i class="fa fa-user"></i> 发布公告
									</a>
								</li>
								<li>
									<a href='<c:url value="/notice/getNoticeByPage"></c:url>'>
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
									<a href='<c:url value="/manager/getManagerByPage"></c:url>'>
										<i class="fa fa-stumbleupon-circle"></i> 账号管理
										<i class="fa fa"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-gift"></i> IBooK信息
									</a>
								</li>
								<li>
									<a href='<c:url value="/manager/passwordEdit.jsp"></c:url>'>
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