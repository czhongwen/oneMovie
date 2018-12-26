<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更换头像</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div class="panel admin-panel">
<div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>更换你的头像</strong></div>
<div class="body-content">
  <form method="post" class="form-x" action="../portraitServlet" enctype="multipart/form-data">
    <div class="form-group">
        <div class="label">
          <label>选择本地头像：</label>
        </div>
        <div class="field">
          <input type="file" name="imageFile" class="input tips" style="width:25%; float:left;"  data-toggle="hover" data-place="right" data-image="" />
          <input type="submit"  class="button bg-blue margin-left" value="确认更换"  style="float:left;">
        </div>
      </div>     
</form>
</div>
</div>  
</body>
</html>