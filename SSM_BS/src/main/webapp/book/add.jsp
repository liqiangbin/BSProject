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
							<li><i class="fa fa-home"></i> <a href="#"> IBooK首页 </a> <i
								class="fa fa-angle-right"></i></li>
							<li><a href="javascript:void(0);">图书管理</a> <i
								class="fa fa-angle-right"></i></li>
							<li class="active"><a href="javascript:void(0);">新书上架 </a></li>

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
											class="caption-subject font-green-sharp bold">新书上架 <!-- 现 金 券 详 情--></span>
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
										<form action='<c:url value="/book/bookSave"></c:url>'
											method="post" id="addBookForm">
											<table class="table table-bordered table_sxcondition">
												<tbody>

													<tr>
														<th width="25%">图书名称：</th>
														<td width="75%" class="lineheight34"><input
															type="text" id="name" name="name"
															class="form-control input-large" value=""></td>
													</tr>
													<tr>
														<th width="25%">作者：</th>
														<td width="75%" class="lineheight34"><input
															type="text" id="author" name="author"
															class="form-control input-large" value=""></td>
													</tr>

													<tr>
														<th width="25%">出版社：</th>
														<td width="75%" class="lineheight34" style="color: blue;">
															<input type="text" id="publish" name="publish"
															class="form-control input-large" value="">
														</td>
													</tr>
													<tr>
														<th width="25%">售价：</th>
														<td width="75%" class="lineheight34">
															<div class="form-inline">
																<input type="text" id="price" name="price"
																	class="form-control input-large" value=""> <span
																	class="tpl-fr" style="color: blue;">元</span>
															</div>
														</td>
													</tr>
													<tr>
														<th width="25%">折扣：</th>
														<td width="75%" class="lineheight34"
															style="color: red; font-stretch: wider;">
															<div class="form-inline">
																<input type="text" id="discount" name="discount"
																	class="form-control input-large" value=""> <span
																	style="color: blue;">折<label
																	style="color: grey;">(必须是大于0小于等于1的数字)</label></span>
															</div>
														</td>
													</tr>
													<tr>
														<th width="25%">图书类别<!-- 客 服 电 话-->：
														</th>
														<td width="75%" class="lineheight34">
															<div class="form-inline">
																<select class="form-control input-large"
																	data-placeholder="全部" id="type" name="type"
																	onchange="typeChange()">
																	<option value="">请选择</option>
																	<c:forEach var="type" items="${typeList}">
																		<option value="${type.typenumber}"
																			<c:if test="${subtypeParams.typenumber==type.typenumber}">selected</c:if>>${type.typedescn}</option>
																	</c:forEach>
																</select> <select class="form-control input-large"
																	data-placeholder="全部" id="subtype" name="subtype">
																	<option value="">请先选择大类</option>
																</select>
															</div>
														</td>
													</tr>
													<tr>
														<th width="25%">库存 <!-- 客 服 电 话-->：
														</th>
														<td width="75%" class="lineheight34">
															<div class="form-inline">
																<input type="text" id="stock" name="stock"
																	class="form-control input-large" value="">&nbsp;
																<span class="tpl-fr">本</span>
															</div>
														</td>
													</tr>
													<tr>
														<th width="25%">图书简介：</th>
														<td width="75%" class="lineheight34"><textarea
																rows="10" cols="8" id="introduce" name="introduce"
																class="form-control form-control250 required validate-alphanum"
																style="max-width: 600px; width: 98%; height: 120px;"
																value=""></textarea></td>
													</tr>
													<tr>
														<th width="25%">封面图片：</th>
														<td>
															<div class="form-inline">
																<input id="uploadFile_1" name="uploadFile_1"
																	placeholder="选择文件" disabled="disabled"
																	class="form-control" style="margin-top: -10px;">
																<button class="fileUpload btn btn-primary" type="button"
																	onclick="clickUpload('mainimgFile')"
																	style="margin-left: -5px;">
																	<span>浏览</span> 
																	<input type="hidden" id="mainimg" name="mainimg">
																	<input type="file" id="mainimgFile" name="mainimgFile" value="上传图片"
																		class="set-up-button upload"
																		style="display: none; width: 200px;"
																		onchange="onUploadImgChange(this,500,'mainImgShow')"
																		data-url="<c:url value='/upload/uploadImg' />"
																		multiple>
																</button>
																<label id="pic_label1" style="color: red"></label>
																<!-- <input type="hidden" id="mallimage" name="mallimage" value=""> -->
															</div>
														</td>
													</tr>
													<tr>
														<th></th>
														<td class="border-bottom">
															<div>
																<table>
																	<tbody>
																		<tr>
																			<td style="padding: 0; width: 50%;"><img
																				id="mainImgShow"
																				class="shlogo pull-left margin-right10" src=""
																				style="width: 200px; height: 160px;"> <span
																				name="previewInfo"></span></td>
																			<td>
																				<p>图片建议尺寸：320像素x240像素</p>
																				<p>仅支持.jpg .jpeg .bmp .png格式</p>
																				<p>长方形照片，大小不超过200K</p>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
													</tr>
												<tbody>
													<tr>
														<th width="25%">介绍图片：</th>
														<td>
															<div class="form-inline">
																<input id="uploadFile_1" name="uploadFile_1"
																	placeholder="选择文件" disabled="disabled"
																	class="form-control" style="margin-top: -10px;">
																<button class="fileUpload btn btn-primary" type="button"
																	onclick="clickUpload('img1File')"
																	style="margin-left: -5px;">
																	<span>浏览</span> 
																	<input type="hidden" id="img1" name="img1">
																	<input type="file" id="img1File"
																		name="img1File" value="上传图片" class="set-up-button upload"
																		style="display: none; width: 200px;"
																		onchange="onUploadImgChange(this,500,'img1Show')"
																		data-url="<c:url value='/upload/uploadImg' />"
																		multiple>
																</button>
																<label id="img1Info" style="color: red"></label>
																<!-- <input type="hidden" id="mallimage" name="mallimage" value=""> -->
															</div>
														</td>
													</tr>
													<tr>
														<th></th>
														<td class="border-bottom">
															<div>
																<table>
																	<tbody>
																		<tr>
																			<td style="padding: 0; width: 50%;"><img
																				id="img1Show"
																				class="shlogo pull-left margin-right10" src=""
																				style="width: 160px; height: 120px;"> <span
																				name="previewInfo"></span></td>
																			<td>
																				<p>图片建议尺寸：320像素x240像素</p>
																				<p>仅支持.jpg .jpeg .bmp .png格式</p>
																				<p>长方形照片，大小不超过200K</p>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
													</tr>

													<!--这是复制介绍图片  -->
													<tr id="inputcopy" style="display: none;">
														<th width="25%"></th>
														<td>
															<div class="form-inline">
																<input id="uploadFile_1" name="uploadFile_1"
																	placeholder="选择文件" disabled="disabled"
																	class="form-control" style="margin-top: -10px;">
																<button class="fileUpload btn btn-primary" type="button"
																	onclick="clickUpload('img2File')"
																	style="margin-left: -5px;">
																	<span>浏览</span>
																	<input type="hidden" id="img2" name="img2">
																	 <input type="file" id="img2File"
																		name="img2File" value="上传图片" class="set-up-button upload"
																		style="display: none; width: 200px;"
																		onchange="onUploadImgChange(this,500,'img2Show')"
																		data-url="<c:url value='/upload/uploadImg' />"
																		multiple>
																</button>
																<label id="img2Info" style="color: red"></label>
																<div class="pull-right" style="margin-left: 50px;">
																	<button class="btn default btn-sm" type="button"
																		onclick="deleteImg()">
																		<i class="fa fa-trash-o"></i>删除
																	</button>
																</div>
															</div>
														</td>
													</tr>
													<tr id="imgcopy" style="display: none;">
														<th></th>
														<td class="border-bottom">
															<div>
																<table>
																	<tbody>
																		<tr>
																			<td style="padding: 0; width: 50%;"><img
																				id="img2Show"
																				class="shlogo pull-left margin-right10" src=""
																				style="width: 160px; height: 120px;"> <span
																				name="previewInfo"></span></td>
																			<td>
																				<p>图片建议尺寸：320像素x240像素</p>
																				<p>仅支持.jpg .jpeg .bmp .png格式</p>
																				<p>长方形照片，大小不超过200K</p>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
													</tr>
													<tr id="imgaddbutton">
														<th></th>
														<td class="lineheight34">
															<button type="button" onclick="addImg()"
																class="btn btn-primary btn-sm" id="addalbums_btn">
																<i class="fa fa-plus"></i>添加图片
															</button> <span class="info notice"><i
																class="fa fa-info-circle"></i> 最多可以上传2张图片</span>
														</td>
													</tr>
												</tbody>
												<tbody>
													<tr>
														<th width="25%">试读相册<!-- 商 家 相 册-->：
														</th>
														<td><span class="info notice" style="color: orange;"><i
																class="fa fa-info-circle"></i>试读图片默认页码默认从第一页开始，请按顺序上传！</span></td>
													</tr>

													<tr id="readFreeAddButton">
														<th></th>
														<td class="lineheight34">
															<button type="button" onclick="addReadFree()"
																class="btn btn-primary btn-sm" id="addalbums_btn">
																<i class="fa fa-plus"></i>添加图片
															</button> <span class="info notice" style="color: green"
															id="notice"><i class="fa fa-info-circle"></i> <label
																id="freeNumber">您还可以上传10张图片</label></span>
														</td>
													</tr>
												</tbody>
												<!-- 下面是试读模板 -->
												<tr class="album_div" id="readFreeModel"
													style="display: none;">
													<th></th>
													<td>
														<div class="form-inline">
															<input id="uploadFile_1" name="uploadFile_1"
																placeholder="选择文件" disabled="disabled"
																class="form-control" style="margin-top: -10px;">
															<button class="fileUpload btn btn-primary" type="button"
																onclick="clickUpload('readFreeFile')" style="margin-left: -5px;">
																<span>浏览</span> 
																<input type="hidden" id="readFreeName" name="readFreeName">
																<input type="file" id="readFree"
																	name="readFree" value="上传图片"
																	class="set-up-button upload readFree"
																	style="display: none; width: 200px;"
																	onchange="onUploadImgChange1(this,500,'')"
																	data-url="<c:url value='/upload/uploadImg' />" multiple>
															</button>
															<label id="pic_label1" style="color: red"></label>
															<div class="pull-right" style="margin-left: 50px;">
																<button class="btn default btn-sm" type="button"
																	onclick="deleteReadFree(this)">
																	<i class="fa fa-trash-o"></i>删除
																</button>
															</div>
															<div class="clearfix margin-top10">
																<img src="" class="shlogo pull-left margin-right10"
																	style="width: 160px; height: 120px;">
																<p class="pull-left shlogonotice"
																	style="line-height: 22px;">
																	图 片建议尺寸：320像素x240像素<br> 仅支持 .jpg.jpeg.bmp.png格式<br>长
																	方 形 照 片，大小不超过200KB
																</p>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<th></th>
													<td>
														<button type="button" class="btn default"
															onclick="javascript:history.go(-1)">
															<i class="fa fa-angle-left"></i> 返回
														</button>
														<button type="submit" id="submitBtn"
															class="btn btn-primary">
															<i class="fa fa-save"></i> 保存
														</button>
													</td>
												</tr>
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END PAGE CONTENT-->
			<!-- 正文部分结束 -->
		</div>
	</div>
	<%@ include file="/commons/foot.jsp"%>
	<script type="text/javascript">
		function fileClick() {
			$("#mallimagefile").click();
		}
		function clickUpload(id) {
			//console.log("click file upload");
			document.getElementById(id).click();

		}
		//复制介绍图片
		function addImg() {
			$("#inputcopy").show();
			$("#imgcopy").show();
			$("#imgaddbutton").hide();

		}
		//复制试读图片
		var cloneCount = 0;
		function addReadFree() {
			if (cloneCount < 10) {
				cloneCount++;
				var xxx = $("#readFreeModel").clone();
				$("#readFreeAddButton").before(xxx);
				xxx.show();
				xxx.removeAttr("id");
				xxx.find("input[type='file']").attr("onchange","onUploadImgChange(this, 200, 'clonelogo" + cloneCount+ "')");
				xxx.find("img").attr("id", "clonelogo" + cloneCount);
				xxx.find("input[type='file']").attr("id",
						"cloneid" + cloneCount);
				xxx.find("label").attr("id", "clonelabel" + cloneCount);
				xxx.find("button.fileUpload").attr("onclick",
						"clickUpload('cloneid" + cloneCount + "');");
				readfreeUpload("cloneid" + cloneCount,"clonelabel" + cloneCount);
				var num = 10 - cloneCount;
				$("#notice").attr("style", "color:green");
				$("#freeNumber").html("您还可以上传" + num + "张图片！");
			} else {
				$("#notice").attr("style", "color:red;");
				$("#freeNumber").html("您可以上传的图片已达上限！");
				$("#readFreeAddButton").hide();
			}
		}
		//删除介绍图片
		function deleteImg() {
			$("#inputcopy").hide();
			$("#imgcopy").hide();
			$("#imgaddbutton").show();

		}
		function deleteReadFree(_this) {
			cloneCount--;
			var num = 10 - cloneCount;
			$(_this).parents("tr").remove();
			$("#notice").attr("style", "color:green");
			$("#freeNumber").html("您还可以上传" + num + "张图片！");
			$("#readFreeAddButton").show();
		}
		/* function onUploadImgChange(_this,id){
		 console.log($(_this).val()+"  "+id);
		 $("#"+id).attr("src",$(_this).val());
		 } */
		function onUploadImgChange(sender, size, preview) {
			 console.log();
			$(sender).parent().next().attr("style", "color:red;");
			if (!sender.value.match(/.jpg|.jpeg|.png|.bmp/i)) {
				$(sender).parent().next().html('图 片 格 式 无 效 ！');//<!-- -->
				sender.value = null;
				return false;
			}
			var fileSize = sender.files[0].size;
			if (fileSize > 1024 * size) {
				$(sender).parent().next().html('文件过大！(建议小于 ' + size + 'k)');
				sender.value = null;
				return false;
			}
			var agent = window.navigator.userAgent;
			if (agent.indexOf("Firefox") != -1 || agent.indexOf("Chrome") != -1
					|| agent.indexOf("Mozilla") != -1) {
				try {
					if (preview == '') {
						$(sender).parent("div").next("img").css({
							"width" : "220px",
							"height" : "160px"
						}).attr("src",
								window.URL.createObjectURL(sender.files[0]));
					} else {
						$("#" + preview).attr("src",
								window.URL.createObjectURL(sender.files[0]));
					}
				} catch (e) {
					$(sender).parent().next().html('不是有效图片格式!');//
					sender.value = null;
					return false;
				}
			} else {
				$("#" + preview).next().html('暂不支持预览!');
			}

			$(sender).parent().next().html('');
			var arr = $(sender).val().split('\\');
			$(sender).parent().prev().val(arr[arr.length - 1]);
			$(sender).prev().val(arr[arr.length - 1]);
		}
		//试读相册按钮点击事件$("#readFree").parent().parent().find("img");
		function scanClick(_this) {
			$(_this).next().click();
		}
		//试读相册显示上传图片之后显示
		function onUploadImgChange1(sender, size, preview) {
			$(sender).parent().next().attr("style", "color:red;");
			if (!sender.value.match(/.jpg|.jpeg|.png|.bmp/i)) {
				$(sender).parent().next().html('图 片 格 式 无 效 ！');//<!-- -->
				sender.value = null;
				return false;
			}
			var fileSize = sender.files[0].size;
			if (fileSize > 1024 * size) {
				$(sender).parent().next().html('文件过大！(建议小于 ' + size + 'k)');
				sender.value = null;
				return false;
			}

			var agent = window.navigator.userAgent;
			if (agent.indexOf("Firefox") != -1 || agent.indexOf("Chrome") != -1
					|| agent.indexOf("Mozilla") != -1) {
				try {
					if (preview == '') {
						$(sender).parent().parent().find("img").css({
							"width" : "220px",
							"height" : "160px"
						}).attr("src",
								window.URL.createObjectURL(sender.files[0]));
					} else {
						$("#" + preview).attr("src",
								window.URL.createObjectURL(sender.files[0]));
					}
				} catch (e) {
					$(sender).parent().next().html('不是有效图片格式!');//
					sender.value = null;
					return false;
				}
			} else {
				$("#" + preview).next().html('暂不支持预览!');
			}

			$(sender).parent().next().html('');
			var arr = $(sender).val().split('\\');
			$(sender).parent().prev().val(arr[arr.length - 1]);
			$(sender).prev().val(arr[arr.length - 1]);
		}
		//封面图片上传文件上传
		$("#mainimgFile").fileupload({
			dataType : 'json',
			add : function(e, data) {
				data.submit();
			},
			done : function(e, data) {//设置文件上传完毕事件的回调函数  
				$("#pic_label1").html("上传中。。。");
				setTimeout(function() {
					if (data.result.status == "success") {
						$("#pic_label1").attr("style", "color:green;");
						$("#pic_label1").html(data.result.message);
					} else {
						$("#pic_label1").html(data.result.message);
					}
				}, 2000);

			},
			fail : function(e, data) {
				$("#pic_label1").html("请求失败，请重试！");
			}
		});
		//介绍图片1上传文件上传
		$("#img1File").fileupload({
			dataType : 'json',
			add : function(e, data) {
				data.submit();
			},
			done : function(e, data) {//设置文件上传完毕事件的回调函数  
				$("#img1Info").html("上传中。。。");
				setTimeout(function() {
					if (data.result.status == "success") {
						$("#img1Info").attr("style", "color:green;");
						$("#img1Info").html(data.result.message);
					} else {
						$("#img1Info").html(data.result.message);
					}
				}, 2000);

			},
			fail : function(e, data) {
				$("#img1Info").html("请求失败，请重试！");
			}
		});
		//介绍图片2上传文件上传
		$("#img2File").fileupload({
			dataType : 'json',
			add : function(e, data) {
				data.submit();
			},
			done : function(e, data) {//设置文件上传完毕事件的回调函数  
				$("#img2Info").html("上传中。。。");
				setTimeout(function() {
					if (data.result.status == "success") {
						$("#img2Info").attr("style", "color:green;");
						$("#img2Info").html(data.result.message);
					} else {
						$("#img2Info").html(data.result.message);
					}
				}, 2000);

			},
			fail : function(e, data) {
				$("#img2Info").html("请求失败，请重试！");
			}
		});
		//免费试读上传文件上传
		function readfreeUpload(fileId,labelId) {
			$("#"+fileId).fileupload({
				dataType : 'json',
				add : function(e, data) {
					data.submit();
				},
				done : function(e, data) {//设置文件上传完毕事件的回调函数  
					//console.log(this);
					$("#"+labelId).html("上传中。。。");
					setTimeout(function() {
						if (data.result.status == "success") {
							$("#"+labelId).attr("style", "color:green;");
							$("#"+labelId).html(data.result.message);
						} else {
							$("#"+labelId).attr("style", "color:red;");
							$("#"+labelId).html(data.result.message);
						}
					}, 2000);

				},
				fail : function(e, data) {
					$("#"+labelId).html("请求失败，请重试！");
				}
			});
		}
	
		//表单验证

		$("#addBookForm").validate({
			errorClass : "notice",
			rules : {
				name : {
					required : true
				},
				author : {
					required : true,
				},
				publish : {
					required : true
				},
				price : {
					required : true,
					number : true
				},
				stock : {
					required : true,
					number : true
				},
				introduce : {
					required : true
				},
				mainimgFile : {
					required : true
				},
				discount : {
					number : true
				}
			},
			messages : {
				name : {
					required : "书名不能为空"
				},
				author : {
					required : "作者不能为空"
				},
				publish : {
					required : "出版社不能为空"
				},
				price : {
					required : "价格不能为空",
					number : "价格必须为数字"

				},
				stock : {
					required : "库存不能为空",
					number : "库存必须为数字"
				},
				introduce : {
					required : "图书简介不能为空"
				},
				mainimgFile : {
					required : "封面图片不能为空"
				},
				discount : {
					number : "折扣必须为0~1之间的数字"
				}
			},
			focusInvalid : true,
		});
		//级联图书分类
		function typeChange() {
			//这里代码格式化之后的换行会导致出错，请注意
			var typenumber = $("#type").val();
			$("#subtype").empty();
			<c:forEach var="subtype" items="${subList}" >
			var typenumber1 = ${subtype.typenumber};
			if (typenumber1 == typenumber) {
				$("#subtype")
						.append(
								'<option value="'+${subtype.id}+'" >${subtype.subtypedescn}</option>');
			}
			</c:forEach>
		}
	</script>
</body>

</html>