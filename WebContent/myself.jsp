<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="entity.*,dao.*"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
		<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
		<!--[if (gte IE 9)|!(IE)]><!-->
		<html class="not-ie no-js" lang="en">
		<!--<![endif]-->

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

								<div class="container">

									<div id="self-introduction">
										<div class="touxiang">
											<ul>
												<li style="font-size:20px;">
													<i>
														<s:property value="#session.user.getU_id()" />
													</i>
												</li>
												<li style="font-size:15px;">
													<s:property value="#session.user.getF_id()" /> &nbsp;&nbsp;|&nbsp;&nbsp;
													<s:property value="#session.user.getM_id()" />
												</li>
												<%if(((User)session.getAttribute("user")).getU_type()==1) {%>
													<li>学生</li>
													<%} 
                                    else{%>
														<li>教师</li>
														<%}
                                    %>

											</ul>
										</div>
										<div class="information">
											<ul>
												<li>
													<img src="images/jieyue.png">
													<span style="margin-top:5px;font-size:15px;">借阅量</span>
												</li>
												<li>
													<img src="images/remark.png">
													<span style="margin-top:5px;font-size:15px;">书评量</span>
												</li>
											</ul>
											<br/>
											<br/>
											<br/>
											<ul>
												<li>
													<span style="margin-top:5px;font-size:15px;">
														<s:property value="Borrowlist.size()" />
													</span>
												</li>
												<li>
													<span style="margin-top:5px;font-size:15px;">
														<s:property value="Commentslist.size()" />
													</span>
												</li>
											</ul>



										</div>
									</div>

									<div id="main_content">
										<div class="content-menu">
											<ul>
												<li id="menu1" onclick="setTab('content',1,4,1)" class="hover">我的借阅</li>
												<li id="menu2" onclick="setTab('content',2,4,1)">我的收藏</li>
												<li id="menu3" onclick="setTab('content',3,4,1)">我的书评</li>
												<li id="menu4" onclick="setTab('content',4,4,1)">兴趣标签</li>
											</ul>
										</div>


										<div class="several-content" class="hover">
										<!-- 显示借阅的书 -->
											<div id="content1">
												<div class="borrow">
												<s:iterator value="Borrowlist">
													<div class="detail">
														
														
															<img class="book-img" src="<s:property value=" b_pic "/>">
															<div class="info">
																<ul>
																	<li>
																		<i style="font-size:20px;">
																			<s:property value="b_name" />
																		</i>
																		<span style="margin-left:20px;">
																			<s:property value="b_author" />
																		</span>
																	</li>
																	<br>
																	<li>馆藏地点:
																		<s:property value="b_location" />
																	</li>
																	<br/>
																	<li>
																		<span>借出日期:
																			<s:property value="borrowDate" />
																		</span>
																		<span style="margin-left:30px;">应归还日期:
																			<s:property value="latestReturnDate" />
																		</span>
																	</li>
																</ul>
																<form style="float:right;margin-top:-80px;margin-right:80px;" action="UserAction!renewBook" method="post">
																	<input type="submit" value="续借">
																	<input type="hidden" name="borrow_id" value="<s:property value=" borrow_id "/>">
																</form>       
															
															</div>
														
														
													</div>
													</s:iterator>
													<span style="margin-left:30px;">
                                                            <s:property value="strerr1" />
                                                        </span>
												</div>
											</div>



											<div id="content2" style="display:none">
												<div class="collect">
													<div class="detail">	
															 <s:iterator value="Collectlist">
																<article class="post clearfix">
																	<figure class="featured-thumb">
																		<a href="#">
																			<img src="<s:property value="b_pic"/>" alt="noimg"  style="width: 100px;height: 130px;">
																		</a>
																	</figure>
																	<div class="post-body">
																		<header class="post-header">
																			<h3>
																				<a href="#">
																					<s:property value="b_name" />——
																					<s:property value="b_author" />
																				</a>
																			</h3>
																			<p class="post-meta">
																				<span class="post-meta-cats">
																					<i class="icon-tag"></i>
																					<s:property value="b_location" />
																				</span>
																			</p>
																		</header>
																	</div>
																</article>																	
																</s:iterator>													
															<span style="margin-left:30px;">
                                                                <s:property value="strerr2" />
                                                            </span> 														 													
													</div>
												</div>
											</div>


											<div id="content3" style="display:none">
												<div class="remark">
													<div class="detail">
														<s:iterator value="Commentslist">
															<article class="post clearfix">
																<figure class="featured-thumb">
																	<a href="#">
																		<img src="<s:property value=" book.getB_pic() "/>" alt="" style="width: 100px;height: 130px;">
																	</a>
																</figure>
																<div class="post-body">
																	<header class="post-header">
																		<h3>
																			<a href="#">
																				<s:property value="book.getB_name()" />——
																				<s:property value="book.getB_author()" />
																			</a>
																		</h3>
																		<p class="post-meta">
																			<span class="post-meta-cats">
																				<i class="icon-tag"></i>
																				<s:property value="date" />
																			</span>

																		</p>
																	</header>
																	<div class="post-excerpt">
																		<p>
																			<s:property value="comments" />
																		</p>
																	</div>
																</div>
															</article>
														</s:iterator>
														<span style="margin-left:30px;">
															<s:property value="strerr3" />
														</span>
													</div>
												</div>
											</div>

											<div id="content4" style="display:none">
												<div class="self">
													<p style="font-size:25px;font-style:italic">感兴趣的话题</p>
													<br>
													<s:iterator value="lablelist">
														<h4>
															<s:property value="lable" />
														</h4>
													</s:iterator>
													<s:property value="strerr4" />
													<br>
													<div style="overflow:hidden;">
														<h3>删除标签</h3>
														<form action="UserAction!deleteLabel" method="post">
															<s:iterator value="labellist">
																<div class="checkbox-item">
																	<input type="checkbox" class="checkbox1" checked="checked" value="<s:property value=" label "/>">
																	<input id="joinLabel" name="delLabel" type="hidden" value="">
																	<label for="checkbox">
																		<s:property value="label" />
																	</label>
																</div>
															</s:iterator>

															<div style="clear:left;">
																<input type="submit" value="确认删除">
															</div>
														</form>
													</div>
													<div>
														<br/>
														<br/>
														<h3>添加标签：</h3>
														<br/>
														<form action="UserAction!addLabel" method="post">
															<input type="text" name="newLabel">
															<input type="submit" value="确认添加">
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
			<script>
				jQuery(":checkbox").on("change", function () {
					var delLabel = "";
					jQuery('.checkbox1').each(function (i, n) {
						if (!jQuery(n).attr('checked')) {
							delLabel += jQuery(n).attr('value') + "-";
						}
						jQuery("#joinLabel").val(delLabel);
					});
				});

			</script>
		</body>

		</html>