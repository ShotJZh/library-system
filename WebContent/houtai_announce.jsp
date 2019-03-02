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
<link rel="stylesheet" href="backassets/css/bootstrap.min.css">
<script type="text/javascript" src="backassets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="backassets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<script>
function setTab(name,cursel,n,begin){
 	for(i=begin;i<=n;i++){
 	var menu=document.getElementById("menu"+i);
 	var con=document.getElementById(name+i);
 	menu.className=i==cursel?"hover":"";
 	con.style.display=i==cursel?"block":"none";
 	}
 	}

function display(n){
	title=document.getElementById("ann_title_"+n).innerHTML;
	title_show=document.getElementById("showtitle");
	title_show.innerText=title;
	alert(title);
	
	date=document.getElementById("ann_date_"+n).innerHTML;
	date_show=document.getElementById("showDate");
	date_show.innerText=date;
	alert(date);
	
	text=document.getElementById("ann_text_"+n).innerHTML;
	text_show=document.getElementById("doc-edit");
	text_show.innerText=text;
	alert(text);
}

</script>
</head>
<body>
		<%@include file="adminInfo.jsp" %>
		<!-- ========== Left Sidebar end ========== -->
			  <div class="content-page">
			  		
			  	<!-- 查看所有公告  -->
			  		<div id="tab6" style="display:block">
			  			<div class="content">
							<div class="card-box">
								  <!-- Row start -->
								  	<div class="am-g">
								  	
							        <div class="am-u-sm-12">
							          <div class="am-u-sm-12 am-u-md-6">
								          <div class="am-btn-toolbar">
								            <div class="am-btn-group am-btn-group-xs">
								              <a href="#" onclick="setTab('tab',7,7,6)" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</a>
								              <a href="AnnounceAction!deleteSelectAnn" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</a>
								            </div>
								          </div>
							          </div>	
							          <div class="am-u-sm-12 am-u-md-3" style="float:right;">
								          <div class="am-input-group am-input-group-sm">
								            <input type="text" class="am-form-field" name="s_announce_title">
								            <span class="am-input-group-btn">
								              <button class="am-btn am-btn-default" type="button">搜索</button>
								            </span>
								          </div>
							          </div>
							        <form class="am-form" >							          						        									
							            <table class="am-table am-table-striped am-table-hover table-main">
							              <thead>
								              <tr>
								                <th class="table-check"><input type="checkbox" /></th>
								                <th class="table-id">ID</th>
								                <th class="table-title">标题</th>
								                <th class="table-author am-hide-sm-only">作者</th>
								                <th class="table-date am-hide-sm-only">修改日期</th>
								                <th class="table-set">操作</th>
								              </tr>
							              </thead>
							              <tbody>
							              <%int count=1; %>
							              <s:iterator value="annList">
								              <tr>
								                <td><input type="checkbox" name="deleteID" value="<s:property value="announce_id" />"/></td>
								                <td><span id="ann_id_<%=count %>"><s:property value="announce_id"></s:property></span></td>
								                <!-- 点击标题，弹出详细信息的模态框 -->
								                <td><a href="#mymodal-data" onclick="display(<%=count %>)" data-toggle="modal"><span id="ann_title_<%=count %>"><s:property value="announce_title"></s:property></span></a></td>								               
								                <td class="am-hide-sm-only">测试1号
								                	<span id="ann_text_<%=count %>" style="display:none;"><s:property value="announce_text"></s:property></span>
								                </td>
								                <td class="am-hide-sm-only"><span id="ann_date_<%=count %>"><s:property value="announce_date"></s:property></span></td>
								                <td>
								                  <div class="am-btn-toolbar">
								                    <div class="am-btn-group am-btn-group-xs">
								                      <a href="#mymodal-data" onclick="display(<%=count %>)" data-toggle="modal" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</a>							                      
								                      <s:a href="AnnounceAction!deleteAnn?announce_id=%{announce_id}" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</s:a>
								                    </div>
								                  </div>
								                </td>
								              </tr>	
								              <%count++; %>
								           </s:iterator>							              
							              </tbody>
							            </table>
							            
							            <div class="am-cf">
							            	  共 15 条记录
							              <div class="am-fr">
							                <ul class="am-pagination">
							                  <li class="am-disabled"><a href="#">«</a></li>
							                  <li class="am-active"><a href="#">1</a></li>
							                  <li><a href="#">2</a></li>
							                  <li><a href="#">3</a></li>
							                  <li><a href="#">4</a></li>
							                  <li><a href="#">5</a></li>
							                  <li><a href="#">»</a></li>
							                </ul>
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
			  		
			  	<!-- 发布公告  -->

			  		<div id="tab7" style="display:none">
			  			<div class="am-g">
							<div class="am-u-sm-12">
								<div class="card-box">																		
									<div class="am-g">
										<div class="am-u-md-6" style="width:80%">
																				
										<form class="form-horizontal" role="form" action="AnnounceAction!addAnn">											
										    <div class="form-group">
										    	<label for="title" class="col-sm-2 control-label">标题</label>
												<div class="col-sm-10">
													<input type="text" class="form-control" id="" name="ann.announce_title"	placeholder="输入标题">
												</div>										    	
										    </div>
										    <div class="form-group">										    	
											  <label class="col-sm-2 control-label" for="doc-ta-1">公告内容</label>
										      <div class="col-sm-10">
											      <textarea class="form-control" id="doc-ta-1" name="ann.announce_text"></textarea>
										    		<script>													   
												        var editor = CKEDITOR.replace('doc-ta-1');      //修改为自己的文本域id					    												        
														CKFinder.setupCKEditor(editor, '/HelloWorld/ckfinder/' );													    
												    </script>	
										      </div>
										    </div>	
										    <div class="form-group">
												<div class="col-sm-offset-2 col-sm-10">
													<button type="submit" class="am-btn am-btn-secondary">确认发布</button>
												</div>
											</div>																				
										</form>

										</div>
										</div>										
									</div>
								</div>
							</div>
					<!-- Row end -->
						</div>
			  		</div>
			 
			  </div>		
		
		<!-- 模态弹出窗内容 -->
		<div class="modal fade" id="mymodal-data" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title">修改公告</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
						    <label class="col-sm-2 control-label">标题</label>
						    <div class="col-sm-10">
						      <input type="text" class="form-control" id="showtitle">
						    </div>
					   </div>
					   <div class="form-group">
						    <label class="col-sm-2 control-label">发布时间</label>
						    <div class="col-sm-10">
						      <label class=" control-label" id="showDate">发布时间</label>
						    </div>
					   </div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary">保存</button>
					</div>
				</div>
			</div>
		</div>	
								               
			

		<script type="text/javascript" src="backassets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="backassets/js/app.js" ></script>
		<script type="text/javascript" src="backassets/js/blockUI.js" ></script>
		<script type="text/javascript" src="backassets/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="backassets/js/charts/indexChart.js" ></script>
		
	</body>
</html>