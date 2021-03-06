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
				<li class="active">填写订单</li>
			</ol>
		</div>
	</div>
	<div class="portlet-body">
		<div class="table-responsive1 " style="overflow-x: ;">
			<form method="post" action='<c:url value="/order/orderSave"></c:url>'>
			<table class="table"	style="width: 60%; margin-left: 170px; margin-top: 30px;">
				<thead>
				<tr>
						<th colspan="4"><span
							class="caption-subject font-green-sharp bold"
							style="font-size: 20px; color: orange;"><i
								class="fa fa-file-text font-green-sharp"></i><B>填写订单</B></span></th>
					</tr>
					</thead>
					<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">收货人姓名：</th>
					<td width="20%" class="lineheight34" colspan="3">
					<input type="text"  id="receivename" name="receivename" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					</td>
				</tr>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">电话：</th>
					<td width="20%" class="lineheight34" colspan="3">
					<input type="text"  id="phone" name="phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					</td>
				</tr>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">qq：</th>
					<td width="20%" class="lineheight34" colspan="3">
					<input type="text" id="qq" name="qq" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					</td>
				</tr>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">选择地区：</th>
					<td width="20%" class="lineheight34" colspan="3">
					<input type="hidden" id="ssx" name="ssx" value="sss">
					<div class="form-inline">
						<select class="form-control input-large" data-placeholder="全部" id="sheng" name="sheng" onchange="shengChange()">
						<option value="">请选择</option>
							<option value="上海市">上海市</option>
							</select> 
							
							<select class="form-control input-large"	data-placeholder="全部" id="shi" name="shi" onchange="shiChange()">
									<option value="">请先选择省</option>
								</select>
									<select class="form-control input-large"	data-placeholder="全部" id="xian" name="xian" onchange="xianChange()">
									<option value="">请选择市</option>
								</select>
						</div>
					</td>
					</tr>
					<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5;">详细地址：</th>
					<td width="20%" class="lineheight34" colspan="3">
						 <div class="add-review"  style="width:400px;" >
					<textarea type="text"  id="address" name="address"></textarea>
					</div> </td>
				</tr>
			
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">订单信息：</th>
					<td width="20%" class="lineheight34" colspan="3" align="left">
						<div class="checkout" style="padding: 0px;margin-right: 0px;">
		<div class="container" style="padding: 0px;width:800px;">
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub" style="width:50%;font-family: 微软雅黑;margin-left: 0px;margin-right: 0px;">
					<thead>
						<tr>
							<th width="25%">图书</th>
							<th width="15%">数量</th>
							<th width="15%">价格</th>
						</tr>
					</thead>
					 <c:forEach var="orderDetial" items="${orderDetialList1}" varStatus="status" > 
					<tr class="rem${status.count}">
						<td class="invert-image">
						<a href="#" >
						<img src='<c:url value="/upload/${orderDetial.imgSrc}"></c:url>' alt=" " class="img-responsive" />
						<br>${orderDetial.bookname}
						</a>
						</td>
						<td class="invert">${orderDetial.quantity}&nbsp;本 </td>
						<td class="invert">${orderDetial.price}&nbsp;元</td>
					    </tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
						
						</td>
				</tr>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">邮费：</th>
					<td width="20%" class="lineheight34" colspan="3">
					<label id="transfeeLabel">5</label><label>元</label>
					<input type="hidden" id="transfee" name="transfee">
					</td>
				</tr>
				<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5">合计金额：</th>
					<td width="20%" class="lineheight34" colspan="3">
					<input type="hidden" id="totalmoney" name="totalmoney" value="0">
					<label id="totalmoneyLabel">0</label><label>元</label>
					</td>
				</tr>
					<tr role="row">
					<th width="13.33%" style="background-color: #f5f5f5;width:;">给卖家留言：</th>
					<td width="20%" class="lineheight34" colspan="3">
						 <div class="add-review" style="width:400px;" >
					<textarea type="text"  id="comments" name="comments"></textarea>
					</div> </td>
				</tr>
				<tr role="row"  style="font-family:微软雅黑;">
					<td width="20%" class="lineheight34" colspan="2" align="right">
					<button type="button" class="btn btn-lg btn-default" onclick="javascript:history.go(-1);"><i class="fa fa-angle-left"></i><i class="fa fa-angle-left"></i>&nbsp;&nbsp;返&nbsp;&nbsp;回</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td width="20%" class="lineheight34" colspan="2" align="left">
					<button type="submit" class="btn btn-lg  btn-warning">提&nbsp;&nbsp;交&nbsp;&nbsp;<i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></button>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>

	
