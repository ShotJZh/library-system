<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
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
								<img class="book-img" src="<s:property value="book.getB_pic()"/>">
								<div class="info" style="width:400px;">
									
									<table>
										<tr>
											<td>书名	：</td>
											<td><s:property value="book.getB_name()"/></td>
											<td>作者：</td>
											<td><s:property value="book.getB_author()"/></td>
										</tr>
										<tr>
											<td>出版社:</td>
											<td><s:property value="book.getB_press()"/></td>
											<td>页数:</td>
											<td></td>
										</tr>
										<tr>
											<td>ISBN:</td>
											<td></td>
											<td>索取号:</td>
											<td><s:property value="book.getB_id()"/></td>
										</tr>
										<tr>
											<td>馆藏地点:</td>
											<td><s:property value="book.getB_location()"/></td>
											<td>馆藏量:</td>
											<td><s:property value="book.getB_in()+book.getB_out()"/></td>
										</tr>
									</table>										

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
										<td><s:property value="b_id"/></td>
										<td><s:property value="book.getB_in()"/></td>
										<td><s:property value="book.getB_out()"/></td>
										<td><s:property value="book.getB_location()"/></td>
									</tr>
								</table>
							</div>
							<h2>内容简介</h2>
							<div class="book-detail">
								<s:property value="book.getB_description()"/>
							</div>
							<h2>作者简介</h2>
							<div class="book-detail">
								<s:property value="author.getA_name()"/><br>
								<s:property value="author.getA_profile()"/>
							</div>
							<h2>作者的馆藏书籍</h2>
							<div class="showBook">
							<s:iterator value="bookList" >
								<div class="book" style="overflow:hidden;">
									<img src="<s:property value="b_pic"/>" class="book-img"/>
									<div class="book-content">
										<h3 style="font-size:18px;"><s:property value="b_name"/></h3>
										<p>作者  <s:property value="b_author"/>著</p>
										<p>出版社:<s:property value="b_press"/></p>
										<p>馆藏量:<s:property value="b_in"/></p>	
										<p>内容简介</p>								
										<div class="book-info" style="width:400px;"></div>														
									</div>
								</div>
							</s:iterator>
							
							</div>						
						</div>
						<!-- /Content -->
						
						<!-- Sidebar -->
						<aside id="sidebar" class="sidebar grid_4">

							<!-- 相关书评 -->
							<div class="popular-posts widget widget__sidebar">
								<h3 class="widget-title">相关书评</h3>
								<div class="widget-content">
									<ul class="posts-list unstyled clearfix">
										<s:iterator value="comm" >
										<li>
											<header class="post-header">
												<p class="post-meta">
												<span class="post-meta-cats"><i class="icon-tag"></i><s:property value="date"/></span>
												<span class="post-meta-author"><i class="icon-user"></i><s:property value="user.getU_name()"/>/<s:property value="user.getF_id()"/></span>
												</p>
											</header>
											<div class="post-excerpt">
												<p><s:property value="comments"/></p>
											</div>											
										</li>	
										</s:iterator>																			
									</ul>
								</div>
								
								<div class="comments-form-wrapper clearfix">
									<%if(u!=null) { %>
									<h2>我来评论</h2>
									
									<form action="#" id="comment-form" class="comment-form">
										<div class="field">	
											<input name="" value="">										
											<textarea name="comment-message" id="comment-message" cols="20" rows="10"></textarea>
										</div>
										<input type="submit" value="评论">
									</form>
									<%}else{ %>
										<h2>请登录后发表评价</h2>
									<%} %>
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