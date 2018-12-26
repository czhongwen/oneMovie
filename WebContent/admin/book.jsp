<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title></title>  
    <link rel="stylesheet" href="admin/css/pintuer.css">
    <link rel="stylesheet" href="admin/css/admin.css">
    <script src="admin/js/jquery.js"></script>
    <script src="admin/js/pintuer.js"></script>  
</head>
<body>
<form method="post" action="">
	<input type="hidden" value="${requestScope.key }" id="key">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 影评管理</strong></div>
    <div class="padding border-bottom">
      <ul class="search">
        <li>
          <button type="button"  class="button border-green" id="checkall"><span class="icon-check"></span> 全选</button>
          <button type="submit" onclick="return DelSelect()" class="button border-red"><span class="icon-trash-o"></span> 批量删除</button>
          <button type="pass" onclick="pass()" class="button border-red"><span class=""></span> 批量通过</button>&nbsp;&nbsp; &nbsp;&nbsp;
          <a href="FilmReviewServlet?currentPage=1&key=0"><button class="button bg-main icon-check-square-o" type="button">未通过的审核</button></a> &nbsp;&nbsp; 
          <a href="FilmReviewServlet?currentPage=1&key=1"><button class="button bg-main icon-check-square-o" type="button">已通过的审核</button></a> &nbsp;&nbsp; &nbsp;&nbsp;
        </li>
      </ul>
    </div>
    <table class="table table-hover text-center">
      <tr>
        <th width="120">ID</th>
        <th>用户姓名</th>       
        <th>影视名称</th>
        <th>影视海报</th>
        <th width="30%">内容</th>
         <th width="120">评论时间</th>
        <th>操作</th>       
      </tr>  
      <c:forEach items="${requestScope.list }" var="pre">
      	<tr id="tr${pre.fileReviewId }">
          <td> <input type="checkbox" name="id[]" value="${pre.fileReviewId }" />${pre.fileReviewId }</td>
          <td>${pre.userName }</td>
          <td>${pre.moiveName }</td>
          <td><img src="${pre.pic }" style="width:50px;height:30px;"></td>  
          <td>${pre.commentInfo }</td>         
          <td>${pre.commentDate }</td>
          <td><div class="button-group"> <a class="button border-red" href="javascript:void(0)" onclick="return del(${pre.fileReviewId })"><span class="icon-trash-o"></span> 删除</a> </div></td>
        </tr>
      </c:forEach>    
        
       <tr>
        <td colspan="8">
	        <div class="pagelist">
	  
	        	<a href="FilmReviewServlet?currentPage=1&${requestScope.key }">首页</a>
					<c:if test="${requestScope.page.currentPage==1 }">
						<span class="current">${requestScope.page.currentPage}</span>
					</c:if>
					
					
					<c:if test="${requestScope.page.currentPage>1 }">
						<a href="FilmReviewServlet?${requestScope.key }&currentPage=${requestScope.page.currentPage-1 }">上一页</a> 
		        		<a href="FilmReviewServlet?${requestScope.key }&currentPage=${requestScope.page.currentPage-1 }">${requestScope.page.currentPage-1 }</a>
					</c:if>
		
					<c:if test="${ 1<requestScope.page.currentPage  && requestScope.page.currentPage<requestScope.page.totalPage }">
					 	<span class="current">${requestScope.page.currentPage}</span>
					</c:if> 
					
					
					<c:if test="${requestScope.page.currentPage<requestScope.page.totalPage  }">
						<a href="FilmReviewServlet?${requestScope.key }&currentPage=${requestScope.page.currentPage+1 }">${requestScope.page.currentPage+1 }</a>
		        		<a href="FilmReviewServlet?${requestScope.key }&currentPage=${requestScope.page.currentPage+1 }">下一页</a>
					</c:if>
					
					<c:if test="${requestScope.page.currentPage==requestScope.page.totalPage && requestScope.page.currentPage!=1  }">
						<span class="current">${requestScope.page.currentPage}</span>
					</c:if>
		        	<a href="FilmReviewServlet?${requestScope.key }&currentPage=${requestScope.page.totalPage }">尾页</a>
	        	
	        </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

//单个删除
function del(id) {
	if (confirm("您确定要删除吗?")) {
		
		var key = $("#key").val();
		$.ajax({
			url:"FilmReviewServlet",
			type:"POST",
			data:{
				id:id,
				flag:"sigleDel",
				key:key,
			},
			success:function(res){
				if(res=="200"){
					$("#tr"+id).remove()
					alert('删除成功');
				}else if(res=="400"){
					alert("删除失败!");
				}else{
					alert("未知错误!");
				}
			}
		})  
	}
}

$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})
//批量通过
function pass(){
	var ids="";
	var arr = new Array($(":checkbox:checked").length-1);
	for(var i=0;i<$(":checkbox:checked").length;i++){
		if(i==($(":checkbox:checked").length-1)){
			ids=ids+$(":checkbox:checked").eq(i).val();
		}else{
			ids=ids+$(":checkbox:checked").eq(i).val()+",";
		}
		arr[i] = $(":checkbox:checked").eq(i).val();
	}
	var key = $("#key").val();
	$.ajax({
		url:"FilmReviewServlet",
		type:"POST",
		data:{
			ids:ids,
			flag:"pass",
			key:key,
		},
		success:function(res){
			if(res=="200"){
				for(var i=0;i<arr.length;i++){
					$("#tr"+arr[i]).remove()
				}
				alert('成功');
			}else if(res=="400"){
				alert("失败!");
			}else{
				alert("未知错误!");
			}
		}
	})  
}


function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false; 
		var ids="";
		var arr = new Array($(":checkbox:checked").length-1);
		for(var i=0;i<$(":checkbox:checked").length;i++){
			if(i==($(":checkbox:checked").length-1)){
				ids=ids+$(":checkbox:checked").eq(i).val();
			}else{
				ids=ids+$(":checkbox:checked").eq(i).val()+",";
			}
			arr[i] = $(":checkbox:checked").eq(i).val();
		}
		var key = $("#key").val();
		console.log(key);
		console.log(arr)
		$.ajax({
			url:"FilmReviewServlet",
			type:"POST",
			data:{
				ids:ids,
				flag:"delAll",
				key:key,
			},
			success:function(res){
				if(res=="200"){
					for(var i=0;i<arr.length;i++){
						$("#tr"+arr[i]).remove()
					}
					alert('删除成功');
				}else if(res=="400"){
					alert("删除失败!");
				}else{
					alert("未知错误!");
				}
			}
		})  
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

</script>
</body></html>