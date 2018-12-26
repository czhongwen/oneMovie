<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="" enctype="multipart/form-data">  
      <div class="form-group">
          <div class="label">
            <label>影视选择：</label>
          </div>
          <div class="field">
            <select id="videoType" class="input w50">
              <option value="">请选择分类</option>
              <option value="movie">电影</option>
              <option value="tv">电视剧</option>
              <option value="news">预告片</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
      
      <div class="form-group">
        <div class="label">
          <label>影视名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="videoName" name="movieName" data-validate="required:请输入标题" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>影视海报：</label>
        </div>
        <div class="field">
          <input type="file" name="pic"  class="input tips" style="width:25%; float:left;"  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" onclick="BrowseServer('pic1');" class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
        </div>
      </div>     
      <div class="form-group">
        <div class="label">
          <label>影视资源：</label>
        </div>
        <div class="field">
          <input type="file" name="videoAdress" multiple="multiple" class="input tips" style="width:25%; float:left;"  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" onclick="BrowseServer('pic1');"  class="button bg-blue margin-left" id="image1" value="+ 浏览上传"  style="float:left;">
        </div>
      </div>  
       <div class="form-group">
          <div class="label">
            <label>类型分类：</label>
          </div>
          <div class="field">
            <select name="typeId" id="type"  class="input w50">
              <option value="">请选择分类</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
        
         <div class="form-group">
          <div class="label">
            <label>所属国家：</label>
          </div>
          <div class="field">
            <select name="countrId" id="country" class="input w50">
              <option value="">请选择分类</option>
            </select>
            <div class="tips"></div>
          </div>
        </div>
        
      <div class="form-group">
        <div class="label">
          <label>影视简介：</label>
        </div>
        <div class="field">
          <textarea class="input" id="comment" name="comment" style=" height:90px;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      <div class="clear"></div>
      
      <div class="form-group">
        <div class="label">
          <label>上映时间：</label>
        </div>
        <div class="field"> 
          <input type="text" id="showTime" class="laydate-icon input w50" name="showTime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value=""  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>上传时间：</label>
        </div>
        <div class="field"> 
          <input type="text" id="loadTime" class="laydate-icon input w50" name="loadTime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value=""  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
<script src="../ckfinder/ckfinder.js"></script>
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">

	$(function(){
		$.ajax({
			url:"../MoiveTypeServlet",
			type:"POST",
			dataType:"JSON",
			data:{
				flag:"getAllOfJSON"
			},
			success:function(res){
				for(var i=0,l=res.length;i<l;i++){
					$("#type").append("<option value="+res[i].id+">"+res[i].typeName+"</option>")
				}
			}
		})
		$.ajax({
			url:"../MoiveCountryServlet",
			type:"POST",
			dataType:"JSON",
			data:{
				flag:"getAllOfJSON"
			},
			success:function(res){
				for(var i=0,l=res.length;i<l;i++){
					$("#country").append("<option value="+res[i].id+">"+res[i].CountryName+"</option>")
				}
			}
		})
	})

	function BrowseServer(inputId) {
		var finder = new CKFinder();
		finder.basePath = 'ckfinder/';
		//导入CKFinder的路径
		finder.selectActionFunction = SetFileField;
		//设置文件被选中时的函数
		finder.selectActionData = inputId;
		//接收地址的input ID
		finder.popup();
		}
		//文件选中时执行 
		function SetFileField(fileUrl, data) {
			document.getElementById(data["selectActionData"]).value = fileUrl;
	}
	
	$("#videoType").blur(function(){
		//获取管理员想要插入的影视分类
		var flag = $("#videoType").val();
		if(flag=="movie"){
			$("form[class='form-x']").attr('action','../MoiveUpdateLoadServlet');
		}else if(flag=="tv"){
			$("form[class='form-x']").attr('action','../TvUpdateLoadServlet');
		}else if(flag=="news"){
			$("form[class='form-x']").attr('action','../PreviewUpdateLoadServlet');
		}
	})

	
</script>
</body></html>