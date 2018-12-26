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
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
  <div class="padding border-bottom">
    <button type="button" class="button border-yellow" onclick="add()"><span class="icon-plus-square-o"></span>添加分类</button>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">ID</th>
      <th width="15%">分类名称</th>
      <th width="15%">操作</th>
    </tr>
    <c:forEach items="${requestScope.list }" var="moiveType" varStatus="varStatus">
      	<tr>
      		<td>${varStatus.index+1 }</td>
      		<td>${moiveType.typeName }</td>
      		<td><div class="button-group"> <a class="button border-main" href="#add" onclick="updateMoiveType(${moiveType.id })"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(${moiveType.id })"><span class="icon-trash-o"></span> 删除</a> </div></td>
    	</tr>
    </c:forEach>
    
  </table>
</div>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x">
  
      <div class="form-group">
        <div class="label">
          <label>分类名称：</label>
        </div>
        <div class="field">
          <input type="text" id="name"  class="input w50" name="title" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" onclick="sub()">提交</button>
        </div>
      </div>
      <input type="hidden" id="id">
    </form>
  </div>
</div>
</body>
<script src="admin/js/jquery.js"></script>
<script src="admin/js/pintuer.js"></script>
<script type="text/javascript">
	
	var flag = "";
	
	function del(id){
		if(confirm("您确定要删除吗?")){			
			$.ajax({
				url:"MoiveTypeServlet",
				type:"POST",
				data:{
					flag:"del",
					id:id
				},
				success:function(res){
					if(res=="success"){
						window.location.reload();
					}else{
						alert("操作失败")
					}
				}
			})
		}
	}
	
	function add(){
		$(location).attr('href', '#add');
		flag = "add";
	}
	
	function updateMoiveType(id){
		flag = "update";
		$.ajax({
			url:"MoiveTypeServlet",
			type:"POST",
			dataType:"JSON",
			data:{
				flag:"queryById",
				id:id
			},
			success:function(res){
				if(res=="fail"){
					alert("操作失败");
					return;
				}else{
					console.log(res);
					$("#name").val(res.typeName);
					$("#id").val(res.id);
				}
			}
		}) 
	}
	
	function sub(){
		//获取分类id 及 分类名称
		var name = $("#name").val();
		var id = $("#id").val();
		
		//判断是修改还是新增
		if(flag =="" || flag =="add"){
			flag = "add";
		}
		if (flag == "update"){
			flag = "update";
		}

		//判断name是否为空
		if(name!=""){
			console.log(name);
			$.ajax({
				url:"MoiveTypeServlet",
				type:"POST",
				dataType:"JSON",
				data:{
					flag:flag,
					id:id,
					name:name
				},
				success:function(res){
					if(res=="fail"){
						alert("操作失败");
						return;
					}else{
						window.location.reload();
					}
				}
			}) 
			flag = ""
		}
	}
	
</script>
</html>