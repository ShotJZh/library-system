<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>

<link rel="stylesheet" href="css/common.css"/>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
var w,h,className;
function getSrceenWH(){
	w = $(window).width();
	h = $(window).height();
	$('#dialogBg').width(w).height(h);
}

window.onresize = function(){  
	getSrceenWH();
}  
$(window).resize();  

$(function(){
	getSrceenWH();
	
	//显示弹框
	$('#click1').click(function(){
		className = $(this).attr('class');
		$('#dialogBg').fadeIn(300);
		$('#dialog1').removeAttr('class').addClass('animated '+className+'').fadeIn();
	});
	$('#click2').click(function(){
		className = $(this).attr('class');
		$('#dialogBg').fadeIn(300);
		$('#dialog2').removeAttr('class').addClass('animated '+className+'').fadeIn();
	});
	//关闭弹窗
	$('.claseDialogBtn').click(function(){
		$('#dialogBg').fadeOut(300,function(){
			$('#dialog1').addClass('bounceOutUp').fadeOut();
			$('#dialog2').addClass('bounceOutUp').fadeOut();
		});
	});
});

function reg(form){
   	if(form.password.value != form.repassword.value){
   		alert("两次输入密码不一致！");
   		return false;
   	}
}
</script>
</head>
<body>

<div id="login-reg">
	
	<div class="login-reg-box">
		<%User u=(User)session.getAttribute("user");
		if(u==null) {%>
		<div class="login-reg-button">
			<a href="javascript:;" id='click1' class="bounceIn">登录</a>						
		</div>
		<%} else{%>
		<div class="login-reg-button">
			<a href="QuitAction!quit" class="bounceIn">退出</a>						
		</div>
		<%} %>
		<div id="dialogBg"></div>
		<div id="dialog1" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
			<form action="UserLogin!Check" method="post" id="editForm">
				<ul class="editInfos">
					<li><label><font color="#ff0000">* </font>用户名：<input type="text" name="u_id"  class="ipt" /></label></li>
					<li><label><font color="#ff0000">* </font>密码：<input type="password" name="u_pwd"  class="ipt" /></label></li>					
					<li><input type="submit" value="登录" class="submitBtn" /></li>
				</ul>
			</form>
		</div>
		
		<div id="dialog2" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">关闭</a>
			</div>
			<form action="" method="post" id="editForm" onsubmit="return reg(this);">
				<table class="editInfos">
					<tr>
						<td align="right"><font color="#ff0000">* </font>用户名：</td>
						<td><input type="text" name="" class="ipt" /></td>
					</tr>
					<tr>
						<td align="right"><font color="#ff0000">* </font>密码：</td>
						<td><input type="text" name="" class="ipt" /></td>
					</tr>
					<tr>
						<td align="right"><font color="#ff0000">* </font>确认密码：</td>
						<td><input type="text" name="" class="ipt" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="submit" value="注册" class="submitBtn" />
					</tr>					
				</table>
			</form>
		</div>
	</div>	
</div>
</body>
</html>