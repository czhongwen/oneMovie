<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>恐怖</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,5],
		  itemsDesktopSmall : [414,4]
	 
		});
	 
	}); 
</script> 
</head>
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>One<span>Movies</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="#" method="post">
					<input type="text" name="Search" placeholder="电影名" required="">
					<input type="submit" value="搜索">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
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
				<div class="modal-header">
					登录 注册
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">点击我</div>
							  </div>
							  <div class="form">
								<h3>登录到您的帐户</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="用户名" required="">
								  <input type="password" name="Password" placeholder="密码" required="">
								  <input type="text" class="input input-big" id="code1" name="code" placeholder="填写下方的验证码" data-validate="required:请填写下方的验证码" onblur="checkCode1()"/>
                          		  <img src="verifyCodeServlet" alt="" width="100" height="32" class="passcode" id="verifyCode1" style="height:43px;cursor:pointer;" onclick="changeCode1()">  
								  <input type="submit" value="登录">
								</form>
								<br>
								<div class="cta"><a href="#">忘记密码</a></div>
							  </div>
							  <div class="form">
								<h3>创建一个帐户</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="用户名" required="">
								  <input type="password" name="Password" placeholder="密码" required="">
								  <input type="email" name="Email" placeholder="邮箱地址" required="">
								  <input type="text" name="Phone" placeholder="电话号码" required="">
								  <input type="text" class="input input-big" id="code2" name="code" placeholder="填写下方的验证码" data-validate="required:请填写下方的验证码" />
                          		  <img src="verifyCodeServlet" alt="" width="100" height="32" class="passcode" id="verifyCode2" style="height:43px;cursor:pointer;" onclick="changeCode2()">  
								  <input type="submit" value="注册">
								</form>
							  </div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
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
							<li class="w3_home_act"><a href="index.html">首页</a></li>
							<li class="dropdown active">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">分类<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">动作</a></li>
												<li><a href="genres.html">传记</a></li>
												<li><a href="genres.html">犯罪</a></li>
												<li><a href="genres.html">家庭</a></li>
												<li><a href="horror.html">恐怖</a></li>
												<li><a href="genres.html">浪漫</a></li>
												<li><a href="genres.html">体育</a></li>
												<li><a href="genres.html">战争</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">冒险</a></li>
												<li><a href="comedy.html">喜剧</a></li>
												<li><a href="genres.html">记录</a></li>
												<li><a href="genres.html">虚幻</a></li>
												<li><a href="genres.html">惊悚</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">动画</a></li>
												<li><a href="genres.html">服装</a></li>
												<li><a href="genres.html">戏剧</a></li>
												<li><a href="genres.html">历史</a></li>
												<li><a href="genres.html">音乐</a></li>
												<li><a href="genres.html">心理</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="series.html">电视剧</a></li>
							<li><a href="news.html">预告</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">国家<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">亚洲</a></li>
												<li><a href="genres.html">法国</a></li>
												<li><a href="genres.html">台湾</a></li>
												<li><a href="genres.html">美国</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">中国</a></li>
												<li><a href="genres.html">香港</a></li>
												<li><a href="genres.html">日本</a></li>
												<li><a href="genres.html">泰国</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">欧洲</a></li>
												<li><a href="genres.html">印度</a></li>
												<li><a href="genres.html">韩国</a></li>
												<li><a href="genres.html">英国</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="short-codes.html">短代码</a></li>
							<li><a href="list.html">A-Z列表</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">推特 <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">脸谱 <i class="fa fa-facebook"></i></a></li>
			<li class="w3_dribbble"><a href="#">追波网 <i class="fa fa-dribbble"></i></a></li>
			<li class="w3_g_plus"><a href="#">谷歌+ <i class="fa fa-google-plus"></i></a></li>				  
		</ul>
  </nav>
