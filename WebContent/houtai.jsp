<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<link rel="stylesheet" href="backassets/css/amazeui.css" />
<link rel="stylesheet" href="backassets/css/core.css" />
<link rel="stylesheet" href="backassets/css/menu.css" />
<link rel="stylesheet" href="backassets/css/index.css" />
<link rel="stylesheet" href="backassets/css/admin.css" />
<link rel="stylesheet" href="backassets/css/page/typography.css" />
<link rel="stylesheet" href="backassets/css/page/form.css" />
<link rel="stylesheet" href="backassets/css/component.css" />
<script>
function setTab(name,cursel,n,begin){
 	for(i=begin;i<=n;i++){
 	var menu=document.getElementById("menu"+i);
 	var con=document.getElementById(name+i);
 	menu.className=i==cursel?"hover":"";
 	con.style.display=i==cursel?"block":"none";
 	}
 	}
</script>
</head>
<body>
		<%@include file="adminInfo.jsp" %>
		<!-- ========== Left Sidebar end ========== -->
			  <div class="content-page">
			  	 <!-- 首页 -->
			  		<div id="tab1" class="tab" >
			  			<div class="content">
			  				<div class="am-u-md-4">
								<div class="card-box">
									<h4 class="header-title m-t-0">环形图</h4>
									<div id="index-bar-1" style="height: 345px;height: 300px;"></div>
								</div>
							</div>
			  			</div>
			  		</div>			 
			  </div>		
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="backassets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="backassets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="backassets/js/app.js" ></script>
		<script type="text/javascript" src="backassets/js/blockUI.js" ></script>
		<script type="text/javascript" src="backassets/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="backassets/js/charts/indexChart.js" ></script>
		<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
		<script type="text/javascript" src="js/ckfinder/ckfinder.js"></script>
	</body>
</html>