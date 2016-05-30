<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/commons/head.jsp"%>
</head>

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
				<div class="page-content" style="min-height:645px">
					<!-- BEGIN PAGE HEADER-->
					<h3 class="page-title">交易统计</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li class="active">
								<i class="fa fa-home"></i>
								<a href="index.html">IBooK首页</a>
								<i class="fa fa-angle-right"></i>
							</li>

							<li>
								<a href="#">交易统计</a>
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
                                            <a href="#tab_1_3" data-toggle="tab">月交易统计</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="tabbable-line tabs-below">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab_1_3">
                                            <form class="form-horizontal form-row-seperated" action='<c:url value="/main/count"></c:url>' method="post">									
                                                <div class="table-responsive">
                                                <table class="table table-bordered table_sxcondition" style="margin-bottom:0;">
                                                    <tr>
                                                        <th width="15%">月份：</th>
                                                        <td width="15%">
                                                            <!--Begin月份控件-->    
                                                       <div class="input-group date form_date input-large">
																<input type="text" class="form-control" id="orderdate"
																	name="dateParam" value="${dateParam}"
																	id="dateParam" readonly="true" /> <span
																	class="input-group-addon"><span
																	class="glyphicon glyphicon-calendar"></span></span>
															</div> 
                                                            <!--End月份控件--> 
                                                        </td>																									
                                                        <td width="33.33%"><button type="reset" class="btn default"><i class="fa fa-close"></i> 重置</button> <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> 查询</button></td>																														
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
                <div class="row">
                <div class="col-md-12">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-pie-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">图书销量排行统计(Top 15)</span>									
                            </div>								
                        </div>
                        <div class="portlet-body">																
                            <div id="chart_5" class="chart" style="height: 305px;"></div>
                        </div>
                    </div>
                </div>
                </div>			
            <!--BEGIN 支付机构统计&支付方式统计-->
            <div class="clearfix"></div>
            <div class="row">
                <!-- BEGIN 支付机构统计-->
                <div class="col-md-6 col-sm-6">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-bar-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">图书销量细类排行统计(Top 6)</span>									
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
                 <!-- BEGIN 发卡行/支付公司统计-->
                <div class="col-md-6 col-sm-6">						
                    <div class="portlet light ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-pie-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">图书销量大分类比例统计</span>									
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
                                <span class="caption-subject font-green-sharp bold uppercase">月交易趋势图</span>									
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
        </div>
    </div>
    <!-- END CONTENT -->		
</div>
<!-- END CONTAINER -->

		<!-- 正文部分结束 -->
	</div>
	<%@ include file="/commons/foot.jsp"%>
			<!-- BEGIN JAVASCRIPTS -->
			
<script>
$('.form_date').datetimepicker({
	format : 'yyyy-mm',
	language : 'zh_CN',
	autoclose : true,
	viewSelect : 'decade',
	forceParse : 0,
	pickerPosition : 'bottom-left'
});
//定义颜色数组
var color=new Array()
color[0]="#f89135"
color[1]="#f8585b"
color[2]="#ffdc89"
color[3]="#66cc66" 
color[4]="#3faba4"
color[5]="#4fc1e9"
	color[6]="#f89135"
		color[7]="#f8585b"
		color[8]="#ffdc89"
		color[9]="#66cc66" 
		color[10]="#3faba4"
		color[11]="#4fc1e9"
			color[12]="#f89135"
				color[13]="#f8585b"
				color[14]="#ffdc89"
				color[15]="#66cc66" 
				color[16]="#3faba4"
				color[17]="#4fc1e9"
	 var source = {
        "monthlyInvestAmount": 
        	[
        	 <c:forEach var="top" items="${topList}"  varStatus="status">
        	 <c:if test="${status.count==1}">
        	 { "name": "${top.subName}", "value":${top.totalNumber}}
        	 </c:if>
        	 <c:if test="${status.count!=1}">
        	 ,  { "name": "${top.subName}", "value":${top.totalNumber}}
        	 </c:if>
        	 
        	 </c:forEach>
        	]     
         ,"platformMargin":
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
         , "projectGuaranteeType": [
                                    <c:forEach var="top" items="${typeCount}"  varStatus="status">
    	 <c:if test="${status.count==1}">
    	 { "name": "${top.subName}", "value":${top.totalNumber}}
    	 </c:if>
    	 <c:if test="${status.count!=1}">
    	 ,  { "name": "${top.subName}", "value":${top.totalNumber}}
    	 </c:if>
    	 
    	 </c:forEach>  ]
		 , "dataProvider": [
		                    <c:forEach var="book" items="${bookTopTen}"  varStatus="status">
		               	 <c:if test="${status.count==1}">
		               	 {"payment": "${book.name}","sum": ${book.saled},"color":color[${status.count}]}
		               	 </c:if>
		               	 <c:if test="${status.count!=1}">
		               	 , {"payment": "${book.name}","sum": ${book.saled},"color":color[${status.count}]}
		               	 </c:if>
		               	 </c:forEach>
		 ]
     };
	  jQuery(document).ready(function() {
	        Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			Index.initDrawPlatformMarginChart();
			Index.initDrawSummaryChart();
			Index.initDrawPieCharts();						  		
			ChartsAmcharts.init();	
	    });
    </script>

</body>

</html>