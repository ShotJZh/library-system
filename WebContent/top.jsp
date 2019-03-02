<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="entity.*"%>
<header id="header" class="header">
				
	<!-- Top Header -->
	<div class="header-top">
		<div class="container clearfix">
			<div class="grid_12">
				<!-- Top Menu -->
				<form style="float:left" action="UserSearch!search" method="post">
					<input type="search" placeholder="Search" name="key">
					<input type="submit" value="搜索">
				</form>
				<div style="float:right">
				<%@include file="login.jsp" %>
				</div>
			</div>
		</div>
	</div>
	<!-- /Top Header -->
	
	<!-- Main Header -->
	<div class="header-main">
		<div class="container clearfix">
			<div class="grid_12 hr-bottom">
				
				<!-- BEGIN LOGO -->
				<div id="logo">
					<!-- Image based Logo -->
					<a href="index.jsp"><img src="images/logo.png" alt="Emotion" width="145" height="67" /></a>
					
					<!-- Text based Logo
					<h1><a href="index.html">Emotion</a></h1>
					<p class="tagline">Responsive HTML Template</p>
					-->
					
				</div>
				<!-- END LOGO -->
				
				<!-- BEGIN NAVIGATION -->
				<nav class="primary">
					<ul class="sf-menu">
						<li class="current-menu-item">
							<a href="index.jsp">首页<span><i>|</i></span></a>
						</li>
						<%
						if((u!=null)&&(u.getU_type()==1)){ %>
						<li>
							<a href="UserLib!showInformation">我的图书馆 <span><i>|</i> </span></a>
						</li>
						<%}else if(u!=null){ %>
						<li>
							<a href="teacher-self.jsp">我的图书馆 <span><i>|</i> </span></a>
						</li>
						<%} %>
					</ul>
				</nav>
				<!-- END NAVIGATION -->
				
			</div>
		</div>
	</div>
	<!-- /Main Header -->
	
</header>
<!-- END HEADER -->
