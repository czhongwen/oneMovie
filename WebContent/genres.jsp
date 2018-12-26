<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分类</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- news-css -->
<link rel="stylesheet" href="news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
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
<!-- //bootstrap-pop-up -->
<!-- nav -->

<jsp:include page="pageTop.jsp" flush="true"/>
<!-- //nav -->
<jsp:include page="icons.jsp"></jsp:include>
<!-- /w3l-medile-movies-grids -->
	<div class="general-agileits-w3l">
		<div class="w3l-medile-movies-grids">

				<!-- /movie-browse-agile -->
				
				      <div class="movie-browse-agile">
					     <!--/browse-agile-w3ls -->
						<div class="browse-agile-w3ls general-w3ls">
								<div class="tittle-head">
									<h4 class="latest-text">${requestScope.typeName }电影 </h4>
									<div class="container">
										<div class="agileits-single-top">
											<ol class="breadcrumb">
											  <li><a href="IndexServlet?flag=index">首页</a></li>
											  <li class="active">分类</li>
											</ol>
										</div>
									</div>
								</div>
					<div class="container">
							<div class="browse-inner">
								<c:forEach  items="${requestScope.list }" var="itm" varStatus="var" begin="0" end="5">
										<div class="col-md-2 w3l-movie-gride-agile">
											<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
											<img style="width: 182px;height:268px;" src="${itm.moivePic }" title="album-name" alt="影视海报" />
												<div class="w3l-action-icon">
													<i class="fa fa-play-circle" aria-hidden="true"></i>
												</div> </a>
											<div class="mid-1">
												<div class="w3l-movie-text">
													<h6>
														<a href="PlayVideoServlet?flag=videoId&${videoType }&videoId=${itm.moiveId}">${itm.moiveName }</a>
													</h6>
												</div>
												<div class="mid-2">
													<p>${itm.showTime }</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li>
																<a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
			
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben two">
												<p>NEW</p>
											</div>
										</div>
							</c:forEach>
						<div class="clearfix"></div>
						</div>
						<!-- /latest-movies1 -->
							    <div class="browse-inner-come-agile-w3">
								<div class="clearfix"> </div>
								</div>
							<!-- //latest-movies1 -->
									<!-- /latest-movies1 -->
							   <div class="browse-inner">
									<c:forEach  items="${requestScope.list }" var="itm" varStatus="var" begin="6" end="11">
										<div class="col-md-2 w3l-movie-gride-agile">
											<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
											<img style="width: 182px;height:268px;" src="${itm.moivePic }" title="album-name" alt="影视海报" />
												<div class="w3l-action-icon">
													<i class="fa fa-play-circle" aria-hidden="true"></i>
												</div> </a>
											<div class="mid-1">
												<div class="w3l-movie-text">
													<h6>
														<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a>
													</h6>
												</div>
												<div class="mid-2">
													<p>${itm.showTime }</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li>
																<a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
			
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben two">
												<p>NEW</p>
											</div>
										</div>
									
							</c:forEach>
							<div class="clearfix"> </div>
							</div>
								
							<!-- //latest-movies1 -->
							 <div class="browse-inner">
									<c:forEach  items="${requestScope.list }" var="itm" varStatus="var" begin="12" end="17">
										<div class="col-md-2 w3l-movie-gride-agile">
											<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
											<img style="width: 182px;height:268px;" src="${itm.moivePic }" title="album-name" alt="影视海报" />
												<div class="w3l-action-icon">
													<i class="fa fa-play-circle" aria-hidden="true"></i>
												</div> </a>
											<div class="mid-1">
												<div class="w3l-movie-text">
													<h6>
														<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a>
													</h6>
												</div>
												<div class="mid-2">
													<p>${itm.showTime }</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li>
																<a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
			
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben two">
												<p>最新</p>
											</div>
										</div>
									
							</c:forEach>
							<div class="clearfix"> </div>
							</div>
							
							<div class="browse-inner-come-agile-w3">
								<div class="clearfix"> </div>
								</div>
								
					 <div class="browse-inner">
									<c:forEach  items="${requestScope.list }" var="itm" varStatus="var" begin="18" end="23">
										<div class="col-md-2 w3l-movie-gride-agile">
											<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal">
											<img style="width: 182px;height:268px;" src="${itm.moivePic }" title="album-name" alt="影视海报" />
												<div class="w3l-action-icon">
													<i class="fa fa-play-circle" aria-hidden="true"></i>
												</div> </a>
											<div class="mid-1">
												<div class="w3l-movie-text">
													<h6>
														<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">${itm.moiveName }</a>
													</h6>
												</div>
												<div class="mid-2">
													<p>${itm.showTime }</p>
													<div class="block-stars">
														<ul class="w3l-ratings">
															<li>
																<a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o"
																	aria-hidden="true"></i></a></li>
			
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben two">
												<p>NEW</p>
											</div>
										</div>
									
							</c:forEach>
							<div class="clearfix"> </div>
							</div>
							
							<div class="browse-inner-come-agile-w3">
								<div class="clearfix"> </div>
								</div>
				<!--//browse-agile-w3ls -->
						<div class="blog-pagenat-wthree">
							<ul>
							
							<li><a class="btn"  href="SerachFilmServlet?${requestScope.flag }${requestScope.key }&currentPage=1">首页</a></li>
							
							<c:if test="${requestScope.currentPage==1}">
								<li><a class="btn " style="background: #C1FFC1" >${requestScope.currentPage}</a></li>
							</c:if>
							<c:if test="${requestScope.currentPage>1 && requestScope.totalPage!=1}">
								<li><a class="btn"  href="SerachFilmServlet?${requestScope.flag }${requestScope.key }&currentPage=${requestScope.currentPage-1}">上一页</a></li>
								<li><a class="btn"  href="SerachFilmServlet?${requestScope.flag }${requestScope.key }&currentPage=${requestScope.currentPage-1}">${requestScope.currentPage-1}</a></li>
							</c:if>
			        		
			        		<c:if test="${1<requestScope.currentPage && requestScope.currentPage<requestScope.totalPage}">
			        			<li><a class="btn " style="background: #C1FFC1">${requestScope.currentPage}</a></li>
			        		</c:if>
			        		
			        		<c:if test="${requestScope.currentPage<requestScope.totalPage}">
			        			<li><a class="btn"  href="SerachFilmServlet?${requestScope.flag }${requestScope.key }&currentPage=${requestScope.currentPage+1}">${requestScope.currentPage+1}</a></li>
			        			<li><a class="btn"  href="SerachFilmServlet?${requestScope.flag }${requestScope.key }&currentPage=${requestScope.currentPage+1}">下一页</a></li>
			        		</c:if>
			        		<c:if test="${requestScope.currentPage==requestScope.totalPage && requestScope.currentPage!=1}">
								<li><a class="btn "style="background: #C1FFC1" >${requestScope.currentPage}</a></li>
							</c:if>
			        		
			        		<li><a class="btn"  href="SerachFilmServlet?${requestScope.flag }${requestScope.key }&currentPage=${requestScope.totalPage }">尾页</a></li>
					
							</ul>
						</div>
					</div>
				    <!-- //movie-browse-agile -->
				   <!--body wrapper start-->
				<!--body wrapper start-->
	<%-- 				<div class="review-slider">
						 <h4 class="latest-text">电影评论</h4>
						 <div class="container">
						 <div class="w3_agile_banner_bottom_grid">
				<div id="owl-demo" class="owl-carousel owl-theme">
					<c:forEach items="${list }" var="itm" begin="10" end="17">
					
						<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }" class="hvr-shutter-out-horizontal"><img src="images/m13.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="PlayVideoServlet?flag=videoId&videoType=moive&videoId=${itm.moiveId }">Citizen Soldier</a></h6>							
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
									<p>哈</p>
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="clearfix"> </div>
				</div>
			</div> --%>
<!--body wrapper end-->
			</div>	
			</div>	
		</div>
	<!-- //w3l-medile-movies-grids -->
	</div>
	<!-- //comedy-w3l-agileits -->
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