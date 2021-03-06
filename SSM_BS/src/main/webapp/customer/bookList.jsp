<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/commons/taglibs.jsp"%>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<!-- <link href='http://fonts.useso.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
 -->	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/customer/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/customer/css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/customer/css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/customer/css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/customer/css/style1.css">
	<link href='<c:url value="/customer/css/style.css"></c:url>' rel="stylesheet" type="text/css" media="all" />
	<!-- Modernizr JS -->
	<script src="<%=request.getContextPath()%>/customer/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<%=request.getContextPath()%>/customer/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	  <%@ include file="/customer/commons/head.jsp"%> 
		<%@ include file="/customer/commons/top.jsp"%>
		<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href='<c:url value="/customer/index"></c:url>'><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>首页</a></li>
				<li class="active">图书列表</li>
			</ol>
		</div>
	</div>
	<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>
         <c:if test="${!empty bookList}">
           <c:forEach var="book" items="${bookList}" varStatus="status" > 
        	<div class="item">
        	<!-- <!-- class="image-popup fh5co-board-img" title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?" --> 
        	<a href='<c:url value="/book/showBookDetial?id=${book.id}"></c:url>'>
        		<div class="animate-box">
	        		
	        		<%-- <img style="width:200.5px;<c:if test="${status.count==1}">height:300px;</c:if><c:if test="${status.count==2}">height:190px;</c:if><c:if test="${status.count==3}">height:260px;</c:if><c:if test="${status.count==4}">height:181.4px;</c:if>"  src='<c:url value="/upload/${book.mainimg}" ></c:url>' alt="Free HTML5 Bootstrap template"></a>
        	 --%>	
        	 <img style="width:200.5px;height:260px;"  src='<c:url value="/upload/${book.mainimg}" ></c:url>' alt="Free HTML5 Bootstrap template">
        	
        	 </div><!-- height:220px; -->
        		<div class="fh5co-desc" >
        		<p><label>&nbsp;${book.name}</label></p>
        		<p style="font-size: 16px;color:gray;">${book.author}&nbsp;著</p>
        		<p  style="color:#c30;"><label>￥${book.price}元</label> <c:if test="${book.discount!=null}">&nbsp;&nbsp;<span style="font-weight:text-shadow;font-style:italic;color:red;">${book.discount}折</span></c:if></p>
        		</div>
        		</a>
        	</div>
        	</c:forEach>
        	</c:if>
        </div>
         <c:if test="${empty bookList}">
        <div class="alert alert-warning">抱歉，暂时无数据，敬请期待图书上架或者看看别的书籍哦！</div>
        </c:if>
        </div>
       </div>
	</div>

	<%@ include file="/customer/commons/foot.jsp"%>
	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/customer/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<%=request.getContextPath()%>/customer/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<!-- Waypoints -->
	<script src="<%=request.getContextPath()%>/customer/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/customer/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="<%=request.getContextPath()%>/customer/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="<%=request.getContextPath()%>/customer/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="<%=request.getContextPath()%>/customer/js/main.js"></script>
<script type="text/javascript">
$(".fh5co-desc").attr("style","color:gray");
$(".fh5co-desc").attr("style","font-family:微软雅黑;");
</script> 
</body>
</html>