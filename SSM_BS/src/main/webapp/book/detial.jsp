<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/head.jsp"%>
</head>
<body>
	<!-- BEGIN BODY -->
	<div
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
				<div class="page-content" style="min-height: 801px">
					<!-- BEGIN PAGE HEADER-->
					<h3 class="page-title">
						图书管理
						<!-- 现 金 券 管 理-->
					</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li><i class="fa fa-home"></i> <a href="#"> IBooK首页< </a> <i
								class="fa fa-angle-right"></i></li>
							<li><a href="javascript:void(0);">图书管理</a> <i
								class="fa fa-angle-right"></i></li>
							<li class="active"><a href="javascript:void(0);">图书详情 </a></li>

						</ul>
					</div>
					<!-- END PAGE HEADER-->

					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">
							<div class="portlet light">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-stumbleupon-circle font-green-sharp"></i> <span
											class="caption-subject font-green-sharp bold">图书详情 <!-- 现 金 券 详 情--></span>
									</div>
									<div class="actions btn-set">
										<a class="btn btn-default btn-circle"
											href="javascript:void(0);"
											onclick="javascript:history.go(-1)"><i
											class="fa fa-angle-left"></i> 返回<!-- 返 回--></a>
									</div>
								</div>
								<div class="portlet-body">
									<div class="table-responsive">
										<table class="table table-bordered table_sxcondition">
											<tbody>

												<tr>
													<th width="25%">图书名称：</th>
													<td width="75%" class="lineheight34" style="font-size: 20px;font-stretch: narrower;">《${book.name }》</td>
												</tr>


												<tr>
													<th width="25%">作者：</th>
													<td width="75%" class="lineheight34">${book.author }</td>
												</tr>

												<tr>
													<th width="25%">出版社：</th>
													<td width="75%" class="lineheight34" style="color:blue;">${book.publish }</td>
												</tr>
												<tr>
													<th width="25%">售价：</th>
													<td width="75%" class="lineheight34">${book.price }元<!-- 元--></td>
												</tr>
												<tr>
													<th width="25%">折扣：</th>
													<td width="75%" class="lineheight34"style="color:red;font-stretch: wider;">${book.discount }折</td>
												</tr>
												<tr>
													<th width="25%">图书类别<!-- 客 服 电 话-->：
													</th>
													<td width="75%" class="lineheight34"><c:forEach
															var="type" items="${typeList}">
															<c:if test="${book.type==type.typenumber }">
																${type.typedescn }
																</c:if>
														</c:forEach> -> <c:forEach var="sub" items="${subList}">
															<c:if test="${book.subtype==sub.id }">
																	${sub.subtypedescn}
																</c:if>
														</c:forEach></td>
												</tr>
												<tr>
													<th width="25%">库存 <!-- 客 服 电 话-->：
													</th>
													<td width="75%" class="lineheight34">${book.stock }&nbsp;本</td>
												</tr>
												<tr>
													<th width="25%">售出<!-- 客 服 电 话-->：
													</th>
													<td width="75%" class="lineheight34">${book.saled }&nbsp;本</td>
												</tr>

												<tr>
													<th width="25%">图书简介：</th>
													<td width="75%" class="lineheight34" style="padding-right:200px;color:grey;">${book.introduce }
													</td>
												</tr>
												<tr>
													<th width="25%">封面图片：</th>
													<td width="75%" class="lineheight34"><img
														id="mall_img" src="${book.mainimg }"
														style="border: 6px solid pink; width: 300px; height: 200px;">

													</td>
												</tr>
												<tr>
													<th width="25%">介绍图片：</th>
													<td width="75%" class="lineheight34"><c:if
															test="${book.img1!=null}">
															<img id="mall_img" src="${book.img1}"
																style="border: 5px solid #eee; width: 150px; height: 130px;">
														</c:if> <c:if test="${book.img2!=null}">
															<img id="mall_img" src="${book.img2}"
																style="border: 5px solid #eee; width: 150px; height: 130px;">
														</c:if></td>
												</tr>

												<tr>
													<th width="25%">试读相册<!-- 商 家 相 册-->：
													</th>
													<td></td>
												</tr>


												<c:forEach var="readFree" items="${readFreeList}"
													varStatus="index">
													<c:if test="${index.count%3==1 }">
														<tr>
														<th></th>
															<td class="lineheight34">
													</c:if>
													<img id="mall_img"
														src="http://resource.koolyun.com/coupon/images//couponimages/9992900531100411453884140874.jpg"
														style="border: 5px solid #eee; width: 180px; height: 150px;">
														&nbsp;&nbsp;&nbsp;&nbsp;
													
													<c:if test="${index.count%3==0 }">
														</td>
														</tr>
													</c:if>
												</c:forEach>
										

												<tr>
													<th></th>
													<td>
														&nbsp;&nbsp;<button type="button" class="btn default"
															onclick="javascript:history.go(-1)">
															<i class="fa fa-angle-left"></i> 返回
															<!-- 返 回-->
														</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								下面可以放图书评价内容1
							</div>
						</div>
					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END PAGE CONTENT-->
			<!-- 正文部分结束 -->


		</div>
		<%@ include file="/commons/foot.jsp"%>
	</div>


</body>
</html>