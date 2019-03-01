<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
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
				<!-- BEGIN SLIDER -->
				<div id="slider" class="slider loading">
					<div class="container clearfix">
						<div class="grid_12">
							
							<div class="bannercontainer">
								<div class="banner">
									<ul>
										<!-- THE FIRST SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
											<!-- THE MAIN IMAGE IN THE SLIDE -->
											<img src="images/samples/slide3.jpg">
		
											<!-- THE CAPTIONS OF THE FIRST SLIDE -->
											<div class="tp-caption sfl original"
												data-x="100"
												data-y="146"
												data-speed="300"
												data-start="600"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												Create Your Own
											</div>
											
											<div class="tp-caption sfr original_high"
												data-x="142"
												data-y="178"
												data-speed="300"
												data-start="800"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												Personality!
											</div>
											
										</li>
										
										
										<!-- THE SECOND SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
										
											<!-- THE MAIN IMAGE IN THE SLIDE -->
											<img src="images/slide-light.jpg">
		
											<!-- THE CAPTIONS OF THE SECOND SLIDE -->
											<div class="tp-caption sfl original"
												data-x="100"
												data-y="146"
												data-speed="300"
												data-start="600"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												Our team is
											</div>
											
											<div class="tp-caption sfr original_high"
												data-x="142"
												data-y="178"
												data-speed="300"
												data-start="800"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												Professional
											</div>

										<div class="caption randomrotate"
											 data-x="680"
											 data-y="35"
											 data-speed="600"
											 data-start="1200"
											 data-easing="easeOutExpo"  ><img src="images/samples/img140x140.jpg" alt="Image 3"></div>

										<div class="caption randomrotate"
											 data-x="530"
											 data-y="35"
											 data-speed="600"
											 data-start="1300"
											 data-easing="easeOutExpo"  ><img src="images/samples/img140x140.jpg" alt="Image 4"></div>

										<div class="caption randomrotate"
											 data-x="680"
											 data-y="185"
											 data-speed="300"
											 data-start="1400"
											 data-easing="easeOutExpo"  ><img src="images/samples/img140x140.jpg" alt="Image 5"></div>

										<div class="caption randomrotate"
											 data-x="530"
											 data-y="185"
											 data-speed="600"
											 data-start="1500"
											 data-easing="easeOutExpo"  ><img src="images/samples/img140x140.jpg" alt="Image 6"></div>
										
											
										</li>
										
										<!-- THE THIRD SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
											<!-- THE MAIN IMAGE IN THE SLIDE -->
											<img src="images/samples/slide2.jpg">
		
											<!-- THE CAPTIONS OF THE THIRD SLIDE -->
											<div class="tp-caption sft original"
												data-x="100"
												data-y="146"
												data-speed="300"
												data-start="600"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												The Best Solution
											</div>
											
											<div class="tp-caption sfb original_high"
												data-x="142"
												data-y="178"
												data-speed="300"
												data-start="800"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												You can Find!
											</div>
											
										</li>
										
										
										<!-- THE FOURTH SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
										
												<!-- THE MAIN IMAGE IN THE SLIDE -->
												<img src="images/slide-black.jpg">

												<div class="caption fade fullscreenvideo" data-autoplay="false" data-x="0" data-y="0" data-speed="500" data-start="10" data-easing="easeOutBack">111</div>

										</li>
										
										<!-- THE FIFTH SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
											<!-- THE MAIN IMAGE IN THE SLIDE -->
											<img src="images/samples/slide1.jpg">
		
											<!-- THE CAPTIONS OF THE FIFTH SLIDE -->
											<div class="tp-caption sft original"
												data-x="100"
												data-y="146"
												data-speed="300"
												data-start="600"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												We always think
											</div>
											
											<div class="tp-caption sfb original_high"
												data-x="142"
												data-y="178"
												data-speed="300"
												data-start="800"
												data-captionhidden="on"
												data-endeasing="easeOutExpo"
												data-easing="easeOutExpo">
												About Customers
											</div>
											
										</li>
										
									</ul>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<!-- END SLIDER -->
				
				<!-- BEGIN CONTENT WRAPPER -->
				<div id="content-wrapper" class="content-wrapper">
					
					<div class="container">
						
						<div class="clearfix">
							<div class="grid_12">
								<!-- BEGIN TABBED CONTENT -->
								<div class="tabs tabs__alt">
									<div class="tab-menu clearfix">
										<ul>
											<li><a href="#tab1">新书速递</a></li>
											<li><a href="#tab2">热门图书</a></li>
											<li><a href="#tab3">老师荐书</a></li>
										</ul>
									</div>
									<div class="tab-wrapper">
										<div id="tab1" class="tab">
											<!-- Latest Posts Loop -->
											<ul class="post-loop unstyled clearfix">
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">News</a> / <a href="#">Design</a></span>
														<h4><a href="#">Vivamus  ullamcorper,  nunc sed  imperdiet pretium</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">Illustration</a></span>
														<h4><a href="#">Pellentesque tristique lacinia adipiscing</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">Graphic</a> / <a href="#">Design</a></span>
														<h4><a href="#">Nulla vitae dui vel dolor laoreet</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">News</a> / <a href="#">Logo</a></span>
														<h4><a href="#">Suspendisse odio est, lacinia nec adipiscing</a></h4>
													</div>
												</li>
											</ul>
											<!-- /Latest Posts Loop -->
										</div>
										<div id="tab2" class="tab">
											<!-- Popular Posts Loop -->
											<ul class="post-loop unstyled clearfix">
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">Illustration</a></span>
														<h4><a href="#">Pellentesque tristique lacinia adipiscing</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">News</a> / <a href="#">Design</a></span>
														<h4><a href="#">Vivamus  ullamcorper,  nunc sed  imperdiet pretium</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">News</a> / <a href="#">Logo</a></span>
														<h4><a href="#">Suspendisse odio est, lacinia nec adipiscing</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">Graphic</a> / <a href="#">Design</a></span>
														<h4><a href="#">Nulla vitae dui vel dolor laoreet</a></h4>
													</div>
												</li>
												
											</ul>
											<!-- /Popular Posts Loop -->
										</div>
										<div id="tab3" class="tab">
											<!-- Featured Posts Loop -->
											<ul class="post-loop unstyled clearfix">
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">News</a> / <a href="#">Logo</a></span>
														<h4><a href="#">Suspendisse odio est, lacinia nec adipiscing</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">News</a> / <a href="#">Design</a></span>
														<h4><a href="#">Vivamus  ullamcorper,  nunc sed  imperdiet pretium</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">Graphic</a> / <a href="#">Design</a></span>
														<h4><a href="#">Nulla vitae dui vel dolor laoreet</a></h4>
													</div>
												</li>
												<li>
													<img src="images/samples/img220x210.jpg" alt="" class="post-img" width="220" height="210">
													<div class="post-caption">
														<span class="post-cats"><a href="#">Illustration</a></span>
														<h4><a href="#">Pellentesque tristique lacinia adipiscing</a></h4>
													</div>
												</li>
											</ul>
											<!-- /Featured Posts Loop -->
										</div>
									</div>
								</div>
								<!-- END TABBED CONTENT -->
							</div>
						</div>
						
						<div class="hr hr-dashed">
						</div>
						
						<div class="clearfix">
							<!-- BEGIN CONTENT -->
							<section id="content" class="grid_8">
								<h2>热门书评</h2>
								
								<div class="latest-posts-holder">
									<article class="post clearfix">
										<figure class="featured-thumb">
											<a href="#"><img src="images/samples/img220x156.jpg" alt=""></a>
										</figure>
										<div class="post-body">
											<header class="post-header">
												<h3><a href="#">Should you ever skip giving a tip?</a></h3>
												<p class="post-meta">
													<span class="post-meta-cats"><i class="icon-tag"></i><a href="#">News</a> / <a href="#">Design</a></span>
													<span class="post-meta-author"><a href="#"><i class="icon-user"></i>Dan Fisher</a></span>
													<span class="post-meta-comments"><a href="#"><i class="icon-comment"></i>16</a></span>
												</p>
											</header>
											<div class="post-excerpt">
												<p>Quisque sed metus at justo vestibulum congue at et arcu. Maecen pellentesque lobortis ante. Vestibulum quam cursus eget augue purus, ac dictum ante.</p>
												<a href="#" class="btn">Read More</a>
											</div>
										</div>
									</article>
									<article class="post clearfix">
										<figure class="featured-thumb">
											<a href="#"><img src="images/samples/img220x156.jpg" alt=""></a>
										</figure>
										<div class="post-body">
											<header class="post-header">
												<h3><a href="#">Bulgaria claims to find Europe's 'oldest town'</a></h3>
												<p class="post-meta">
													<span class="post-meta-cats"><i class="icon-tag"></i><a href="#">News</a> / <a href="#">Design</a></span>
													<span class="post-meta-author"><a href="#"><i class="icon-user"></i>Dan Fisher</a></span>
													<span class="post-meta-comments"><a href="#"><i class="icon-comment"></i>16</a></span>
												</p>
											</header>
											<div class="post-excerpt">
												<p>Quisque sed metus at justo vestibulum congue at et arcu. Maecen pellentesque lobortis ante. Vestibulum quam cursus eget augue purus, ac dictum ante.</p>
												<a href="#" class="btn">Read More</a>
											</div>
										</div>
									</article>
									<article class="post clearfix">
										<figure class="featured-thumb">
											<a href="#"><img src="images/samples/img220x156.jpg" alt=""></a>
										</figure>
										<div class="post-body">
											<header class="post-header">
												<h3><a href="#">Where are all the space shuttles now?</a></h3>
												<p class="post-meta">
													<span class="post-meta-cats"><i class="icon-tag"></i><a href="#">News</a> / <a href="#">Design</a></span>
													<span class="post-meta-author"><a href="#"><i class="icon-user"></i>Dan Fisher</a></span>
													<span class="post-meta-comments"><a href="#"><i class="icon-comment"></i>16</a></span>
												</p>
											</header>
											<div class="post-excerpt">
												<p>Quisque sed metus at justo vestibulum congue at et arcu. Maecen pellentesque lobortis ante. Vestibulum quam cursus eget augue purus, ac dictum ante.</p>
												<a href="#" class="btn">Read More</a>
											</div>
										</div>
									</article>
									<article class="post clearfix">
										<figure class="featured-thumb">
											<a href="#"><img src="images/samples/img220x156.jpg" alt=""></a>
										</figure>
										<div class="post-body">
											<header class="post-header">
												<h3><a href="#">Should you ever skip giving a tip?</a></h3>
												<p class="post-meta">
													<span class="post-meta-cats"><i class="icon-tag"></i><a href="#">News</a> / <a href="#">Design</a></span>
													<span class="post-meta-author"><a href="#"><i class="icon-user"></i>Dan Fisher</a></span>
													<span class="post-meta-comments"><a href="#"><i class="icon-comment"></i>16</a></span>
												</p>
											</header>
											<div class="post-excerpt">
												<p>Quisque sed metus at justo vestibulum congue at et arcu. Maecen pellentesque lobortis ante. Vestibulum quam cursus eget augue purus, ac dictum ante.</p>
												<a href="#" class="btn">Read More</a>
											</div>
										</div>
									</article>
									<div><a href="#">更多</a></div>
								</div>								
									
							</section>
							<!-- END CONTENT -->
							
							<!-- BEGIN SIDEBAR -->
							<aside id="sidebar" class="sidebar grid_4">
								<!-- Popular Posts Widget -->
								<div class="popular-posts widget widget__sidebar">
									<h3 class="widget-title">名家故事</h3>
									<div class="widget-content">
										<ul class="posts-list unstyled clearfix">
											<li>
												<figure class="featured-thumb">
													<a href="#"><img src="images/samples/img70x70.jpg" alt="" width="70" height="70"></a>
												</figure>
												<h4><a href="#">Bulgaria claims to find Europe's 'oldest town'</a></h4>
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
											<li>
												<figure class="featured-thumb">
													<a href="#"><img src="images/samples/img70x70.jpg" alt="" width="70" height="70"></a>
												</figure>
												<h4><a href="#">New 'Star Wars' hints</a></h4>
												<p class="post-meta">Nov 3rd 2012 by <a href="#">Dan Fisher</a></p>
											</li>
										</ul>
									</div>
								</div>
								<!-- /Popular Posts Widget -->
								
								<!-- Ad Spots Widget -->
								<div class="ad-spots widget widget__sidebar">
									<h3 class="widget-title">热门标签</h3>
									<div class="widget-content">
										<ul class="ad-holder unstyled clearfix">
											<li><a href="#"><img src="images/samples/banner125x125.jpg" alt="" width="250" height="125"></a></li>
											<!--
											<li><a href="#"><img src="images/samples/banner125x125.jpg" alt="" width="125" height="125"></a></li>
											-->
										</ul>
									</div>
								</div>
								<!-- /Ad Spots Widget -->
							</aside>
							<!-- END SIDEBAR -->
						</div>											
						
						<div id="middle_content">
							
							<div id="notice">
								<h2 style="padding-right:30px;">
									通知公告						
								</h2>
								<ul class="notice_ul">
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<span class="notice_time">2018-04-01</span>
										<span class="notice_content"><a href="#">通知一</a></span>
									</li>
									<li>
										<a href="#"><i style="float:right">更多>></i></a>
									</li>
								</ul>
							</div>
							<div id="resource">
								<h2>资源导航</h2>
								<ul class="resource_ul">
									<li><a href="#">数据库导航</a></li>
									<li><a href="#"></a></li>
									<li><a href="#"></a></li>
									<li><a href="#"></a></li>
								</ul>
							</div>
						</div>
						
					</div>
					
				</div>
				<!-- END CONTENT WRAPPER -->
			</div>
		</div>
		
		<!-- BEGIN FOOTER -->
		<footer id="footer" class="footer">
			
			<div class="footer-holder">
				<div class="footer-frame">
					<!-- Footer Widgets -->
					<div class="footer-widgets">
						<div class="container clearfix">
							
							<div class="grid_5">
								<!-- Text Widget -->
								<div class="text-widget widget widget__footer">
									<h3 class="widget-title">About This Theme</h3>
									<div class="widget-content">
										<h5>Donec tincidunt, mi non ultrices varius, diam felis</h5>
										<p>Elementum eros, at congue nisl massa ut metus. Vivamus accumsan malesuada orci, vel euismod velit aliquet id.</p>
										
										<p>Sed aliquet tempus pellentesque. Curabitur varius suscipit orci, quis cursus quam varius vel.Vivamus nec tortor tellus.</p>
									</div>
								</div>
								<!-- /Text Widget -->
							</div>
							<div class="grid_3">
								<!-- Twitter Widget -->
								<div class="twitter-widget widget widget__footer">
									<h3 class="widget-title">Twitter</h3>
									<div class="widget-content">
										111
									</div>
								</div>
								<!-- /Twitter Widget -->
							</div>
							<div class="grid_4">
								<!-- Flickr Widget -->
								<div class="flickr-widget widget widget__footer">
									<h3 class="widget-title">Flickr Feed</h3>
									<div class="widget-content">
										<!-- Flickr images will appear here -->
										11
									</div>
								</div>
								<!-- /Flickr Widget -->
							</div>
							
						</div>
					</div>
					<!-- /Footer Widgets -->
					
					<!-- Copyright -->
					<div class="copyright">
						<div class="container clearfix">
							<div class="grid_12">
								<div class="clearfix">
									<div class="copyright-primary">
										&copy;  2013 Emotion <span class="separator">|</span> Responsive HTML Template
									</div>
									<div class="copyright-secondary">
										More Templates <a href="" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
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