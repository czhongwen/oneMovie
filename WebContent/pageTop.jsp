<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="org.lanqiao.service.*,
						org.lanqiao.service.impl.*,
						org.lanqiao.bean.*,
						java.util.*,
						org.lanqiao.bean.User,
						org.lanqiao.service.MoiveTypeService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

</head>
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.jsp"><h1>One<span>Movies</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="SerachFilmServlet" method="post">
					<input type="hidden" value = "serach" name = "flag"> 
					<input type="text"  name="key" placeholder="电影名" required="">
					<input type="submit" value="搜索">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul id="log">
					<c:if test="${user==null }">
						<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
						<li><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
					</c:if>
					<c:if test="${user!=null }">
						<li class="class="w3_g_plus" >
							<h3><i class='fa fa-user'>${user.name },您好<h5></h5></i></h3>
						</li>
					</c:if>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" id="loginModal">
					登录 注册
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">注册</div>
							  </div>
							  <div class="form">
								<h3>登录您的邮箱</h3>
								<form action="#" method="#" onsubmit="return loginUser()">
								  <input type="text" id="loginEmail" name="userName" placeholder="您的邮箱" required="">
								  <input type="password" id="password" name="passWord" placeholder="您的密码" required="">
								  <table>
								  	<tr>
								  		<td>
								  			<input type="text" class="input input-big" id="code" name="code" placeholder="填写右方的验证码" data-validate="required:请填写下方的验证码" onblur="checkCode()"/>
                          		  		</td>
                          		  		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          		  			<img src="verifyCodeUtils" alt="" width="100" height="32" id="verifyCode" class="passcode" style="height:43px;cursor:pointer;" onclick="this.src=this.src+'?'">  
								  		</td>
								  	</tr>
								  </table>
								  <input type="submit" value="登录" >
								</form>
								<script type="text/javascript">
								  	var flag = false;
								    function checkCode(){
								    	var code = $("#code").val();
								    	$.ajax({
								    		url:"AdminServlet",
								    		type:"post",
								    		data:{
								    			code:code,
								    			flag:"code"
								    		},
								    		success:function(result){
								    			if(result=="200"){
								    				flag = true;
								    			}else if(result=="400"){
								    				$("#code").val("");
								    			}
								    		}
								    	})
								    }
								  
								  	function loginUser() {
										var name = $("#loginEmail").val();
										var password = $("#password").val();
										if(name!="" && password!="" && flag==true){
											$.ajax({
												url:"UserServlet",
												type:"POST",
												data:{
													flag:"login",
													account:name,
													password:password
												},
												success:function(res){
													
													if(res=="200"){
														
														$('#myModal').modal('hide');
														$(".modal-backdrop").remove();
														$("#log").empty();
														$("#log").append("<h3><i class='fa fa-user'></i>已登录</h3>");
													}
												}
											})
										}
										return false;
									}
								  
								  </script>
								<br>
								<div class="cta"><a href="#">忘记密码</a></div>
							  </div>
							  <div class="form">
								<h3>创建一个帐户</h3>
								<form action="#" method="post" onsubmit="return regist()">
								  <input type="hidden" name="flag" value="regist">
								  <input type="text" name="Username" id="resName" placeholder="用户昵称" required="">
								  <input type="text" name="relName" id="relName" placeholder="用户姓名" required="">
								  <input type="password" name="Password" id="resPassword" placeholder="密码" required="">
								  <input type="password" name="Password" id="coimPassword" placeholder="确认密码" required="">
								  <input type="email" name="Email" id="resEmail" placeholder="邮箱地址" required="">
								  <input type="text" name="Phone" id="phone" placeholder="电话号码" required="">
								  <table>
								  <tr>
								  	<td>
								  		<input type="text" class="input input-big" id="resCode" onblur="checkResCode()" name="code" placeholder="填写邮箱中的验证码" data-validate="required:请填写邮箱中的验证码" />
                          		  	</td>
                          		  	<td>
                          		  		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          		  		<input type="button" class="btn" id="btnEmail" value="发送邮箱验证码">  
                          		  	</td>
								  </tr>
								  </table>
								  <input type="submit" value="注册">
								</form>
								<script type="text/javascript">
									
									var userName,password,Phone,relName,email,resCode,coimPassword;
									
									//请求发送邮箱验证码
									var emailFlag = false;
									$("#btnEmail").click(function (){
										email = $("#resEmail").val();
										if(email!=""){
											$.ajax({
												url:"EmailServlet",
												type:"POST",
												data:{
													flag:"regist",
													email:email
												},
												success:function(res){
													if(res=="200"){
														emailFlag = true;
														$("#resCode").attr("placeholder","已发送至邮箱");
													}else if(res=="400"){
														emailFlag = false;
													}
												}
											})
										}else{
											$("#resEmail").focus();
										}
									})
									//验证验证码是否正确
									var  codeFlag = false;
									function checkResCode(){
								    	var code = $("#resCode").val();
								    	if(emailFlag){
								    		$.ajax({
									    		url:"AdminServlet",
									    		type:"post",
									    		data:{
									    			code:code,
									    			flag:"code"
									    		},
									    		success:function(result){
									    			if(result=="200"){
									    				codeFlag = true;
									    			}else if(result=="400"){
									    				$("#resCode").val("");
									    			}
									    		}
									    	})
								    	}
								    }
									//注册
									function regist() {
										
										userName = $("#resName").val();
										password = $("#resPassword").val();
										Phone = $("#phone").val();
										coimPassword = $("#coimPassword").val();
										relName = $("#relName").val();
										
										console.log(userName +"  "+password+"  "+Phone+"  "+coimPassword+"  "+email+"  "+relName);
										
										if(userName==""){
											$("#resName").val("");
											return false;
										}
										if(relName==""){
											$("#relName").val("");
											return false;
										}relName
										if(password==""){
											$("#resPassword").val("");
											return false;
										}
										if(coimPassword==""){
											$("coimPassword").val("");
											return false;
										}
										if(!emailFlag){
											$("#resEmail").val("");
											return false;
										}
										if(Phone==""){
											$("#phone").val("");
											return false;
										}
										if(password != coimPassword ){
											$("resPassword").val("");
											$("#resPassword").val("");
											return false;
										}
									    $.ajax({
											url:"UserServlet",
											type:"POST",
											data:{
												flag:"regist",
												Username:userName,
												password:password,
												phone:Phone ,
												Email:email,
												relName : relName
											},
											success:function(res){
												if(res == "200"){
													return true;
												}
												else if(res == "400"){
													return false;
												}
											}
										}) 
									}
								</script>
							  </div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- 注册 -->
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="IndexServlet?flag=index">首页</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">分类 <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
									<%
									 	MoiveTypeService mts = new  MoiveTypeServiceImpl();
								     	MoiveCountryService mcs = new MoiveCountryServiceImpl();
										List<MoiveType> listType = mts.getAll();
										List<MoiveCountry> listCountry = mcs.getAll();
										for(int i=0;i<6;i++){
											
									%>
										<div class="col-sm-4">
											<ul id="type1" class="multi-column-dropdown">
												<%
													MoiveType mt=listType.get(i);
												%>
												<li><a href=SerachFilmServlet?flag=typeId&typeId=<%=mt.getId() %>><%=mt.getTypeName() %></a></li>
											</ul>
										</div>
									<%
										}
									%>
									<% 	
										for(int i=6;i<13;i++){
											
									%>
										<div class="col-sm-4">
											<ul id="type1" class="multi-column-dropdown">
												<%
													MoiveType mt=listType.get(i);
												%>
												<li><a href=SerachFilmServlet?flag=typeId&typeId=<%=mt.getId() %>><%=mt.getTypeName() %></a></li>
											</ul>
										</div>
									<%
										}
									%>
										<% 	
										for(int i=13;i<listType.size();i++){
											
									%>
										<div class="col-sm-4">
											<ul id="type1" class="multi-column-dropdown">
												<%
													MoiveType mt=listType.get(i);
												%>
												<li><a href=SerachFilmServlet?flag=typeId&typeId=<%=mt.getId() %>><%=mt.getTypeName() %></a></li>
											</ul>
										</div>
									<%
										}
									%>
									<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="TvServlet?flag=tv">电视剧</a></li>
							<li><a href="AdvanceNoteServlet?flag=preview">预告片</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">国家<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
									<% 
											for(int i=0;i<4;i++){
											
									%>
										<div class="col-sm-4">
											<ul id="type1" class="multi-column-dropdown">
												<%
													MoiveCountry mc=listCountry.get(i);
												%>
												<li><a href=SerachFilmServlet?flag=countryId&countryId=<%=mc.getId() %>><%=mc.getCountryName() %></a></li>
											</ul>
										</div>
									<%
										}
									%>
									<% 	
										for(int i=4;i<8;i++){
											
									%>
										<div class="col-sm-4">
											<ul id="type1" class="multi-column-dropdown">
												<%
												MoiveCountry mc=listCountry.get(i);
												%>
												<li><a href=SerachFilmServlet?flag=countryId&countryId=<%=mc.getId() %>><%=mc.getCountryName() %></a></li>
											</ul>
										</div>
									<%
										}
									%>
										<% 	
										for(int i=8;i<listCountry.size();i++){
											
									%>
										<div class="col-sm-4">
											<ul id="type1" class="multi-column-dropdown">
												<%
												MoiveCountry mc=listCountry.get(i);
												%>
												<li><a href=SerachFilmServlet?flag=countryId&countryId=<%=mc.getId() %>><%=mc.getCountryName() %></a></li>
											</ul>
										</div>
									<%
										}
									%>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="VideoViewServlet?flag=moive">A-Z列表</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->

	<!-- pop-up-box -->  
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<!-- 	<script>
		//下拉框
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
		});
	</script> -->
<script src="js/bootstrap.min.js"></script>
<script>
	//国家 类型下拉选择
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    ); 
});
</script>
</body>
</html>