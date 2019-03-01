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
		
		<div id="wrapper">
			
		<div class="wrapp-holder">
			<div class="wrap-frame">
				<%@ include file="top5.jsp" %>
												
				<!-- BEGIN CONTENT WRAPPER -->
				<div id="content-wrapper" class="content-wrapper">
					
					<div class="container">
						
						<div id="self-introduction">
							<div class="touxiang">
								<img src=""/>
								<ul>
									<li style="font-size:20px;"><i>用户名</i></li>
									<li style="font-size:15px;">学院  &nbsp;&nbsp;|&nbsp;&nbsp;专业</li>
									<li >学生(身份)</li>									
								</ul>
							</div>
							<div class="information">
								<ul>
									<li>
										<img src="images/jieyue.png">
										<span style="margin-top:5px;font-size:15px;">借阅量</span>
									</li>
									<li>
										<img src="images/zan.png">
										<span style="margin-top:5px;font-size:15px;">获赞量</span>
									</li>
									<li>
										<img src="images/remark.png">
										<span style="margin-top:5px;font-size:15px;">书评量</span>
									</li>
								</ul>
							</div>
						</div>
				
						<div id="main_content">
							<div class="content-menu">
								<ul>
									<li id="menu1" onclick="setTab('content',1,4,1)" class="hover">我的借阅</li>									
									<li id="menu2" onclick="setTab('content',2,4,1)" >我的收藏</li>
									<li id="menu3" onclick="setTab('content',3,4,1)" >我的书评</li>
									<li id="menu4" onclick="setTab('content',4,4,1)" >个人资料</li>																
								</ul>
							</div>
					
							<div class="several-content" class="hover">
								<div id="content1"> 																		
									<div class="borrow">
										<div class="detail">
											<img class="book-img" src="">
											<div class="info">
												<ul>
													<li>
														<i style="font-size:20px;">书名</i> 
														<span style="margin-left:20px;">作者:</span>
													</li>											
													<li>馆藏地点:</li>
													<li>
														<span >借出日期:</span>
														<span style="margin-left:30px;">归还日期:</span>
													</li>										
													<li>价格:</li>												
												</ul>
												<form style="float:right;margin-top:-50px;margin-right:80px;">
													<input type="submit" value="续借">
												</form>												
											</div>
										</div>
									</div>
								</div>
								
								<div id="content2" style="display:none">
									<div class="collect">
										<div class="detail">
											<img class="book-img" src="">
											<div class="info">
												<ul>
													<li>
														<i style="font-size:20px;">书名</i> 
														<span style="margin-left:20px;">作者:</span>
													</li>											
													<li>馆藏地点:</li>
													<li>
														收藏时间：
													</li>										
																									
												</ul>																						
											</div>
										</div>
									</div>
								</div>
								
								<div id="content3" style="display:none">
									<div class="remark" >
										<div class="remark-info">
											<div class="img-info">
												<img class="book-img" src="">
												<p style="margin-left:20px;font-size:20px;">书名</p>
												<p style="margin-left:20px;">作者</p>
											</div>
											<div class="self-remark">
												<p>评论的内容</p>
											</div>
										</div>
									</div>
								</div>								
								
								<div id="content4" style="display:none">
									<div class="self" >									
										<table>
											<tr>
												<td colspan="2" align="center" style="font-size:25px;font-style:italic;">我的基本资料</td>
											</tr>
											<tr>
												<td align="right">自我介绍&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td align="left">
													<textarea name="self_intro" style="width:300px;height:150px;margin-bottom:5px;border:1px #f3f3f3 solid">												
													</textarea>
												</td>
											</tr>										
											<tr>
												<td align="right">学院&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td align="left">
													<select name="" style="height:25px;width:100px;margin-top:10px;">
														<option value="" selected="selected">学院一</option>
														<option value="" >学院二</option>
														<option value="" >学院三</option>
														<option value="" >学院四</option>
														<option value="" >学院五</option>
													</select>
												</td>
											</tr>
											<tr>
												<td align="right">专业&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td align="left">
													<select name="" style="height:25px;width:100px;margin-top:10px;">
														<option value="" selected="selected">专业一</option>
														<option value="" >专业二</option>
														<option value="" >专业三</option>
														<option value="" >专业四</option>
														<option value="" >专业五</option>
													</select>													
												</td>
											</tr>
											<tr>
												<td colspan="2" align="right">
												<input type="submit" value="更新" style="height:35px;width:60px;margin-top:10px;font-size:18px;">
												</td>
											</tr>
										</table>
									</div>																		
									<div class="checkbox">
										<p style="font-size:25px;font-style:italic">感兴趣的内容</p>
										<form action="" method="post">
											<div class="checkbox-item">
										    <input type="checkbox" id="checkbox-1" checked="checked" name="" value="">
										    <label for="checkbox-1"></label>标签一
											</div>
											
											<div class="checkbox-item">
										    <input type="checkbox" id="checkbox-2" name="" value="">
										    <label for="checkbox-2"></label>标签二
											</div>
											
											<div class="checkbox-item">
										    <input type="checkbox" id="checkbox-3" name="" value="">
										    <label for="checkbox-3"></label>标签三
											</div>
											
											<div class="checkbox-item">
											<input type="checkbox" id="checkbox-4" name="" value="">
										    <label for="checkbox-4"></label>标签四
											</div>
											
											<div class="checkbox-item" style="float:right;">
											<input type="submit" value="保存" style="height:35px;width:60px;margin-top:10px;font-size:18px;">
											</div>
										</form>
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