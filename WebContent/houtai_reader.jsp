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

			  	<!-- 查询读者  -->
			  		<div id="tab4" style="display:block">
			  			<div class="content">
							<div class="card-box">
								<!-- Row start -->
								<div class="am-g">	
									<div class="am-u-sm-12 am-u-md-6">
							          <div class="am-btn-toolbar">
							            <div class="am-btn-group am-btn-group-xs">
							              <a href="#" onclick="setTab('tab',5,5,4)" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</a>
							              <a href="#" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</a>
							            </div>
							          </div>
							        </div>	
							        						        
									<div class="am-u-sm-12 am-u-md-3" style="float:right;">
							          <div class="am-input-group am-input-group-sm">
								          <form action="UserAction!searchReader">
								              <input type="text" class="am-form-field" name="s_name">
									          <span class="am-input-group-btn">
									            <button class="am-btn am-btn-default" type="submit">搜索</button>
									          </span>
									      </form>
							          </div>
							        </div>
							    </div>
								<!-- Row end -->
								  
								  <!-- Row start -->
								  	<div class="am-g">
							        <div class="am-u-sm-12">
							          <form class="am-form">
							            <table class="am-table am-table-striped am-table-hover table-main">
							              <thead>
								              <tr>
								                <th class="table-id">学号</th>
								                <th class="table-title">姓名</th>
								                <th class="table-type">年级</th>
								                <th class="table-author am-hide-sm-only">学院</th>
								                <th class="table-date am-hide-sm-only">专业</th>
								                <th class="table-set">操作</th>
								              </tr>
							              </thead>
							              <tbody>
							              <s:iterator value="userList">
								              <tr>							                
								                <td><s:property value="u_id"/></td>
								                <td><a href="#"><s:property value="u_name"/></a></td>
								                <td><s:property value="u_grade"/></td>
								                <td class="am-hide-sm-only"><s:property value="f_id"/></td>
								                <td class="am-hide-sm-only"><s:property value="m_id"/></td>
								                <td>
								                  <div class="am-btn-toolbar">
								                    <div class="am-btn-group am-btn-group-xs">							                      
								                      <s:a href="UserAction!deleteReader?u_id=%{u_id}" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除  </s:a>
								                    </div>
								                  </div>
								                </td>
								              </tr>	
								          </s:iterator>							              
							              </tbody>
							            </table>
							            
							            <div class="am-cf">
							            	  共 条记录
							              <div class="am-fr">
							              <!-- 
							                <ul class="am-pagination">
							                  <li class="am-disabled"><a href="#">«</a></li>
							                  <li class="am-active"><a href="#">1</a></li>
							                  <li><a href="#">2</a></li>
							                  <li><a href="#">3</a></li>
							                  <li><a href="#">4</a></li>
							                  <li><a href="#">5</a></li>
							                  <li><a href="#">»</a></li>
							                </ul>
							                -->
							              </div>
							            </div>
							            
							            <hr />
							            <p>注：.....</p>
							          </form>
							        </div>
			
			     				 </div>
								  <!-- Row end -->
								  
							</div>				
						</div>
			  		</div>
			  
			  	<!-- 添加读者 -->
			  		<div id="tab5" style="display:none">
			  			
							<div class="am-g">
								<!-- Row start -->
									<div class="am-u-sm-12">
									
										<div class="card-box">											
											<div class="am-g">
											<div class="am-u-md-6">
											
											<form action="UserAction!addReader" class="am-form am-text-sm" data-am-validator>
											  <fieldset>
											    <legend>添加读者</legend>
											    
											    <div class="am-form-group">
													<div class="am-g">
												      <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-1">学号</label>
												      <input name="u.u_id" class="am-u-md-10 form-control"  id="doc-ipt-text-1" placeholder="输入学号" required/>
											      </div>
											    </div>
											    
												<div class="am-form-group">
													<div class="am-g">
												      <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-1">姓名：</label>
												      <input name="u.u_name" class="am-u-md-10 form-control"  id="doc-ipt-text-1" placeholder="输入姓名" required/>
											      </div>
											    </div>											  
											
											    <div class="am-form-group">
													<div class="am-g">
												      <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-1">年级：</label>
												      <input name="u.u_grade" class="am-u-md-10 form-control"  id="doc-ipt-text-1" placeholder="输入年级" required/>
											      </div>
											    </div>		
											
												<div class="am-form-group">
											    	<div class="am-g">
												      <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-type-1">学院：</label>
												      <select name="u.f_id" id="doc-select-1" required>
												        <option value="">-=请选择一项=-</option>
												        <option value="option1">选项一...</option>
												        <option value="option2">选项二.....</option>
												        <option value="option3">选项三........</option>
												      </select>
												    </div>
											    </div>
											
												<div class="am-form-group">
											    	<div class="am-g">
												      <label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-type-1">专业：</label>
												      <select name="u.m_id" id="doc-select-1" required>
												        <option value="">-=请选择一项=-</option>
												        <option value="option1">选项一...</option>
												        <option value="option2">选项二.....</option>
												        <option value="option3">选项三........</option>
												      </select>
												    </div>
											    </div>
											    <button class="am-btn am-btn-secondary" type="submit">提交</button>
											  </fieldset>
											</form>
										
										</div>
									</div>
								<!-- Row end -->
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