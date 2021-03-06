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
                    <li >
                        <i class="fa fa-home"></i>
                        <a href="index.html">IBooK首页</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li>
                        <a href="javascript:void(0)">系统管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li >
                        <a href="usermng.html">用户管理</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active">
                        <a href="#">用户信息修改</a>
                    </li>
                </ul>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <form class="form-horizontal form-row-seperated" action='<c:url value="/manager/managerEdit"></c:url>' method="post">
                        <div class="portlet light">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="fa fa-user font-green-sharp"></i>
                                    <span class="caption-subject font-green-sharp bold">用户信息修改</span>										
                                </div>	
                                <div class="actions btn-set">
                                    <a class="btn btn-default btn-circle" href="javascript:history.go(-1)"><i class="fa fa-angle-left"></i> 返回</a>										
                                </div>									
                            </div>
                            <div class="portlet-body">
                                <div class="table-responsive">
                                <table class="table table-bordered table_sxcondition">																				
                                    <tr>										
                                        <th width="25%">登录名：</th>
                                       <td width="75%" class="lineheight34">${manager.loginname}
                                       <input type="hidden" id="loginname" name="loginname" value="${manager.loginname}">
                                       <input type="hidden" id="id" name="id" value="${manager.id}">
                                       </td></tr>
                                    <tr>										
                                        <th width="25%">密码：</th>
                                        <td width="75%"><input type="password" id="password" name="password" value="${manager.password}" class="form-control input-large" ></td>																																			
                                    </tr>
                                    <tr>										
                                        <th width="25%">再次输入密码：</th>
                                        <td width="75%"><input type="password" id="repassword" name="repassword" value="${manager.password}" class="form-control input-large" value=""></td>																																			
                                        
                                    </tr>
                                    <tr>										
                                        <th width="25%">用户姓名：</th>
                                        <td width="75%"><input type="text" id="name" name="name" class="form-control input-large" value="${manager.name}"></td>																																			
                                    </tr>	
                                    <tr>										
                                        <th width="25%">状态：</th>
                                        <td width="75%">
                                            <select class="bs-select form-control input-large" id="status" name="status" data-placeholder="正常" value="${manager.status}">
                                                <option value="0" <c:if test="${manager.status=='0'}">selected</c:if>>正常</option>
                                                <option value="1" <c:if test="${manager.status=='1'}">selected</c:if>>停用</option>													
                                            </select>  
                                        </td>																																			
                                    </tr>	
                                    <tr>										
                                        <th width="25%">后台角色：</th>
                                        <td width="75%">
                                            <select class="bs-select form-control input-large" id="role" name="role" value="${manager.role}" data-placeholder="主管">
                                                <option value="0" <c:if test="${manager.role=='0'}">selected</c:if> >主管</option>
                                                <option value="1" <c:if test="${manager.role=='1'}">selected</c:if>>收银员</option>													
                                            </select>  
                                        </td>																																			
                                    </tr>				
                                    <tr>
                                        <th>&nbsp;</th>											
                                        <td>
                                            <a href="javascript:history.go(-1)" class="btn default"><i class="fa fa-angle-left"></i>  返回</a>
                                            <button type="reset" class="btn default"><i class="fa fa-reply"></i> 重置</button>
                                            <button type="submit" class="btn btn-primary"><i class="fa fa fa-check"></i> 提交</button>
                                        <label> <c:if test="${managerEditInfo=='管理员信息修改成功!'}"><label style="color:green;">${managerEditInfo}</label></c:if>
                                        <c:if test="${managerEditInfo!='管理员信息修改成功!'}"><label style="color:red;">${managerEditInfo}</label></c:if>
                                        </label>
                                       
                                        </td>
                                    </tr>
                                </table>
                                </div>									
                            </div>						
                        </div>
                    </form>
                </div>
            </div>
            <!-- END PAGE CONTENT-->

</div>
<!-- END CONTAINER -->
		<!-- 正文部分结束 -->
	</div>
	</div>
	<%@ include file="/commons/foot.jsp"%>

</body>

</html>