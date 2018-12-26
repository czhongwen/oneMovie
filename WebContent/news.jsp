<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预告</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
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
<!-- //header -->
<!-- bootstrap-pop-up -->

<!-- //bootstrap-pop-up -->
<!-- nav -->
<jsp:include page="pageTop.jsp"></jsp:include>
<!-- //nav -->
<jsp:include page="icons.jsp"></jsp:include>
<!-- faq-banner -->
	<div class="faq">
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
					  <li><a href="IndexServlet?flag=index">主页</a></li>
					  <li class="active">评论</li>
					</ol>
				</div>
				<div class="agileinfo-news-top-grids">
					<div class="col-md-8 wthree-top-news-left">
						<div class="wthree-news-left">
							<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
								<!-- <ul id="myTab" class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#home1" id="home1-tab" role="tab" data-toggle="tab" aria-controls="home1" aria-expanded="true">最新消息</a></li>
									<li role="presentation"><a href="#w3bsd" role="tab" id="w3bsd-tab" data-toggle="tab" aria-controls="w3bsd">电影评论</a></li>
								</ul> -->
								<div id="myTabContent" class="tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="home1" aria-labelledby="home1-tab">
										<div class="wthree-news-top-left">
										
											<c:forEach items="${requestScope.listPreview }" var="itm" begin="0" end="1">
												<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="${itm.pic}" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">${itm.previewName }.</a></h5>
													<p>${itm.comment }.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> ${itm.showTime }</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												
												
												<div class="clearfix"> </div>
											</div>
											</c:forEach>
											<div class="clearfix"> </div>
										</div>
										<div class="wthree-news-top-left">
											
											<c:forEach items="${requestScope.listPreview }" var="itm" begin="2" end="3">
												<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="${itm.pic}" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">${itm.previewName }.</a></h5>
													<p>${itm.comment }.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> ${itm.showTime }</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												<div class="clearfix"> </div>
											</div>
											</c:forEach>
											
											<div class="clearfix"> </div>
										</div>
										<div class="wthree-news-top-left">
											
											<c:forEach items="${requestScope.listPreview }" var="itm" begin="4" end="5">
												<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="${itm.pic}" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">${itm.previewName }.</a></h5>
													<p>${itm.comment }.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> ${itm.showTime }</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												<div class="clearfix"> </div>
											</div>
											</c:forEach>
											
											<div class="clearfix"> </div>
										</div>
										<div class="wthree-news-top-left">
											
											
											<c:forEach items="${requestScope.listPreview }" var="itm" begin="6" end="7">
												<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="${itm.pic}" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">${itm.previewName }.</a></h5>
													<p>${itm.comment }.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> ${itm.showTime }</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												<div class="clearfix"> </div>
											</div>
											</c:forEach>
											
											
											<div class="clearfix"> </div>
										</div>
										<div class="wthree-news-top-left">
											
											<c:forEach items="${requestScope.listPreview }" var="itm" begin="8" end="9">
												<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="${itm.pic}" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">${itm.previewName }.</a></h5>
													<p>${itm.comment }.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> ${itm.showTime }</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												<div class="clearfix"> </div>
											</div>
											</c:forEach>
											
											<div class="clearfix"> </div>
										</div>
										
										<div class="wthree-news-top-left">
											
											<c:forEach items="${requestScope.listPreview }" var="itm" begin="10" end="11">
												<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="${itm.pic}" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">${itm.previewName }.</a></h5>
													<p>${itm.comment }.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> ${itm.showTime }</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												<div class="clearfix"> </div>
											</div>
											</c:forEach>
											
											<div class="clearfix"> </div>
										</div>
									</div>
									
									
									<%-- <div role="tabpanel" class="tab-pane fade" id="w3bsd" aria-labelledby="w3bsd-tab">
										
										<c:forEach items="${requestScope.listFilmReview1 }" begin="0" end="5">
											
											<div class="wthree-news-top-left">
											<div class="col-md-6 w3-agileits-news-left">
												<div class="col-sm-5 wthree-news-img">
													<a href="news-single.html"><img src="images/m17.jpg" alt="影视海报" /></a>
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
													<a href="news-single.html"><img src="images/m18.jpg" alt="影视海报" /></a>
												</div>
												<div class="col-sm-7 wthree-news-info">
													<h5><a href="news-single.html">电影名.</a></h5>
													<p>电影类容.</p>
													<ul>
														<li><i class="fa fa-clock-o" aria-hidden="true"></i> 24/09/2016</li>
														<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
													</ul>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="clearfix"> </div>
										</div>
										
										</c:forEach>
										
									</div> --%>
									
								</div>
							</div>
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
											
											<c:forEach items="${requestScope.listFilmReview1 }" var="itm" >
												<div class="date-text">
												<a href="news-single.html">${itm.commentDate }</a>
												<p>${itm.commentInfo }.</p>
											</div>
											</c:forEach>
											
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
									
									<c:forEach items="${requestScope.listFilmReview2 }" var="itm" >
										<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">${itm.commentInfo }</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i>${itm.commentDate }</a></li>
												<li><a href="#"><i class="fa fa-user"></i> ${itm.userName }</a></li>
											</ul>
										</div>
										</div>
									</c:forEach>
									
								</div>
							</div>
						</div>
						<!-- //news-right-bottom -->
					</div>
					<div class="clearfix"> </div>
				</div>
				
				<div class="pagination pagination-sm">
				 <div class="pagelist">
	  				<ul>
	        		<a class="btn" href="AdvanceNoteServlet?flag=preview&currentPage=1">首页</a>
					<c:if test="${requestScope.currentPage==1 }">
						<span class="btn">${requestScope.currentPage}</span>
					</c:if>
					
					<c:if test="${requestScope.currentPage>1 }">
						<a class="btn" href="AdvanceNoteServlet?flag=preview&currentPage=${requestScope.currentPage-1 }">上一页</a> 
		        		<a class="btn" href="AdvanceNoteServlet?flag=preview&currentPage=${requestScope.currentPage-1 }">${requestScope.currentPage-1 }</a>
					</c:if>
		
					<c:if test="${ 1<requestScope.currentPage  && requestScope.currentPage<requestScope.totalPage }">
					 	<span class="btn" class="current">${requestScope.currentPage}</span>
					</c:if> 
					
					
					<c:if test="${requestScope.currentPage<requestScope.totalPage  }">
						<a class="btn" href="AdvanceNoteServlet?flag=preview&currentPage=${requestScope.currentPage+1 }">${requestScope.currentPage+1 }</a>
		        		<a class="btn" href="AdvanceNoteServlet?flag=preview&currentPage=${requestScope.currentPage+1 }">下一页</a>
					</c:if>
					
					<c:if test="${requestScope.currentPage==requestScope.totalPage && requestScope.currentPage!=1  }">
						<span class="btn" class="current">${requestScope.currentPage}</span>
					</c:if>
		        	<a class="btn" href="AdvanceNoteServlet?flag=preview&currentPage=${requestScope.totalPage}">尾页 </a>
	        		</ul>
	        	</div>
			   </div>
				
			</div>
			
	</div>
<!-- //faq-banner -->
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