<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/commons/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>免费试读</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Moleskine Notebook with jQuery Booklet" />
        <meta name="keywords" content="jquery, book, flip, pages, moleskine, booklet, plugin, css3 "/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
		<script type="text/javascript" src="<%=request.getContextPath()%>/customer/readFree/booklet/jquery-1.4.4.min.js"></script>
		<script src="<%=request.getContextPath()%>/customer/readFree/booklet/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/customer/readFree/booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

		<link href="<%=request.getContextPath()%>/customer/readFree/booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
		<link rel="stylesheet" href="<%=request.getContextPath()%>/customer/readFree/css/style.css" type="text/css" media="screen"/>
</head>
 <body>
		<h1  style="text-align:center" class="title">${sessionScope.readfreeBook.name}的免费试读</h1>
<div class="book_wrapper">
			<a id="next_page_button"></a>
			<a id="prev_page_button"></a>
			<div id="loading" class="loading">Loading pages...</div>
			<div id="mybook" style="display:none;">
				<div class="b-load">
			 <div>
						<img src='<c:url value="/upload/${sessionScope.firstPage}"></c:url>' alt=""/>
					</div> 
					<div>
						<h1>本书简介</h1>
						<p>${sessionScope.readfreeBook.introduce}</p>
					</div>
				 <c:forEach var="readFree" items="${sessionScope.readfreeList}" varStatus="status" > 
					<div>
						<img src='<c:url value="/upload/${readFree.src}"></c:url>' alt=""/>
					</div>
					</c:forEach> 
					<div>
					<br><br><br><br><br><br><br><br><br><br><br><br>
						<h1>暂无更多试读内容！</h1>
						<h2>IBooK 即将推出在线电子版图书阅读，届时记得关注哦！</h2>
					</div>
			
					<!-- <div>
						<img src="images/5.jpg" alt="" style="height:200px;" />
						<h1>ckeditor插件之插入代码和代码高亮插件完美版</h1>
						<p>此款ckeditor插入代码高亮插件支持PHPCMS，其实做这个本来就是针对PHPCMS的ckeditor编辑器来做的。本站用的即是这个插件。</p>
					</div> -->
				</div>
			</div>
		</div>
        <div>
            <span class="reference">
            </span>
		</div>

        <!-- The JavaScript -->

        <script type="text/javascript">
			$(function() {
				var $mybook 		= $('#mybook');
				var $bttn_next		= $('#next_page_button');
				var $bttn_prev		= $('#prev_page_button');
				var $loading		= $('#loading');
				var $mybook_images	= $mybook.find('img');
				var cnt_images		= $mybook_images.length;
				var loaded			= 0;
				//preload all the images in the book,
				//and then call the booklet plugin

				$mybook_images.each(function(){
					var $img 	= $(this);
					var source	= $img.attr('src');
					$('<img/>').load(function(){
						++loaded;
						if(loaded == cnt_images){
							$loading.hide();
							$bttn_next.show();
							$bttn_prev.show();
							$mybook.show().booklet({
								name:               null,                            // name of the booklet to display in the document title bar
								width:              800,                             // container width
								height:             500,                             // container height
								speed:              600,                             // speed of the transition between pages
								direction:          'LTR',                           // direction of the overall content organization, default LTR, left to right, can be RTL for languages which read right to left
								startingPage:       0,                               // index of the first page to be displayed
								easing:             'easeInOutQuad',                 // easing method for complete transition
								easeIn:             'easeInQuad',                    // easing method for first half of transition
								easeOut:            'easeOutQuad',                   // easing method for second half of transition

								closed:             true,                           // start with the book "closed", will add empty pages to beginning and end of book
								closedFrontTitle:   null,                            // used with "closed", "menu" and "pageSelector", determines title of blank starting page
								closedFrontChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank starting page
								closedBackTitle:    null,                            // used with "closed", "menu" and "pageSelector", determines chapter name of blank ending page
								closedBackChapter:  null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank ending page
								covers:             false,                           // used with  "closed", makes first and last pages into covers, without page numbers (if enabled)

								pagePadding:        10,                              // padding for each page wrapper
								pageNumbers:        true,                            // display page numbers on each page

								hovers:             false,                            // enables preview pageturn hover animation, shows a small preview of previous or next page on hover
								overlays:           false,                            // enables navigation using a page sized overlay, when enabled links inside the content will not be clickable
								tabs:               false,                           // adds tabs along the top of the pages
								tabWidth:           60,                              // set the width of the tabs
								tabHeight:          20,                              // set the height of the tabs
								arrows:             false,                           // adds arrows overlayed over the book edges
								cursor:             'pointer',                       // cursor css setting for side bar areas

								hash:               false,                           // enables navigation using a hash string, ex: #/page/1 for page 1, will affect all booklets with 'hash' enabled
								keyboard:           true,                            // enables navigation with arrow keys (left: previous, right: next)
								next:               $bttn_next,          			// selector for element to use as click trigger for next page
								prev:               $bttn_prev,          			// selector for element to use as click trigger for previous page

								menu:               null,                            // selector for element to use as the menu area, required for 'pageSelector'
								pageSelector:       false,                           // enables navigation with a dropdown menu of pages, requires 'menu'
								chapterSelector:    false,                           // enables navigation with a dropdown menu of chapters, determined by the "rel" attribute, requires 'menu'

								shadows:            true,                            // display shadows on page animations
								shadowTopFwdWidth:  166,                             // shadow width for top forward anim
								shadowTopBackWidth: 166,                             // shadow width for top back anim
								shadowBtmWidth:     50,                              // shadow width for bottom shadow

								before:             function(){},                    // callback invoked before each page turn animation
								after:              function(){}                     // callback invoked after each page turn animation
							});
							Cufon.refresh();
						}
					}).attr('src',source);
				});
				
			});
        </script>
    </body>
</html>