</div>
<div class="w3l-agile-horror">
       <!-- /w3l-medile-movies-grids -->
			<div class="w3l-medile-movies-grids">
				<!-- /movie-browse-agile -->
				      <div class="movie-browse-agile">
					     <!--/browse-agile-w3ls -->
						<div class="browse-agile-w3ls general-w3ls">
								<div class="tittle-head">
									<h4 class="latest-text">恐怖电影 </h4>
									<div class="container">
										<div class="agileits-single-top">
											<ol class="breadcrumb">
											  <li><a href="index.html">首页</a></li>
											  <li class="active">恐怖</li>
											</ol>
										</div>
									</div>
								</div>
								<div class="container">
									<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3">
							   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h1.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Before I Wake</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
								   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h2.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Don't Breathe</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
								    <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h3.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Shallows</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h4.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Hush</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h5.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Tell Me How I Die</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h6.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Veil</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>

								<div class="clearfix"> </div>
								</div>
							<!-- //latest-movies1 -->
								<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3">
							   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h7.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Dead 7</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
								   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h8.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Keep Watching</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
								    <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h9.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Holidays</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h10.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Neon Demon</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h11.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Morgan </a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h12.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Belko Experiment</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>

								<div class="clearfix"> </div>
								</div>
									<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3">
							   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h1.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Before I Wake</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
								   <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h2.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Don't Breathe</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
								    <div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h3.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Shallows</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h4.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Hush</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h5.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">Tell Me How I Die</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											 <div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														   <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/h6.jpg" title="album-name" alt=" " />
									     <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									  <div class="mid-1">
										<div class="w3l-movie-text">
											<h6><a href="single.html">The Veil</a></h6>							
										</div>
										<div class="mid-2">
										
											<p>2016</p>
											<div class="block-stars">
												<ul class="w3l-ratings">
													     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														  
										
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
											
									</div>
							 	    <div class="ribben">
										<p>NEW</p>
									</div>	
									</div>

								<div class="clearfix"> </div>
								</div>
							<!-- //latest-movies1 -->
				<!--//browse-agile-w3ls -->
						<div class="blog-pagenat-wthree">
							<ul>
								<li><a class="frist" href="#">上一页</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a class="last" href="#">下一页</a></li>
							</ul>
						</div>
					</div>
				<!-- //movie-browse-agile -->
				<!--body wrapper start-->
						<div class="review-slider">
						 <h4 class="latest-text">电影评论</h4>
						 <div class="container">
						 	<div class="w3_agile_banner_bottom_grid">
								<div id="owl-demo" class="owl-carousel owl-theme">
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m13.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Citizen Soldier</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m11.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">X-Men</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m12.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Greater</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m7.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Light B/t Oceans</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m8.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">The BFG</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Central Intelligence</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m10.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Don't Think Twice</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m17.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">Peter</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m15.jpg" title="album-name" class="img-responsive" alt=" " />
												<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
											</a>
											<div class="mid-1 agileits_w3layouts_mid_1_home">
												<div class="w3l-movie-text">
													<h6><a href="single.html">God’s Compass</a></h6>							
												</div>
												<div class="mid-2 agile_mid_2_home">
													<p>2016</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p>NEW</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						<!--body wrapper end-->
			   </div>	
		   </div>
		</div>
	      <!-- //w3l-medile-movies-grids -->
	</div>
	</div>	
</div>
<!-- //comedy-w3l-agileits -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>订阅我们</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="你的邮箱..." required="">
								<input type="submit" value="发送">
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="index.html"><h2>One<span>Movies</span></h2></a>
				</div>
				<div class="clearfix"> </div>
			</div>

			<div class="col-md-7 w3ls_footer_grid1_right">
				<ul>
					<li>
						<a href="genres.html">电影</a>
					</li>
					<li>
						<a href="faq.html">常见问题</a>
					</li>
					<li>
						<a href="horror.html">动作</a>
					</li>
					<li>
						<a href="genres.html">冒险</a>
					</li>
					<li>
						<a href="comedy.html">喜剧</a>
					</li>
					<li>
						<a href="icons.html">图标</a>
					</li>
					<li>
						<a href="contact.html">联系我们</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
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
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
	        $("#code2").blur(function(){
				var code=$("#code2").val();
				$.ajax({
					url:"userServlet",
					type:"post",
					data:{
						code:code,
						flag:"code"
					},
					success:function(result){
						if(result=="200"){
							alert("验证码正确");
						}else if(result=="400"){
							alert("验证码错误");
						}else{
							alert("验证异常");
						}
							
						
					}
				})
			})
								
			});
		function changeCode1(){
			$("#verifyCode1").attr("src","verifyCodeServlet?time="+new Date());
			
		}
		function changeCode2(){
			$("#verifyCode2").attr("src","verifyCodeServlet?time="+new Date());
		}
		
		function checkCode1(){
			var code=$("#code1").val();
		
			$.ajax({
				url:"userServlet",
				type:"post",
				data:{
					code:code,
					flag:"code"
				},
				success:function(result){
					if(result=="200"){
						alert("验证码正确");
					}else if(result=="400"){
						alert("验证码错误");
					}else{
						alert("验证异常");
					}
						
					
				}
			})
			
		}
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>