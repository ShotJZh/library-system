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
</head>
	<body>
		<div class="account-pages">
			<div class="wrapper-page">
				<div class="text-center">
	                <a href="index.html" class="logo"><span>管理员</span></a>
	            </div>
	            
	            <div class="m-t-40 card-box">
	            	<div class="text-center">
	                    <h4 class="text-uppercase font-bold m-b-0">登录</h4>
	                </div>
	                <div class="panel-body">
	                	<form  action="AdminLogin!Check" class="am-form" method="post">
	                		<div class="am-g">
	                			<div class="am-form-group">
							      <input type="text" class="am-radius" name="a.a_id" placeholder="工号">
							    </div>
							
							    <div class="am-form-group form-horizontal m-t-20">
							      <input type="password" class="am-radius" name="a.a_pwd" placeholder="密码">
							    </div>
							    
							    <div class="am-form-group ">
		                           	<label style="font-weight: normal;color: #999;">
								        <input type="checkbox" class="remeber"> 记住密码
								    </label>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        	<input type="submit" class="am-btn am-btn-primary am-radius" style="width: 100%;height: 100%;" value="登录"/>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        <a href="" class="text-muted"><i class="fa fa-lock m-r-5"></i> 忘记密码?</a>
		                        </div>
	                		</div>

	                	</form>
							
	                </div>
	            </div>
			</div>
		</div>
	</body>

</html>