<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">		
	<div class="am-topbar-left am-hide-sm-only">
              <a href="index.html" class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
          </div>

	<div class="contain">
		<ul class="am-nav am-navbar-nav am-navbar-left">
			<li><h4 class="page-title"></h4></li>
		</ul>
		
		<ul class="am-nav am-navbar-nav am-navbar-right">
			<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
			<li class="hidden-xs am-hide-sm-only">
                      <form role="search" class="app-search">
                          
                      </form>
                  </li>
		</ul>
	</div>
</header>
<!-- end page -->

<div class="admin">
		<!-- ========== Left Sidebar Start ========== -->
			  <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
			    <div class="am-offcanvas-bar admin-offcanvas-bar">
			    	<!-- User -->
					<div class="user-box am-hide-sm-only">
		                      <div class="user-img">
		                          <img src="backassets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
		                          <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
		                      </div>
		                      <h5><a href="#">Mat Helme</a> </h5>
		                      <ul class="list-inline">
		                          <li>
		                              <a href="#">
		                                  <i class="fa fa-cog" aria-hidden="true"></i>
		                              </a>
		                          </li>
		
		                          <li>
		                              <a href="#" class="text-custom">
		                                  <i class="fa fa-cog" aria-hidden="true"></i>
		                              </a>
		                          </li>
		                      </ul>
		               </div>
		            <!-- End User -->
		            
					 <ul class="am-list admin-sidebar-list">
					 		<li id="menu1"><a href="ChartAction!test"><span class="am-icon-home"></span> 首页</a></li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 图书管理   <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
						        <li id="menu2" onclick="setTab('tab',2,3,2)"><a class="am-cf" href="BookManage!showBook"> 查看图书 </span></a></li>
						        <li id="menu3" onclick="setTab('tab',3,3,2)"><a > 添加图书 </a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i>读者管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						        <li id="menu4" onclick="setTab('tab',4,5,4)"><a class="am-cf" href="UserAction!showReader" > 查询读者信息  </a></li>
						        <li id="menu5" onclick="setTab('tab',5,5,4)"><a class="am-cf"> 添加读者信息  </a></li>						  
						      </ul>
						    </li>
						  
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 公告管理  <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
						        <li id="menu6" onclick="setTab('tab',6,7,6)"><a class="am-cf" href="AnnounceAction!showAllAnn"> 所有公告  </a></li>
						        <li id="menu7" onclick="setTab('tab',7,7,6)"><a>发布公告 </a></li>   
						      </ul>
						    </li>	
						   	
			     </div>
			  </div>
		<!-- sidebar end -->	