<%@ include file="/customer/commons/foot.jsp"%>
</body>
<script type="text/javascript">
function shengChange(){
	var sheng = $("#sheng").val();
	$("#shi").empty();
	if (sheng =='上海市') {
		$("#shi").append('<option value="黄浦区" >黄浦区</option>');
		$("#shi").append('<option value="徐汇区" >徐汇区</option>');
		$("#shi").append('<option value="长宁区" >长宁区</option>');
		$("#shi").append('<option value="浦东新区" >浦东新区</option>');
		$("#shi").append('<option value="虹口区" >虹口区</option>');
	}
}
function shiChange(){
	var shi = $("#shi").val();
	$("#xian").empty();
	if (shi =='黄浦区'){
		$("#transfee").val('5');
		$("#transfeeLabel").html('5');
		$("#xian").append('<option value="外滩街道" >外滩街道</option>');
		$("#xian").append('<option value="南京东路街道" >南京东路街道</option>');
		$("#xian").append('<option value="小东门街道" >小东门街道</option>');
		$("#xian").append('<option value="老西门街道" >老西门街道</option>');
		$("#xian").append('<option value="豫园街道" >豫园街道</option>');
	}
	if (shi =='徐汇区'){
		$("#transfee").val('10');
		$("#transfeeLabel").html('10');
		$("#xian").append('<option value="湖南路街道" >湖南路街道</option>');
		$("#xian").append('<option value="天平路街道" >天平路街道</option>');
		$("#xian").append('<option value="徐家汇街道" >徐家汇街道</option>');
		$("#xian").append('<option value="漕河泾街道" >漕河泾街道</option>');
		$("#xian").append('<option value="华泾镇" >华泾镇</option>');
	}
	if (shi =='长宁区'){
		$("transfee").val('0');
		$("transfeeLabel").html('0');
		$("#xian").append('<option value="新华路街道" >新华路街道</option>');
		$("#xian").append('<option value="江苏路街道" > 江苏路街道</option>');
		$("#xian").append('<option value="天山路街道" >天山路街道</option>');
		$("#xian").append('<option value="周家桥街道 " >周家桥街道 </option>');
		$("#xian").append('<option value="新泾镇" >新泾镇</option>');
	}
	if (shi =='浦东新区'){
		$("#transfee").val('0');
		$("#transfeeLabel").html('0');
		$("#xian").append('<option value="南汇新城镇" >南汇新城镇</option>');
		$("#xian").append('<option value="张江镇" >张江镇</option>');
		$("#xian").append('<option value="书院镇" >书院镇</option>');
		$("#xian").append('<option value="川沙新镇" >川沙新镇</option>');
		$("#xian").append('<option value="新场镇" >新场镇</option>');
	}
	if (shi =='虹口区'){
		$("#transfee").val('5');
		$("#transfeeLabel").html('5');
		$("#xian").append('<option value="四川北路街道" >四川北路街道</option>');
		$("#xian").append('<option value="提篮桥街道" >提篮桥街道</option>');
		$("#xian").append('<option value="欧阳路街道" >欧阳路街道</option>');
		$("#xian").append('<option value="凉城新村街道" >凉城新村街道</option>');
		$("#xian").append('<option value="嘉兴路街道" >嘉兴路街道</option>');
	}
	var total=${totalmoney};
	var trans=$("#transfee").val();
	var totalmoney=parseFloat(total)+parseFloat(trans);
	 $("#totalmoney").val(totalmoney.toFixed(2));
	 $("#totalmoneyLabel").html(totalmoney.toFixed(2));
	 var sheng = $("#sheng").val();
		var shi = $("#shi").val();
		var xian = $("#xian").val();
		$("#ssx").val(sheng+shi+xian);
}
function xianChange(){
	var sheng = $("#sheng").val();
	var shi = $("#shi").val();
	var xian = $("#xian").val();
	$("#ssx").val(sheng+shi+xian);
	}
</script>
</html>