<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Single</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
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
						 	 <div class="cta"><a href="#">忘记密码</a></div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>

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
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">类型 <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<li>
									<div class="col-sm-4">
										<ul class="multi-column-dropdown">
											<li><a href="genres.html">行动</a></li>
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
											<li><a href="genres.html">幻想</a></li>
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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">国家 <b class="caret"></b></a>
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
						<li><a href="short-codes.html">Short Codes</a></li>
						<li><a href="list.html">A - z list</a></li>
					</ul>
				</nav>
			</div>
		</nav>	
	</div>
</div>
<!-- //nav -->
<jsp:include page="icons.jsp"></jsp:include>
<!-- faq-banner -->
	<div class="faq">
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
					  <li><a href="index.html">首页</a></li>
					   <li><a href="news.html">预告</a></li>
					  <li class="active">单页</li>
					</ol>
				</div>
				<div class="agileinfo-news-top-grids">
					<div class="col-md-8 wthree-top-news-left">
						<div class="wthree-news-left">
							<div class="wthree-news-left-img">
								<img src="images/7.jpg" alt="" />
								<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</h4>
								<div class="s-author">
									<p>Posted By <a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a> &nbsp;&nbsp; <i class="fa fa-calendar" aria-hidden="true"></i> June 2, 2016 &nbsp;&nbsp; <a href="#"><i class="fa fa-comments" aria-hidden="true"></i> Comments (10)</a></p>
								</div>
								<div id="fb-root"></div>
								<div class="news-shar-buttons">
									<ul>
										<li>
											<div class="fb-like" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
											<script>(function(d, s, id) {
											  var js, fjs = d.getElementsByTagName(s)[0];
											  if (d.getElementById(id)) return;
											  js = d.createElement(s); js.id = id;
											  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.7";
											  fjs.parentNode.insertBefore(js, fjs);
											}(document, 'script', 'facebook-jssdk'));</script>
										</li>
										<li>
											<div class="fb-share-button" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Fw3layouts&amp;src=sdkpreparse">Share</a></div>
										</li>
										<li class="news-twitter">
											<a href="https://twitter.com/w3layouts" class="twitter-follow-button" data-show-count="false">Follow @w3layouts</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
										</li>
										<li>
											<a href="https://twitter.com/intent/tweet?screen_name=w3layouts" class="twitter-mention-button" data-show-count="false">Tweet to @w3layouts</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
										</li>
										<li>
											<!-- Place this tag where you want the +1 button to render. -->
											<div class="g-plusone" data-size="medium"></div>

											<!-- Place this tag after the last +1 button tag. -->
											<script type="text/javascript">
											  (function() {
												var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
												po.src = 'https://apis.google.com/js/platform.js';
												var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
											  })();
											</script>
										</li>
									</ul>
								</div>
								<div class="w3-agile-news-text">
									<p>Pellentesque vel urna accumsan, dictum sapien vitae, condimentum tellus. Nulla fermentum enim vitae commodo dapibus. Vivamus diam ligula, accumsan non malesuada et, interdum malesuada turpis. Donec posuere eros eget velit iaculis consequat. Vestibulum ante felis, congue a sapien pharetra, sodales congue magna. Curabitur id varius urna. Morbi finibus, velit sagittis fermentum venenatis, erat risus elementum nibh, at commodo lorem orci sed nulla. Pellentesque eu velit pulvinar, scelerisque lacus ut, semper dolor.
									<span>Donec semper, nibh et lacinia sollicitudin, nibh dui pellentesque elit, eu placerat leo felis nec nunc. Sed bibendum pretium metus eget euismod. Mauris id lacus lacus. Praesent faucibus nunc eget turpis tristique molestie. Duis dui diam, tristique eu gravida ut, congue eget felis. Proin sapien ligula, volutpat ut ultrices sit amet, dignissim quis urna. </span>
									Cras fermentum eu dolor in porttitor. Praesent sagittis sollicitudin scelerisque. Vivamus ac erat in ex consectetur imperdiet vel eget sapien. Duis viverra nisi id leo varius, vitae eleifend turpis vulputate. Mauris eget sagittis augue, ut efficitur mauris. Aenean risus nisi, faucibus eget condimentum at, porttitor vel felis. Aliquam eu augue ut tortor gravida iaculis in in orci. Quisque vehicula consectetur sagittis.
									</p>
								</div>
							</div>
						</div>
						<div class="wthree-related-news-left">
							<h4>相关评论</h4>
							<div class="wthree-news-top-left">
								<div class="col-md-6 w3-agileits-news-left">
									<div class="col-sm-5 wthree-news-img">
										<a href="news-single.html"><img src="images/m1.jpg" alt="" /></a>
									</div>
									<div class="col-sm-7 wthree-news-info">
										<h5><a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
										<p>Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</p>
										<ul>
											<li><i class="fa fa-clock-o" aria-hidden="true"></i> 24/09/2016</li>
											<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 w3-agileits-news-left">
									<div class="col-sm-5 wthree-news-img">
										<a href="news-single.html"><img src="images/m2.jpg" alt="" /></a>
									</div>
									<div class="col-sm-7 wthree-news-info">
										<h5><a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
										<p>Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</p>
										<ul>
											<li><i class="fa fa-clock-o" aria-hidden="true"></i> 24/09/2016</li>
											<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<!-- agile-comments -->
						<div class="agile-news-comments">
							<div class="agile-news-comments-info">
								<h4>Comments</h4>
								<div class="fb-comments" data-href="https://w3layouts.com/" data-width="100%" data-numposts="5"></div>
							</div>
						</div>
						<!-- //agile-comments -->
						<div class="news-related">
							
						</div>
					</div>
					<div class="col-md-4 wthree-news-right">
						<!-- news-right-top -->
						<div class="news-right-top">
							<div class="wthree-news-right-heading">
								<h3>最新评论</h3>
							</div>
							<div class="wthree-news-right-top">
								<div class="news-grids-bottom">
									<!-- date -->
									<div id="design" class="date">
										<div id="cycler">   
											<div class="date-text">
												<a href="news-single.html">August 15,2016</a>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">July 08,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Nullam non turpis sit amet metus tristique egestas et et orci.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">February 15,2016</a>
												<p>Duis venenatis ac ipsum vel ultricies in placerat quam</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">January 15,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Pellentesque ullamcorper fringilla ipsum, ornare dapibus velit volutpat sit amet.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">September 24,2016</a>
												<p>In lobortis ipsum mi, ac imperdiet elit pellentesque at.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">August 15,2016</a>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">July 08,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Nullam non turpis sit amet metus tristique egestas et et orci.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">February 15,2016</a>
												<p>Duis venenatis ac ipsum vel ultricies in placerat quam</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">January 15,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Pellentesque ullamcorper fringilla ipsum, ornare dapibus velit volutpat sit amet.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">September 24,2016</a>
												<p>In lobortis ipsum mi, ac imperdiet elit pellentesque at.</p>
											</div>
										</div>
										<script>
										function blinker() {
											$('.blinking').fadeOut(500);
											$('.blinking').fadeIn(500);
										}
										setInterval(blinker, 1000);
										</script>
										<script>
											function cycle($item, $cycler){
												setTimeout(cycle, 2000, $item.next(), $cycler);
												
												$item.slideUp(1000,function(){
													$item.appendTo($cycler).show();        
												});
												}
											cycle($('#cycler div:first'),  $('#cycler'));
										</script>
									</div>
									<!-- //date -->
								</div>
							</div>
						</div>
						<!-- //news-right-top -->
						<!-- news-right-bottom -->
						<div class="news-right-bottom">
							<div class="wthree-news-right-heading">
								<h3>热门评论</h3>
							</div>
							<div class="news-right-bottom-bg">
								<div class="news-grids-bottom">
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean rutrum ac nulla</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Vivamus nibh</a></li>
											</ul>
										</div>
									</div>
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Duis orci enim, rutrum vel sodales ut, tincidunt nec turpis.</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Cras pretium</a></li>
											</ul>
										</div>
									</div>
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean rutrum ac nulla</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Vivamus nibh</a></li>
											</ul>
										</div>
									</div>
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Duis orci enim, rutrum vel sodales ut, tincidunt nec turpis.</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Cras pretium</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //news-right-bottom -->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
				<div class="w3l-latest-movies-grids">
					<h4 class="latest-text w3_latest_text">最新电影</h4>
						<div class="container">
								<!-- /latest-movies -->
									<div class="browse-inner">
								   <div class="col-md-2 w3l-movie-gride-agile">
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m7.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Light B/t Oceans</a></h6>							
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
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m8.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">The BFG</a></h6>							
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
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Central Intelligence</a></h6>							
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
											  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m10.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Don't Think Twice</a></h6>							
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
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m11.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">X-Men</a></h6>							
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
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m12.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Greater</a></h6>							
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

												<div class="clearfix"> </div>
									</div>
								<!-- //latest-movies -->
								 
						   </div>
			</div>
	</div>
<!-- //faq-banner -->
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
		<div class="col-md-5 w3ls_footer_grid1_left">

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
					<a href="horror.html">行动</a>
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