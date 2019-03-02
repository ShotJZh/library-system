<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.*,java.util.*,entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
<head>

	<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<title>know you图书馆</title>
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
	<%
	List<Book> newList = new  ArrayList<Book>();
	List<News> newsList = new  ArrayList<News>();
	List<Book> popularList = new  ArrayList<Book>();
	List<Book> personalList = new ArrayList<Book>();
	List<TeacherRecommend> tList= new ArrayList<TeacherRecommend>();
	List<BookComments> commList=new ArrayList<BookComments>();	
	BookDAO dao=new BookDAO();
	BookCommentsDAO bc_dao=new BookCommentsDAO();
	newList=dao.getNewBook();
	popularList=dao.getPopularBook();
	for (int i=0;i<popularList.size();i++){
		System.out.println(popularList.get(i).getB_pic());
	}
	for(int i=0;i<4;i++){
		BookComments bc=bc_dao.getBookComments(popularList.get(i)).get(0);
		commList.add(bc);
	}
	User user=(User)session.getAttribute("user");
	//if(user!=null)
		newsList=new NewsDAO().getNews(user);
		for(int i=0;i<newsList.size();i++)
			System.out.println(newsList.get(i).getN_pic());
	%>
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
											<img src="images/slide1.jpg">
											
										</li>
										
										
										<!-- THE SECOND SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
										
											<!-- THE MAIN IMAGE IN THE SLIDE -->
											<img src="images/slide2.jpg">													
											
										</li>
										
										<!-- THE THIRD SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
											<!-- THE MAIN IMAGE IN THE SLIDE -->
											<img src="images/slide3.jpg">													
											
										</li>
										
										
										<!-- THE FOURTH SLIDE -->
										<li data-transition="fade" data-slotamount="10" data-masterspeed="300" data-slideindex="back">
										
												<!-- THE MAIN IMAGE IN THE SLIDE -->
												<img src="images/slide4.jpg">												

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
											<%if(user!=null) {
											personalList=new UserDAO().labelRecommend(user);%>											
											<li><a href="#tab3">个性推荐</a></li>
											<%} %>
											<%if((user!=null)&&(user.getU_type()==1))
											{
											tList=new UserDAO().getRecommend(user);
											%>									
											<li><a href="#tab4">老师荐书</a></li>
											<%}%>
										
										</ul>
									</div>
									<div class="tab-wrapper">
										<div id="tab1" class="tab">
											<!-- Latest Posts Loop -->
											<ul class="post-loop unstyled clearfix">
											<%for(int i=0;i<4;i++){ %>
												<li>
													<img src="<%=newList.get(i).getB_pic() %>" alt="" class="post-img" style="width:220px; height:210px">
													<div class="post-caption">
														<span class="post-cats">by  <%=newList.get(i).getB_author() %></span>
														<h4><a href="ShowBook!execute?b_id=<%=newList.get(i).getB_id() %>"><%=newList.get(i).getB_name() %></a>
													</div>
												</li>
												<%} %>
											</ul>
											<!-- /Latest Posts Loop -->
										</div>
										<div id="tab2" class="tab">
											<!-- Popular Posts Loop -->
											<ul class="post-loop unstyled clearfix">
											<%for(int i=0;i<4;i++){ %>
												<li>
													<img src="<%=popularList.get(i).getB_pic() %>" alt="" class="post-img" style="width:220px; height:210px">
													<div class="post-caption">
														<span class="post-cats">by  <%=popularList.get(i).getB_author() %></span>
														<h4><a href="ShowBook!execute?b_id=<%=popularList.get(i).getB_id() %>"><%=popularList.get(i).getB_name() %></a></h4>
													</div>
												</li>
												<%} %>				
											</ul>
											<!-- /Popular Posts Loop -->
										</div>
										<%if(!personalList.isEmpty()){ %>
										<div id="tab3" class="tab">
											<!-- Popular Posts Loop -->
											<ul class="post-loop unstyled clearfix">
											<%for(int i=0;i<personalList.size()&&i<4;i++){ %>
												<li>
													<img src="<%=personalList.get(i).getB_pic() %>" alt="" class="post-img" style="width:220px; height:210px">
													<div class="post-caption">
														<span class="post-cats">by  <%=personalList.get(i).getB_author() %></span>
														<h4><a href="ShowBook!execute?b_id=<%=personalList.get(i).getB_id() %>"><%=personalList.get(i).getB_name() %></a></h4>
													</div>
												</li>
												<%} %>				
											</ul>
											<!-- /Popular Posts Loop -->
										</div>
										<%} %>
										<%if(!tList.isEmpty()){ %>
										<div id="tab4" class="tab">
											<!-- Featured Posts Loop -->
											<ul class="post-loop unstyled clearfix">
											<%for(int i=0;i<4;i++) {%>
												<li>
													<img src="<%=tList.get(i).getrBook().getB_pic()%>" alt="" class="post-img" style="width:220px; height:210px">
													<div class="post-caption">
														<span class="post-cats">by  <%=tList.get(i).getrBook().getB_author() %></span>
														<h4><a href="ShowBook!execute?b_id=<%=tList.get(i).getrBook().getB_id() %>"><%=tList.get(i).getrBook().getB_name() %></a></h4>
														<h3 align="right">推荐老师:<%=tList.get(i).getTeacher().getU_name() %></h3>
													</div>
												</li>
												<%} %>												
											</ul>
											<!-- /Featured Posts Loop -->
										</div>
										<%} %>
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
								<br/>
								<div class="latest-posts-holder">
								<%for(int i=0;i<4;i++) {%>
									<article class="post clearfix">
										<figure class="featured-thumb">
											<a href="ShowBook!execute?b_id=<%=commList.get(i).getBook().getB_id() %>"><img src="<%=commList.get(i).getBook().getB_pic() %>" style="width:220px; height:210px"/></a>
										</figure>
										<div class="post-body">
											<header class="post-header">
												<h3><a href="ShowBook!execute?b_id=<%=commList.get(i).getBook().getB_id() %>"><%=commList.get(i).getBook().getB_name() %></a></h3>
												<p class="post-meta">
													<span class="post-meta-cats"><i class="icon-tag"></i><%=commList.get(i).getDate() %></span>
													<span class="post-meta-author"><i class="icon-user"></i><%=commList.get(i).getUser().getU_name() %> / <%=commList.get(i).getUser().getF_id() %></span>
													<span class="post-meta-comments"><i class="icon-comment"></i><%=bc_dao.getBookComments(commList.get(i).getBook()).size()%></span>
												</p>
											</header>
											<div class="post-excerpt">
												<p><%=commList.get(i).getComments() %></p>
												<a href="ShowBook!execute?b_id=<%=commList.get(i).getBook().getB_id() %>" class="btn">Read More</a>
											</div>
										</div>
									</article>
									<%} %>
								</div>								
									
							</section>
							<!-- END CONTENT -->
							
							<!-- BEGIN SIDEBAR -->
							<aside id="sidebar" class="sidebar grid_4">
								<!-- Popular Posts Widget -->
								<div class="popular-posts widget widget__sidebar">
									<h3 class="widget-title">今日资讯</h3>
									<div class="widget-content">
										<ul class="posts-list unstyled clearfix">
											<%for(int i=0;i<newsList.size();i++){ %>
											<li>
												<figure class="featured-thumb">
													<a href="images/apple-touch-icon-72x72.png"><img src="<%=newsList.get(i).getN_pic() %>" alt="<%=newsList.get(i).getN_pic() %>" width="70" height="70" /></a>
													
												</figure>
												<h4><a href="<%=newsList.get(i).getN_link() %>"><%=newsList.get(i).getN_title() %></a></h4>
												<p class="post-meta"> <%=newsList.get(i).getN_date()%> </p>
											</li>
											<%}%> 				
										</ul>
									</div>
								</div>
								<!-- /Popular Posts Widget -->
							</aside>
							<!-- END SIDEBAR -->
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
									<h3 class="widget-title">友情链接</h3>
									<div class="widget-content">
										<ul>
											<li><a href="">中国国家图书馆</a></li>
											<li><a href="">国内国外图书馆</a></li>
											<li><a href="">中文核心期刊目录</a></li>
											<li><a href="">中国图书馆分类法</a></li>
											<li><a href="">湖北省数字图书馆</a></li>
										</ul>
									</div>
								</div>
								<!-- /Text Widget -->
							</div>
							<div class="grid_3">
								<!-- Twitter Widget -->
								<div class="twitter-widget widget widget__footer">
									<h3 class="widget-title">服务指南</h3>
									<div class="widget-content">
										<ul>
											<li><a href="">网络服务</a></li>
											<li><a href="">信息系统</a></li>
											<li><a href="">办公系统</a></li>
											<li><a href="">联系我们</a></li>
										</ul>
									</div>
								</div>
								<!-- /Twitter Widget -->
							</div>
							<div class="grid_4">
								<!-- Flickr Widget -->
								<div class="flickr-widget widget widget__footer">
									
									<div class="widget-content">
										<img src="images/logo.png">
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
									<div class="copyright-secondary">
										&copy;  中南财经政法大学 
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