<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.lanqiao.bean.TV,org.lanqiao.bean.TvDetail" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>播放</title>
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

</head>
<body>
<!-- header -->
<!-- //header -->
<!-- bootstrap-pop-up -->

<!-- //bootstrap-pop-up -->
<!-- nav -->
<jsp:include page="pageTop.jsp"></jsp:include>
<!-- //nav -->
<jsp:include page="icons.jsp"></jsp:include>
<!-- single -->
<div class="single-page-agile-main">
<div class="container">
		<!-- /w3l-medile-movies-grids -->
			<div class="agileits-single-top">
				<ol class="breadcrumb">
				  <li><a href="IndexServlet?flag=index">首页</a></li>
				  <li class="active">表单</li>
				</ol>
			</div>
			<div class="single-page-agile-info">
                   <!-- /movie-browse-agile -->
                           <div class="show-top-grids-w3lagile">
				<div class="col-sm-8 single-left">
					<div class="song">
						<div class="song-info">
							<h3>${tv.tvName }</h3>	
						</div>
						<div class="video-grid-single-page-agileits">
							<div  id="video">
							 	<video id="videoid"  class="img-responsive" controls="controls">
							 		<source id="video_path" src="${listTvDetail[0].tvAddress }"  type="video/mp4" />
							 	</video>
							</div>
						</div>
					</div>
					<div class="song-grid-right">
						<div class="share">
							<p>
								<c:forEach items="${listTvDetail }" var="itm">
									<a href="#" class="btn" onclick="chose('${itm.tvAddress}')" >第${itm.tvNumber }集</a>
								</c:forEach>
								<script type="text/javascript">
									function chose(add){
										document.getElementById("videoid").src=add;
										document.getElementById("videoid").play();
									}
								</script>
							</p>
							<div class="single-agile-shar-buttons">
							<ul>
								<!-- <li>
									<div class="fb-like" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
									<script>(function(d, s, id) {
									  var js, fjs = d.getElementsByTagName(s)[0];
									  if (d.getElementById(id)) return;
									  js = d.createElement(s); js.id = id;
									  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.7";
									  fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));</script>
								</li> -->
								<!-- <li>
									<div class="fb-share-button" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Fw3layouts&amp;src=sdkpreparse">Share</a></div>
								</li>
								<li class="news-twitter">
									<a href="https://twitter.com/w3layouts" class="twitter-follow-button" data-show-count="false">Follow @w3layouts</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
								</li>
								<li>
									<a href="https://twitter.com/intent/tweet?screen_name=w3layouts" class="twitter-mention-button" data-show-count="false">Tweet to @w3layouts</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
								</li>
								<li>
									Place this tag where you want the +1 button to render.
									<div class="g-plusone" data-size="medium"></div>

									Place this tag after the last +1 button tag.
									<script type="text/javascript">
									  (function() {
										var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
										po.src = 'https://apis.google.com/js/platform.js';
										var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
									  })();
									</script>
								</li> -->
							</ul>
						</div>
						</div>
					</div>
					<div class="clearfix"> </div>

					<div class="all-comments">
						<div class="all-comments-info">
							<a href="#">在此评论</a>
							<div class="agile-info-wthree-box">
								<form action="#" method="get" onsubmit="return comm()">
									<c:if test="${user==null}">
										<input type="hidden" id="mesg" value="fail">
									</c:if>
									<c:if test="${user!=null}">
										<input type="hidden" id="mesg" value="success">
									</c:if>
									<input type="hidden" id="videoId" value="${tv.tvId}">
									<textarea placeholder="期待您的精彩评论" id="comment" required="" ></textarea>
									<input type="submit" value="评论">
									<div class="clearfix"> </div>
								</form>
							</div>
							<script type="text/javascript">
								function comm(){
									var mesg=$("#mesg").val();
									var comment = $("")
									if(mesg=="fail"){

										 $('#myModal').modal({
									            show: true,
									            backdrop:'static'
									      })

									}else if(mesg=="success"){
										var comment = $("#comment").val();
										var videoId = $("#videoId").val();
										console.log(comment+"  "+videoId);
										$.ajax({
											url:"FilmReviewServlet",
											type:"POST",
											data:{
												flag:"addFilemReview",
												comment:comment,
												videoId:videoId
											},
											success:function(){
												$("#comment").val("");
											}
										}) 
									}
									return false;
								}
							</script>
						</div>
						<div class="media-grids">
							
							<c:forEach items="${listFilmReview }" var="itm">
								<div class="media">
									<h5>${itm.userName }</h5>
									<div class="media-left">
										<a href="#">
											<img src="images/user.jpg" title="One movies" alt=" " />
										</a>
									</div>
									<div class="media-body">
										<p>${itm.commentInfo }</p>
									<span>用户昵称 :<a href="#"> ${itm.userName } </a></span>
								</div>
								</div>
							</c:forEach>
							

						</div>
					</div>
				</div>
				<div class="col-md-4 single-right">
					<h3>推荐影视</h3>
					<div class="single-grid-right">
						
						<c:if test="${requestScope.listFilmReview==null }">
							<c:forEach items="${requestScope.listTv }" var="itm" begin="0" end="3">
							<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<a href="PlayVideoServlet?flag=videoId&videoType=tv&videoId=${itm.tvId }">
								<img style="height: 134px;width: 100px;" src="${itm.tvPic }" alt="" /></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
								<p><a href="single.html" class="title">电影名称: ${itm.tvName }</a></p><br>
								<p class="author"><h5>国家: <a href="SerachFilmServlet?flag=countryId&countryId=${itm.countryId }" class="author">${itm.countryName }</a></h5></p><br>
								<p class="author"><h5>类型: <a href="SerachFilmServlet?flag=typeId&typeId=${itm.typeId }" class="author">${itm.typeName }</a></h5></p><br>
								<p class="views"><h5>播放量:${itm.tvPlay }</h5></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						</c:forEach>
						</c:if>
						
						<c:if test="${requestScope.listFilmReview!=null }">
							<c:forEach items="${requestScope.listTv }" var="itm" begin="0" end="8">
							<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<a href="PlayVideoServlet?flag=videoId&videoType=tv&videoId=${itm.tvId }">
								<img  src="${itm.tvPic }" alt="" /></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
								<p><a href="single.html" class="title">电影名称: ${itm.tvName }</a></p><br>
								<p class="author"><h5>国家: <a href="SerachFilmServlet?flag=countryId&countryId=${itm.countryId }" class="author">${itm.countryName }</a></h5></p><br>
								<p class="author"><h5>类型: <a href="SerachFilmServlet?flag=typeId&typeId=${itm.typeId }" class="author">${itm.typeName }</a></h5></p><br>
								<p class="views"><h5>播放量:${itm.tvPlay }</h5></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						</c:forEach>
						</c:if>

					</div>
				</div>
				

				
				<div class="clearfix"> </div>
			</div>
				<!-- //movie-browse-agile -->
				<!--body wrapper start-->
			<div class="w3_agile_banner_bottom_grid">
				<div id="owl-demo" class="owl-carousel owl-theme">
					
					<c:forEach items="${requestScope.listTv }" var="itm" begin="8" end="15">
						<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="PlayVideoServlet?flag=videoId&videoType=tv&videoId=${itm.tvId }" class="hvr-shutter-out-horizontal">
							<img style="height: 244px;width: 183px;" src="${itm.tvPic }" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">${itm.tvName }</a></h6>							
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
					</div>
					</c:forEach>
					
				</div>
			</div>
		<!--body wrapper end-->
						
							 
				</div>
				<!-- //w3l-latest-movies-grids -->
			</div>	
		</div>
	<!-- //w3l-medile-movies-grids -->
	
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
<script src="js/simplePlayer.js"></script>
<script>
	$("document").ready(function() {
		$("#video").simplePlayer();
	});
</script>
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
	</script>
</html>