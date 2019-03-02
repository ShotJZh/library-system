<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
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
		
		<div id="wrapper">
			
		<div class="wrapp-holder">
			<div class="wrap-frame">
				<%@ include file="top.jsp" %>
												
				<!-- BEGIN CONTENT WRAPPER -->
				<div id="content-wrapper" class="content-wrapper">
					
					<div class="container clearfix">
					<div id="content">
						<h2 style="margin:20px;">有<strong style="color:#d47e74"><s:property value="list.size()"/></strong>本符合“<strong style="color:#d47e74"><s:property value="key"/></strong>”及其筛选结果</h2>
						<s:iterator value="list" >
						<div class="booklists">
							<div class="book" style="overflow:hidden;">
								
								<div class="book-content">
								<table >
										<tr>
											<td rowspan="6"><img src="<s:property value="b_pic"/>" class="book-img"/></td>
											<td colspan="2"><h3 style="font-size:18px;"><a href="ShowBook!execute?b_id=${b_id}"><s:property value="b_name"/></a></h3></td>
										</tr>
										<tr>
											<td><p style="font-size:14px;">作者: </p></td>
											<td><p style="font-size:13px;"><s:property value="b_author"/>著</p></td>
										</tr>
										<tr>
											<td><p style="font-size:14px;">出版社:</p></td>
											<td><p style="font-size:13px;"><s:property value="b_press"/></p></td>
										</tr>
										<tr>
											<td><p style="font-size:14px;">馆藏量:</p></td>
											<td><p style="font-size:13px;"><s:property value="b_in"/></p></td>
										</tr>
										<tr>
											<td><p style="font-size:14px;">借出数:</p></td>
											<td><p style="font-size:13px;"><s:property value="b_out"/></p></td>
										</tr>
										<tr>
											<td><p style="font-size:14px;">馆藏地点:</p></td>
											<td><p style="font-size:13px;"><s:property value="b_location"/></p></td>
										</tr>
									</table>
			
								</div>
							</div>
						</div>
						</s:iterator>
						<br>
						<h2>相似推荐</h2>							
							<div class="showBook">
							<s:iterator value="similarList" >
								<div class="bookList">
								<table>
									<tr><td>
									<a href="ShowBook!execute?b_id=${b_id}"><img src="<s:property value="b_pic"/>" class="book-img"></a>
									</td></tr>
									<tr><td>
									<h4>书名 :<s:property value="b_name"/></h3>
									</td></tr>
									<tr><td>
									<h4>作者:<s:property value="b_author"/></h3>
									</td></tr>
								</table>									
								</div>	
							</s:iterator>							
							</div>
						</div>
						</div>
						
				</div>
				</div>						
							</div>
					</div>																												
				</div>				
			</div>
		</div>
		</div>
					
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
	<script src="js/change.js"></script>
</body>
</html>