<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页轮播</title>
<link rel="stylesheet" href="admin/css/pintuer.css">
<link rel="stylesheet" href="admin/css/admin.css">
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
  <div class="padding border-bottom">  
  <button type="button" class="button border-yellow" onclick="add()"><span class="icon-plus-square-o"></span> 添加内容</button>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">ID</th>
      <th width="20%">图片</th>
      <th width="15%">名称</th>
      <th width="20%">描述</th>
      <th width="10%">地址</th>
      <th width="15%">操作</th>
    </tr>
    
    <c:forEach items="${requestScope.listIndexs }" var="index" varStatus="varStatus">
	    <tr id="tr${index.indexID }">
	      <td>${varStatus.index+1 }</td>     
	      <td><img src="${index.pic }" alt="" width="120" height="50" /></td>     
	      <td>${index.moiveName }</td>
	      <td>${index.moiveComment }</td>
	      <td>${index.moiveAddress }</td>
	      <td><div class="button-group">
	      <a class="button border-main" href="#add" onclick="update(${index.indexID })"><span class="icon-edit"></span>修改   </a>
	      <a class="button border-red" href="javascript:void(0)" onclick="return del(${index.indexID })"><span class="icon-trash-o"></span> 删除</a>
	      </div></td>
	    </tr>
    </c:forEach>
    
  </table>
</div>
<div class="panel admin-panel margin-top" id="add">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 增加内容</strong></div>
  <div class="body-content">
    <form class="form-x" >    
      <div class="form-group">
        <div class="label">
          <label>电影名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="name" name="title" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>视频URL：</label>
        </div>
        <div class="field">
          <input type="text" id="videoAddress" class="input w50" name="videoURL" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片URL：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="img" class="input tips" style="width:25%; float:left;"  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" name="imgURL" id="image1" value="+ 浏览上传"  style="float:left;">
          <div class="tipss">图片尺寸：1920*500</div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>电影描述：</label>
        </div>
        <div class="field">
          <textarea type="text" id="comment" class="input" name="note" style="height:120px;"></textarea>
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
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">
var flag="";
var updateID = "";
function add(){
	flag = "add";
	$(location).attr('href', '#add');
}

function update(id){
	flag = "update";
	$.ajax({
		url:"CarouselServlet",
		type:"POST",
		dataType:"JSON",
		data:{
			flag:"queryById",
			id: id
		},
		success:function(res){
			if(res=="fail"){
				alert("失败")
			}else{
				console.log(res);
				$("#name").val(res.moiveName);
				$("#url1").val(res.pic);
				$("#videoAddress").val(res.moiveAddress);
				$("#comment").val(res.moiveComment);
				$("#id").val(res.indexID);
			}
		}
	})
}

function sub(){
	
	//获得输入框的值
	var name = $("#name").val();
	var picAddrss = $("#url1").val();
	var videoAddress = $("#videoAddress").val();
	var comment = $("#comment").val();
	var id = $("#id").val();
	//新添加的首页轮播
	if(flag=="" || flag=="add"){
		flag = "add";
	}
	//修改已存在的
	if(flag == "update"){
		flag = "update";
	}
	if(name!="" && picAddrss!="" && videoAddress!="" && comment!=""){
		$.ajax({
			url:"CarouselServlet",
			type:"POST",
			data:{
				flag:flag,
				id: id,
				name:name,
				pic:picAddrss,
				moiveAddress:videoAddress,
				moiveComment:comment
			},
			success:function(res){
				if(res=="success"){
					window.location.reload()
				}else{
					alert("添加失败");
				}
			}
		})
		flag = "";
	}else{
		return ;
	}
	
	
}

function del(id){
	if(confirm("您确定要删除吗?")){
		$.ajax({
			url:"CarouselServlet",
			type:"POST",
			data:{
				flag:"del",
				id: id
			},
			success:function(res){
				if(res=="success"){
					$("#tr"+id).remove();
				}else if(res=="fail"){
					alert("删除失败")
				}else{
					alert("未知错误")
				}
			}
		}) 
	}
}
</script>
</html>