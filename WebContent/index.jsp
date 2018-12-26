<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>首页</title>

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 
<!-- //banner-bottom-plugin -->
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
<!-- //header -->
<!-- bootstrap-pop-up -->
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
<jsp:include page="pageTop.jsp"></jsp:include>
<!-- //nav -->
<!-- banner -->
	<div id="slidey" style="display:none;">
		<ul>
			<c:forEach items="${requestScope.listIndex }" var="itm">
				<li><img src="${itm.pic}" alt=" "><p class='title'>${itm.moiveName }</p><p class='description'>${itm.moiveComment }...</p></li>
			</c:forEach>
		</ul>   	
    </div>
    <script src="js/jquery.slidey.js"></script>
    <script src="js/jquery.dotdotdot.min.js"></script>
	   <script type="text/javascript">
			$("#slidey").slidey({
				interval: 8000,
				listCount: 5,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
		</script>
<!-- //banner -->
<!-- banner-bottom -->
	<!-- <div class="banner-bottom">
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
					
					
					
					
				</div>
			</div>			
		</div>
	</div> -->
	<div class="tlinks">第三组 </div>
<!-- //banner-bottom -->
<jsp:include page="icons.jsp"></jsp:include>
<!-- general -->
	<div class="general">
		<h4 class="latest-text w3_latest_text">精选电影</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">精选</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">热门观看</a></li>
					<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">评分最高</a></li>
					<li role="presentation"><a href="#imdb" role="tab" id="imdb-tab" data-toggle="tab" aria-controls="imdb" aria-expanded="false">最近添加</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies">
						
						
						<c:forEach items="${requestScope.chosen }" var="itm">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
									<img style="height: 257px;width: 175px;" src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
										<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${itm.showTime }</p>
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
										<p>精选</p>
									</div>
								</div>
						</c:forEach>
							
							<div class="clearfix"> </div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
					
					
						<c:forEach items="${requestScope.highPlay }" var="itm">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
									<img style="height: 257px;width: 175px;" src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
										<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${itm.showTime }</p>
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
										<p>热门</p>
									</div>
								</div>
						</c:forEach>
						
						
						
						<div class="clearfix"> </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
					
						<c:forEach items="${requestScope.highScore }" var="itm">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
									<img style="height: 257px;width: 175px;" src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
										<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${itm.showTime }</p>
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
										<p>高分</p>
									</div>
								</div>
						</c:forEach>
					
						<div class="clearfix"> </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="imdb" aria-labelledby="imdb-tab">
					
						<c:forEach items="${requestScope.newList}" var="itm">
								<div class="col-md-2 w3l-movie-gride-agile">
									<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
									<img style="height: 257px;width: 175px;" src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
										<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
									</a>
									<div class="mid-1 agileits_w3layouts_mid_1_home">
										<div class="w3l-movie-text">
											<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
										</div>
										<div class="mid-2 agile_mid_2_home">
											<p>${itm.showTime }</p>
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
										<p>最新</p>
									</div>
								</div>
							</c:forEach>
					
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //general -->
<!-- Latest-tv-series -->
	<div class="Latest-tv-series">
		<h4 class="latest-text w3_latest_text w3_home_popular">最受欢迎的电影</h4>
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
					
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<c:forEach items="${requestScope.hoter }" var="itm" end="0">
											<img  style=" height:312px;width:570px;" src="${itm.moivePic }" alt=" " class="img-responsive" />
											<a class="w3_play_icon" href="#small-dialog">
												<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
											</a>
										</c:forEach>
										
									</div>
								</div>
								<c:forEach items="${requestScope.hoter }" var="itm" end="0">
									<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">${itm.moiveName }</p>
									<p class="fexi_header_para"><span class="conjuring_w3">电影简介<label>:</label></span>${itm.moiveDescribe }...</p>
									<p class="fexi_header_para"><span>上映时间<label>:</label></span> ${itm.showTime } </p>
									<p class="fexi_header_para">
										<span>题材<label>:</label> </span>
										<a href="genres.html">${itm.typeName }</a> | 
										<a href="genres.html">${itm.countryName }</a> |							
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>观影指数<label>:</label></span>
										<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
									</p>
								</div>
								</c:forEach>
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									
									<c:forEach items="${requestScope.hoter }" var="itm" begin="1" end="6">
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
										<img style=" height:257px;width:175px;"  src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
											<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										<div class="mid-1 agileits_w3layouts_mid_1_home">
											<div class="w3l-movie-text">
												<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
											</div>
											<div class="mid-2 agile_mid_2_home">
												<p>${itm.showTime }</p>
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
											<p>最热</p>
										</div>
									</div>
									</c:forEach>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<c:forEach items="${requestScope.hoter }" var="itm" begin="7" end="7">
											<img style=" height:312px;width:570px;"  src="${itm.moivePic }" alt=" " class="img-responsive" />
											<a class="w3_play_icon" href="#small-dialog">
												<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
											</a>
										</c:forEach>
										
									</div>
								</div>
								<c:forEach items="${requestScope.hoter }" var="itm" begin="7" end="7">
									<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">${itm.moiveName }</p>
									<p class="fexi_header_para"><span class="conjuring_w3">电影简介<label>:</label></span>${itm.moiveDescribe }...</p>
									<p class="fexi_header_para"><span>上映时间<label>:</label></span> ${itm.showTime } </p>
									<p class="fexi_header_para">
										<span>题材<label>:</label> </span>
										<a href="genres.html">${itm.typeName }</a> | 
										<a href="genres.html">${itm.countryName }</a> |							
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
										<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
									</p>
								</div>
								</c:forEach>
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									
									<c:forEach items="${requestScope.hoter }" var="itm" begin="8" end="13">
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
										<img style="height:257px;width:175px;"  src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
											<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										<div class="mid-1 agileits_w3layouts_mid_1_home">
											<div class="w3l-movie-text">
												<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
											</div>
											<div class="mid-2 agile_mid_2_home">
												<p>${itm.showTime }</p>
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
											<p>最热</p>
										</div>
									</div>
									</c:forEach>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<c:forEach items="${requestScope.hoter }" var="itm" begin="14" end="14">
											<img style="height:312px;width:570px;" src="${itm.moivePic }" alt=" " class="img-responsive" />
											<a class="w3_play_icon" href="#small-dialog">
												<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
											</a>
										</c:forEach>
										
									</div>
								</div>
								<c:forEach items="${requestScope.hoter }" var="itm" begin="14" end="14">
									<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">${itm.moiveName }</p>
									<p class="fexi_header_para"><span class="conjuring_w3">电影简介<label>:</label></span>${itm.moiveDescribe }...</p>
									<p class="fexi_header_para"><span>上映时间<label>:</label></span> ${itm.showTime } </p>
									<p class="fexi_header_para">
										<span>题材<label>:</label> </span>
										<a href="genres.html">${itm.typeName }</a> | 
										<a href="genres.html">${itm.countryName }</a> |							
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
										<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
										<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
									</p>
								</div>
								</c:forEach>
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									
									<c:forEach items="${requestScope.hoter }" var="itm" begin="15" end="20">
										<div class="col-md-2 w3l-movie-gride-agile">
										<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
										<img style="height: 257px;width: 175px;" src="${itm.moivePic }" title="album-name" class="img-responsive" alt=" " />
											<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										<div class="mid-1 agileits_w3layouts_mid_1_home">
											<div class="w3l-movie-text">
												<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a></h6>							
											</div>
											<div class="mid-2 agile_mid_2_home">
												<p>${itm.showTime }</p>
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
											<p>最热</p>
										</div>
									</div>
									</c:forEach>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
					
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
		</div>
	</div>
	<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>--->
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/148284736"></iframe>--->
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>--->
	</div>
	<script>
	/* 	$(document).ready(function() {
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
		}); */
	</script>
<!-- //Latest-tv-series -->
<!-- footer -->
<jsp:include page="bottom.jsp"></jsp:include>
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
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>