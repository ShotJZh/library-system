<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

	<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<title>懂你图书馆</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	
	<!-- Mobile Specific Metas
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	
	<!-- CSS
	================================================== -->
	<!-- Normalize default styles -->
	<link rel="stylesheet" href="css/normalize.css" media="screen" />
	<!-- Skeleton grid system -->
	<link rel="stylesheet" href="css/skeleton.css" media="screen" />
	<!-- Base Template Styles-->
	<link rel="stylesheet" href="css/base.css" media="screen" />
	<!-- Template Styles-->
	<link rel="stylesheet" href="css/style.css" media="screen" />
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css" media="screen" />
	<!-- Prettyphoto -->
	<link rel="stylesheet" href="css/prettyPhoto.css" media="screen" />
	<!-- FontAwesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css" media="screen" />
	<!-- REVOLUTION BANNER CSS SETTINGS -->
	<link rel="stylesheet" href="css/settings.css" media="screen" />
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css" media="screen" />
	<!-- Layout and Media queries-->
	<link rel="stylesheet" href="css/media-queries.css" media="screen" />
	
	<!--[if lt IE 9]>
		<link rel="stylesheet" href="css/ie/ie8.css" media="screen" />
	<![endif]-->
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="images/apple-touch-icon-144x144.png">
	
	
</head>
<body>
	
	<!-- BEGIN WRAPPER -->
	<div id="wrapper">
			
		<div class="wrapp-holder">
			<div class="wrap-frame">
				<%@ include file="top.jsp" %>				
				
				<!-- BEGIN CONTENT WRAPPER -->
				<div id="content-wrapper" class="content-wrapper">
					<div class="container clearfix">
						<!-- Content -->
						<div id="content" class="grid_8">
							<div class="detail">
								<img class="book-img" src="">
								<div class="info" style="width:400px;">
									<ul>
										<li>书名	&nbsp;&nbsp; <small>作者</small></li>
										<li>出版社: <span style="float:right;margin-right:50px;">页数:</span></li>
										<li>ISBN: <span style="float:right;margin-right:50px;">索取号:</span></li>
										<li>馆藏地点:	<span style="float:right;margin-right:50px;">馆藏量:</span></li>
									</ul>
								</div>																
							</div>
							<h2>馆藏信息</h2>
							<div class="book-detail">
								<table style="width:100%;text-align:center;">
									<thead>
										<th width="20%">索书号</th>
										<th width="20%">馆藏状态</th>
										<th width="20%">流通状态</th>
										<th width="40%">馆藏地点</th>
									</thead>
									<tr>
										<td>索书号</td>
										<td>馆藏状态</td>
										<td>流通状态</td>
										<td>馆藏地点</td>
									</tr>
								</table>
							</div>
							<h2>内容简介</h2>
							<div class="book-detail">
								#####
							</div>
							<h2>作者简介</h2>
							<div class="book-detail">
								#####
							</div>
							<h2>作者的其他书籍</h2>
							<div class="showBook">
								<div class="book" style="overflow:hidden;">
									<img src="" class="book-img"/>
									<div class="book-content">
										<h3 style="font-size:18px;">书名</h3>
										<p>作者  著/出版社</p>
										<p>馆藏量</p>	
										<p>内容简介</p>								
										<div class="book-info" style="width:400px;"></div>														
									</div>
								</div>
								<div class="book" style="overflow:hidden;">
									<img src="" class="book-img"/>
									<div class="book-content">
										<h3 style="font-size:18px;">书名</h3>
										<p>作者  著/出版社</p>
										<p>馆藏量</p>	
										<p>内容简介</p>								
										<div class="book-info" style="width:400px;"></div>												
									</div>
								</div>
							</div>
							<h2>猜你喜欢</h2>
							<div class="showBook">
								<div class="bookList">
									<a href="#">
									<img src="" class="book-img">
									</a>
									<h3>书名 </h3>
									<h3>作者</h3>
								</div>
								<div class="bookList">
									<a href="#">
									<img src="" class="book-img">
									</a>
									<h3>书名 </h3>
									<h3>作者</h3>
								</div>
								<div class="bookList">
									<a href="#">
									<img src="" class="book-img">
									</a>
									<h3>书名 </h3>
									<h3>作者</h3>
								</div>
								<div class="bookList">
									<a href="#">
									<img src="" class="book-img">
									</a>
									<h3>书名 </h3>
									<h3>作者</h3>
								</div>
							</div>
						</div>
						<!-- /Content -->
						
						<!-- Sidebar -->
						<aside id="sidebar" class="sidebar grid_4">
							
							<!-- Search Widget -->
							<div class="search-widget widget widget__sidebar">
								<div class="widget-content">
									<form action="#" class="search-form clearfix">
										<input type="text" name="search-t-i" id="search-t-i" placeholder="Search..."><input type="submit" value="Search">
									</form>
								</div>
							</div>
							<!-- /Search Widget -->
							
							<!-- 相关书评 -->
							<div class="popular-posts widget widget__sidebar">
								<h3 class="widget-title">相关书评</h3>
								<div class="widget-content">
									<ul class="posts-list unstyled clearfix">
										<li>
											<figure class="featured-thumb">
												<a href="#"><img src="images/samples/img70x70.jpg" alt="" width="70" height="70"></a>
											</figure>
											<h4><a href="#">书评名</a></h4>
											<p class="post-meta">Nov 3rd 2012 by <a href="#">Dan Fisher</a></p>
										</li>
										<li>
											<figure class="featured-thumb">
												<a href="#"><img src="images/samples/img70x70.jpg" alt="" width="70" height="70"></a>
											</figure>
											<h4><a href="#">Where are all the space shuttles now?</a></h4>
											<p class="post-meta">Nov 3rd 2012 by <a href="#">Dan Fisher</a></p>
										</li>
										<li>
											<figure class="featured-thumb">
												<a href="#"><img src="images/samples/img70x70.jpg" alt="" width="70" height="70"></a>
											</figure>
											<h4><a href="#">Should you ever skip giving a tip?</a></h4>
											<p class="post-meta">Nov 3rd 2012 by <a href="#">Dan Fisher</a></p>
										</li>
										<li>
											<figure class="featured-thumb">
												<a href="#"><img src="images/samples/img70x70.jpg" alt="" width="70" height="70"></a>
											</figure>
											<h4><a href="#">Bulgaria claims to find Europe's 'oldest town'</a></h4>
											<p class="post-meta">Nov 3rd 2012 by <a href="#">Dan Fisher</a></p>
										</li>										
									</ul>
								</div>
							</div>
							<!--  -->
														
						</aside>
						<!-- /Sidebar -->
					</div>
				</div>
				<!-- END CONTENT WRAPPER -->
			</div>
		</div>
		
		<!-- BEGIN FOOTER -->
		<footer id="footer" class="footer">
			
			<div class="footer-holder">
				<div class="footer-frame">					
					<!-- Copyright -->
					<div class="copyright">
						<div class="container clearfix">
							<div class="grid_12">
								<div class="clearfix">
									<div class="copyright-primary">
										&copy;  2013 Emotion <span class="separator">|</span> Responsive HTML Template
									</div>
									<div class="copyright-secondary">
										More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Copyright -->
				</div>
			</div>
			
		</footer>
		<!-- END FOOTER -->
		
	</div>
	<!-- END WRAPPER -->
	
	
	<!-- Javascript Files
	================================================== -->
	
	<!-- initialize jQuery Library -->
	<script src="js/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="js/jquery-migrate-1.1.1.min.js"></script>
	<!-- Modernizr -->
	<script src="js/modernizr.custom.17475.js"></script>
	<!-- easing plugin -->
	<script src="js/jquery.easing.min.js"></script>
	<!-- Prettyphoto -->
	<script src="js/jquery.prettyPhoto.js"></script>
	<!-- Superfish -->
	<script src="js/jquery.mobilemenu.js"></script>
	<!-- superfish -->
	<script src="js/jquery.superfish-1.5.0.js"></script>
	<!-- Twitter -->
	<script src="js/jquery.twitter.js"></script>
	<!-- Flickr -->
	<script src="js/jflickrfeed.js"></script>
	<!-- ElastiSlide Carousel -->
	<script src="js/jquery.elastislide.js"></script>
	<!-- jQuery REVOLUTION Slider  -->
	<script src="js/jquery.themepunch.plugins.min.js"></script>
	<script src="js/jquery.themepunch.revolution.min.js"></script>
	<!-- Isotope -->
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.imagesloaded.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider.js"></script>

	<!-- Custom -->
	<script src="js/custom.js"></script>
	
</body>
</html>