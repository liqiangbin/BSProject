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
            <h3 class="page-title">用户管理</h3>
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li class="active">
                        <i class="fa fa-home"></i>
                        <a href="index.html">MSC首页</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="javascript:void(0)">系统管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="#">密码修改</a>							
                    </li>						
                </ul>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <form class="form-horizontal form-row-seperated" action='<c:url value="/manager/passwordEdit"/>' method="post" id="resetPasswordForm">
                        <div class="portlet light">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-lock font-green-sharp"></i>
                                    <span class="caption-subject font-green-sharp bold">密码修改</span>										
                                </div>																	
                            </div>
                            <div class="portlet-body">
                                <div class="table-responsive">
                                <table class="table table-bordered table_sxcondition">																				
                                    <tr>										
                                        <th width="25%">登录名：</th>
                                        <td width="75%" class="lineheight34">${managerLoginname}</td>
                                        <input type="hidden" id="id" name="id" value="${managerId}">																																			
                                    </tr>										
                                    <tr>										
                                        <th width="25%">原密码：</th>
                                        <td width="75%"><input type="password" id="oldPassword" name="oldPassword" class="form-control input-large" value=""></td>																																			
                                    </tr>	
                                    <tr>										
                                        <th width="25%">新密码：</th>
                                        <td width="75%"><input type="password" id="password" name="password" class="form-control input-large" value=""></td>																																			
                                    </tr>	
                                    <tr>										
                                        <th width="25%">再次输入新密码：</th>
                                        <td width="75%"><input type="password" id="passwordconfirm" name="passwordconfirm" class="form-control input-large" value=""></td>																																			
                                    </tr>											
                                    <tr>
                                        <th>&nbsp;</th>											
                                        <td>											
                                            <button type="reset" class="btn default"><i class="fa fa-reply"></i> 重置</button>
                                            <button type="submit" class="btn btn-primary"><i class="fa fa fa-check"></i> 保存</button>
                                        </td>
                                    </tr>
                                    <tr> <td>&nbsp;</td><td ><label style="color:red;">${passwordEditInfo}</label></td></tr>
                                </table>
                                </div>									
                            </div>						
                        </div>
                    </form>
                </div>
            </div>
            <!-- END PAGE CONTENT-->
        </div>
    </div>
    <!-- END CONTENT -->
		<!-- 正文部分结束 -->
	</div>
	<%@ include file="/commons/foot.jsp"%>
<script type="text/javascript">
	$("#resetPasswordForm")
			.validate(
					{
						errorClass : "notice",
						rules : {
							oldPassword : {
								required : true,
								oldPassword:"oldPassword"
							},
							password : {
								required : true,
								rangelength : [ 6, 20 ],
								pattern : /^[a-zA-Z0-9_]*$/
							},
							passwordconfirm : {
								equalTo : "#password"
							}
						},
						messages : {
							oldPassword : {
								required : "旧密码不能为空"
							},

							password : {
								required : "新密码不能为空",
								rangelength : "确认新密码长度6-20",
								pattern : "密码不能包含特殊字符"

							},
							passwordconfirm : {
								equalTo : "两次密码输入不一致"
							}

						},
						focusInvalid : true,
					});
 jQuery.validator.addMethod("oldPassword", function(value, element) {
	 var pass=${managerPassword};
		  if($("#oldPassword").val()==pass){
			return true;
		 }
		 return false; 
	},"旧密码输入不匹配"); 
</script>
</body>
</html>