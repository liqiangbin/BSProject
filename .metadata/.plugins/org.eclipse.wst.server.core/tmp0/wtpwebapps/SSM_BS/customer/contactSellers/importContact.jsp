<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title> 
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/customer/contactSellers/style/default_blue.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/customer/contactSellers/js/jquery-1.7.2.min.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/customer/contactSellers/js/jquery.Sonline.js"></script>
<script type="text/javascript">

$(function(){
	$("body").Sonline({
		Position:"right",//left或right
		Top:200,//顶部距离，默认200px
		Effect:true, //滚动或者固定两种方式，布尔值：true或false
		DefaultsOpen:true, //默认展开：true,默认收缩：false
		Qqlist:"572554537|客服01,1374477098|客服02" //多个QQ用','隔开，QQ和客服名用'|'隔开
	});
})	
</script>
</head>
<body>
<!-- <div style="height:2500px"></div> -->
</body>
</html>