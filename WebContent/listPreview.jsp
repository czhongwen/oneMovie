<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
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
<!-- tables -->
<link rel="stylesheet" type="text/css" href="list-css/table-style.css" />
<link rel="stylesheet" type="text/css" href="list-css/basictable.css" />
<script type="text/javascript" src="list-js/jquery.basictable.min.js"></script>
 <script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });
	   $('#table-breakpoint1').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint2').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint3').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint4').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint5').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint6').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint7').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint8').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint9').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint10').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint11').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint12').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint13').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint14').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint15').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint16').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint17').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint18').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint19').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint20').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint21').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint22').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint23').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint24').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint25').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint26').basictable({
        breakpoint: 768
      });
    });http://localhost:8080/OneMovies/list.html
  </script>
<!-- //tables -->
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
							<li class="active"><a href="index.html">首页</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">分类 <b class="caret"></b></a>
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
<jsp:include page="icons.jsp"></jsp:include>
<!-- faq-banner -->
	<div class="faq">
		<h4 class="latest-text w3_faq_latest_text w3_latest_text">电影列表</h4>
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
					  <li><a href="index.html">首页</a></li>
					  <li  class="active"><a href="VideoViewServlet?flag=moive"><span>电影列表</span></a></li>
					  <li><a href="index.html">电视剧列表</a></li>
					</ol>
				</div>
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="VideoViewServlet?flag=moive" id="home-tab" role="tab"  aria-expanded="true">0 - 9</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=a" role="tab" id="a-tab" aria-controls="a">A</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=b" role="tab" id="b-tab" aria-controls="b">B</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=c" role="tab" id="c-tab"  aria-controls="c">C</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=d" role="tab" id="d-tab"  aria-controls="d">D</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=e" role="tab" id="e-tab"  aria-controls="e">E</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=f" role="tab" id="f-tab"  aria-controls="f">F</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=g" role="tab" id="g-tab"  aria-controls="g">G</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=h" role="tab" id="h-tab"  aria-controls="h">H</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=i" role="tab" id="i-tab"  aria-controls="i">I</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=j" role="tab" id="j-tab"  aria-controls="j">J</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=k" role="tab" id="k-tab"  aria-controls="k">K</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=l" role="tab" id="l-tab"  aria-controls="l">L</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=m" role="tab" id="m-tab"  aria-controls="m">M</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=n" role="tab" id="n-tab"  aria-controls="n">N</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=o" role="tab" id="o-tab"  aria-controls="o">O</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=p" role="tab" id="p-tab"  aria-controls="p">P</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=q" role="tab" id="q-tab"  aria-controls="q">Q</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=r" role="tab" id="r-tab"  aria-controls="r">R</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=s" role="tab" id="s-tab"  aria-controls="s">S</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=t" role="tab" id="t-tab"  aria-controls="t">T</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=u" role="tab" id="u-tab"  aria-controls="u">U</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=v" role="tab" id="v-tab"  aria-controls="v">V</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=w" role="tab" id="w-tab"  aria-controls="w">W</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=x" role="tab" id="x-tab"  aria-controls="x">X</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=y" role="tab" id="y-tab"  aria-controls="y">Y</a></li>
							<li role="presentation"><a href="VideoViewServlet?flag=moive&key=z" role="tab" id="z-tab"  aria-controls="z">Z</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>搜索结果 : <span>${requestScope.page.totalCount }</span></h4>
									</div>
									<table id="table-breakpoint">
										<thead>
										  <tr>
											<th>编号</th>
											<th>电影名</th>
											<th>年份</th>
											<th>状态</th>
											<th>国家</th>
											<th>类型</th>
											<th>评分</th>
										  </tr>
										</thead>
										<tbody>
										  <c:forEach items="${requestScope.list }" var="itm" varStatus="va">
										  	<tr>
											<td>${(requestScope.page.currentPage-1)*requestScope.page.pageSize+va.index+1 }</td>
											<td class="w3-list-img"><a href="single.html"><img src="${itm.moivePic }" alt="电影图片" /> <span>${itm.moiveName }</span></a></td>
											<td>${itm.showTime}</td>
											<td>HD</td>
											<td class="w3-list-info"><a href="genres.html">${itm.countryName}</a></td>
											<td class="w3-list-info"><a href="genres.html">${itm.typeName }</a></td>
											<td>${itm.moiveScore/100 }</td>
										  </tr>
										  </c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="blog-pagenat-wthree">
							<ul>
							
							<li><a class="btn"  href="VideoViewServlet?${requestScope.url }&currentPage=1">首页</a></li>
							
							<c:if test="${requestScope.page.currentPage==1}">
								<li><a class="btn " style="background: #C1FFC1" >${requestScope.page.currentPage}</a></li>
							</c:if>
							<c:if test="${requestScope.page.currentPage>1 && requestScope.page.totalPage!=1}">
								<li><a class="btn"  href="VideoViewServlet?${requestScope.url }&currentPage=${requestScope.page.currentPage-1}">上一页</a></li>
								<li><a class="btn"  href="VideoViewServlet?${requestScope.url }&currentPage=${requestScope.page.currentPage-1}">${requestScope.page.currentPage-1}</a></li>
							</c:if>
			        		
			        		<c:if test="${1<requestScope.page.currentPage && requestScope.page.currentPage<requestScope.page.totalPage}">
			        			<li><a class="btn " style="background: #C1FFC1">${requestScope.page.currentPage}</a></li>
			        		</c:if>
			        		
			        		<c:if test="${requestScope.page.currentPage<requestScope.page.totalPage}">
			        			<li><a class="btn"  href="VideoViewServlet?${requestScope.url }&currentPage=${requestScope.page.currentPage+1}">${requestScope.page.currentPage+1}</a></li>
			        			<li><a class="btn"  href="VideoViewServlet?${requestScope.url }&currentPage=${requestScope.page.currentPage+1}">下一页</a></li>
			        		</c:if>
			        		<c:if test="${requestScope.page.currentPage==requestScope.page.totalPage && requestScope.page.currentPage!=1}">
								<li><a class="btn "style="background: #C1FFC1" >${requestScope.page.currentPage}</a></li>
							</c:if>
			        		
			        		<li><a class="btn"  href="VideoViewServlet?${requestScope.url }&currentPage=${requestScope.page.totalPage }">尾页</a></li>
							</ul>
						</div>
						</div>
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