<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<form action='<c:url value="${url}"></c:url>' method="post" id="pageTurnForm">
<c:if test="${page != null && page.totalPageCount >= 1}">
<tr >
<td colspan="11">
<div class="fr" style="margin-bottom:10px;">
  <button type="button"  id="sub" class="btn btn-default" onclick="javascript:jumpToPage();"  style="float:right">跳转<!-- 跳转 --></button>

    <input type="text" id="jump" class="form-control input-mini input-inline  " maxlenght="5" style=" float:right;text-align:center; margin: 0px 6px 0px 0px;">
	
	<div class="btn-group" style="float:right">
		<c:choose>  
  
  			 <c:when test="${page.pageNow == 1}">
  			 	<button type="button" class="btn btn-default"  disabled="disabled">&nbsp;<i class="fa  fa-angle-double-left"></i></button>

  			 </c:when>      
   			<c:otherwise>
   			<button type="button" class="btn btn-default" onclick="javascript:prevousPage();">&nbsp;<i class="fa  fa-angle-double-left"></i></button>
   			</c:otherwise>  
		</c:choose>
		
		<button type="button" class="btn btn-default" disabled="disabled" onclick="javascript:jumpToPage();">第 ${page.pageNow} / ${page.totalPageCount}  页</button>
				<c:choose>  
  
  			 <c:when test="${page.pageNow == page.totalPageCount}">
  			 	<button type="button" class="btn btn-default"  disabled="disabled" >&nbsp;<i class="fa  fa-angle-double-right"></i></button>
  			 </c:when>      
   			<c:otherwise>
   				<button type="button" class="btn btn-default" onclick="javascript:nextPage();">&nbsp;<i class="fa  fa-angle-double-right"></i></button>
   			</c:otherwise>  
		</c:choose>
	</div>
	
</div>
</td>
</tr>
</c:if>
		<c:if test="${page == null || page.totalCount == 0}">
		<tr>
			<td colspan="11" class="alert-danger"><i class="fa fa-info-circle"></i> 无相关查询结果！
		</tr>
		</c:if>
		<input type="hidden" id="pageNow" name="pageNow"/>
		<input type="hidden" id="allcount" name="allcount" value="${page.totalCount}"/>
		
		</form>
		<script type="text/javascript">
		function jumpToPage(){
			var jump=$("#jump").val();
			var pageNow=${page.pageNow};
			var pageTotal=${page.totalPageCount};
				if(jump==""||jump>pageTotal||jump<1||isNaN(jump)){
					showAlertModel("提示信息","请输入正确的页码！",null);
					return false;
				}else{
					$("#pageNow").val(jump);
					$("#pageTurnForm").submit();
				}
		}
		function nextPage(){
			var pageNow=${page.pageNow};
			var pageTotal=${page.totalCount};
			$("#pageNow").val(parseInt(pageNow)+1);
		    $("#pageTurnForm").submit();
		}
		function prevousPage(){
			var pageNow=${page.pageNow};
			var pageTotal=${page.totalCount};
			$("#pageNow").val(parseInt(pageNow)-1);
		    $("#pageTurnForm").submit();
		}
		/*处理回车事件*/
		jQuery(document).ready(function() {
			$("#jump").keydown(function(event){
				if(event.keyCode == 13){
				    $("#sub").click();
				    return false;
				}else{
					
				}
			});
		});
		</script>

