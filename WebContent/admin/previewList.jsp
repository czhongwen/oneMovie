<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.lanqiao.bean.Preview" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<form method="post" action="PreviewMangerServlet" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> 
				<a href="admin/add.jsp" style="float: right; display: none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left: 10px;">
					<li>
						<a class="button border-main icon-plus-square-o" href="add.html"> 添加内容</a>
					</li>

					<li><a href="VideoMangerServlet?vedioType= moive&currentPage=1&flag=page"><button class="button bg-main  icon-check-square-o" type="button">电影</button></a> &nbsp;&nbsp; &nbsp;&nbsp;
					    <a href="VideoMangerServlet?vedioType= tv&currentPage=1&flag=page"><button class="button bg-main  icon-check-square-o" type="button">电视剧</button></a> &nbsp;&nbsp; &nbsp;&nbsp;
						<a href="VideoMangerServlet?vedioType= preview&currentPage=1&flag=page"><button class="button border-red bg-main icon-check-square-o" type="button">预告片</button></a></li>
					<li>
						<input type="text" placeholder="请输入搜索关键字"  value="${requestScope.keyWords }" id="keyWords" name="key" class="input" style="width: 250px; line-height: 17px; display: inline-block" />
						<input class="button border-main icon-search" type="submit" value="搜索"> 
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="100" style="text-align: left; padding-left: 20px;">ID</th>
					<th width="10%">影视名称</th>
					<th>图片</th>
					<th>内容描述</th>
					<th>播放量</th>
					<th>上传时间</th>
					<th width="10%">上映时间</th>
					<th width="310">操作</th>
				</tr>
				<c:forEach items="${requestScope.list }" var="item">
					<tr id="tr${item.previewId }">
						<td style="text-align: left; padding-left: 20px;">
							<input type="checkbox" id="id" name="id[]" value="${item.previewId }"/>
						</td>
						<td>${item.previewName }</td>
						<td width="10%"><img src="${item.pic }" alt="" width="70" height="50" /></td>
						<td>${item.comment }</td>
						<td><font color="#00CC99"> 空位 </font></td>
						<td>${item.loadTime }</td>
						<td>${item.showTime }</td>
						<td>
							<div class="button-group">
								<a href="javascript:void(0)" href="javascript:void(0)" onclick="excuteUpdate('${item.previewId }')" class="button border-red " style="padding: 5px 15px;" > 修改</a>
								<a href="javascript:void(0)" href="javascript:void(0)" onclick="return del('${item.previewId }')" class="button border-red " style="padding: 5px 15px;" > 删除</a>
							</div>
						</td>
					</tr>
				</c:forEach>
				<tr>
					<td style="text-align: left; padding: 19px 0; padding-left: 20px;"> 
						<a id="checkall" href="javascript:void(0)" class="button border-red " style="padding: 5px 15px;" > 全选</a>
					</td>
					<td colspan="7" style="text-align: left; padding-left: 20px;">
						<a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding: 5px 15px;" onclick="DelSelect()"> 删除</a>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<div class="pagelist">
							<a href="PreviewMangerServlet?currentPage=1${requestScope.key }">首页</a>
							
						<c:if test="${requestScope.page.currentPage==1 }">
			        		<span class="current">${requestScope.page.currentPage}</span>
			        	</c:if>
			        	
			        	<c:if test="${requestScope.page.currentPage>1 && requestScope.page.currentPage!=requestScope.page.totalPage   }">
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage-1 }${requestScope.key }">上一页</a> 
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage-1 }${requestScope.key }">${requestScope.page.currentPage-1 }</a>
			        	</c:if>
			        	
			        	<c:if test="${requestScope.page.currentPage>1 && requestScope.page.currentPage==requestScope.page.totalPage   }">
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage-1 }${requestScope.key }">上一页</a>
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage-2 }${requestScope.key }">${requestScope.page.currentPage-2 }</a> 
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage-1 }${requestScope.key }">${requestScope.page.currentPage-1 }</a>
			        	</c:if>

			    		<c:if test="${1<requestScope.page.currentPage && requestScope.page.currentPage<requestScope.page.totalPage }">
			        	 	<span class="current">${requestScope.page.currentPage}</span>
			        	</c:if> 
			        	
			        	<c:if test="${requestScope.page.currentPage<requestScope.page.totalPage && requestScope.page.currentPage!=1 }">
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage+1 }${requestScope.key }">${requestScope.page.currentPage+1 }</a>
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage+1 }${requestScope.key }">下一页</a>
			        	</c:if>
			        	
			        	<c:if test="${requestScope.page.currentPage<requestScope.page.totalPage && requestScope.page.currentPage==1 }">
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage+1 }${requestScope.key }">${requestScope.page.currentPage+1 }</a>
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage+2 }${requestScope.key }">${requestScope.page.currentPage+2 }</a>
			        		<a href="PreviewMangerServlet?currentPage=${requestScope.page.currentPage+1 }${requestScope.key }">下一页</a>
			        	</c:if>
			        	
			        	<c:if test="${requestScope.page.currentPage==requestScope.page.totalPage }">
			        		<span class="current">${requestScope.page.currentPage}</span>
			        	</c:if>
			        	
			        	<a href="PreviewMangerServlet?currentPage=${requestScope.page.totalPage }${requestScope.key }">尾页</a>
						</div>
					</td>
				</tr>
				<input type="hidden" id="videoManger" value="${requestScope.videoManger }" />
			</table>
		</div>
	</form>
	<script type="text/javascript">
		//搜索
		function changesearch() {
			
			var keyWords = $("#keyWords").val();
			console.log(keyWords);
			if(keyWords==""){
				$.ajax({
					url:"/VideoMangerServlet",
					type:"POST",
					data:{
						key:"",
						currentPage:1
					}
				})
			}else{
				$.ajax({
					url:"VideoMangerServlet",
					type:"POST",
					data:{
						key:keyWords,
						currentPage:1
					}
				})
			}
		}

		//修改
		
		function excuteUpdate(id){
			
			var videoManger = $("#videoManger").val();
			var type = videoManger.split(" ",2)[1];
			
			$.ajax({
				url:"VideoMangerServlet",
				type:"POST",
				data:{
					id:id,
					flag:"update",
					vedioType:" "+type
				},
			}) 
		}

		
		
		//单个删除
		function del(id) {
			if (confirm("您确定要删除吗?")) {
				
				$.ajax({
					url:"PreviewMangerServlet",
					type:"POST",
					data:{
						id:id,
						flag:"singleDel"
					},
					success:function(res){
						if(res=="200"){
							$("#tr"+id).remove();
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

		//全选
		$("#checkall").click(function() {
			$("input[name='id[]']").each(function() {
				if (this.checked) {
					this.checked = false;
				} else {
					this.checked = true;
				}
			});
		})

		//批量删除
		function DelSelect() {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {
				var t = confirm("您确认要删除选中的内容吗？");
				if (t == false)
					return false;
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
				var videoManger = $("#videoManger").val();
				var type = videoManger.split(" ",2)[1];
				$.ajax({
					url:"PreviewMangerServlet",
					type:"POST",
					data:{
						ids:ids,
						flag:"delAll"
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
			} else {
				alert("请选择您要删除的内容!");
				return false;
			}
		}


	</script>
</body>
</html>