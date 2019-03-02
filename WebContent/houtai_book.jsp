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
function goEdit(n){
	alert(n);
	book_id = document.getElementById("b_id_"+n).innerHTML;
	book_id_for_edit = document.getElementById("book_id_edit");	
	book_id_for_edit.innerText = book_id;
	book_id_for_edit1 = document.getElementById("book_id_edit1");	
	book_id_for_edit1.innerText = book_id;
	alert(book_id);

	book_name = document.getElementById("b_name_"+n).innerHTML;
	book_name_edit = document.getElementById("book_name_edit");
	book_name_edit.innerText = book_name;

	book_author = document.getElementById("b_author_"+n).innerHTML;
	book_author_edit = document.getElementById("book_author_edit");
	book_author_edit.value = book_author;
	
	book_press = document.getElementById("b_press_"+n).innerHTML;
	book_press_edit = document.getElementById("book_press_edit");
	book_press_edit.value = book_press;
	
	book_location = document.getElementById("b_location_"+n).innerHTML;
	book_location_edit = document.getElementById("book_location_edit");
	book_location_edit.value = book_location;
	
	img = document.getElementById("b_img_"+n).innerHTML;
	img_edit = document.getElementById("img_edit");
	img_edit.src = img;
	alert(img);
	$('#editBook').modal('show');editBook
}
function setTab(name,cursel,n,begin){
 	for(i=begin;i<=n;i++){
 	var menu=document.getElementById("menu"+i);
 	var con=document.getElementById(name+i);
 	menu.className=i==cursel?"hover":"";
 	con.style.display=i==cursel?"block":"none";
 	}
 	}
 	
function changeLi(n){
	for(i=1;i<=5;i++){
		var li=document.getElementById("li"+i);
		li.className=i==n?"am-active":"";
	}
		
}
</script>
</head>
<body>
		<%@include file="adminInfo.jsp" %>
		<!-- ========== Left Sidebar end ========== -->
			  <div class="content-page">
			  		
			  	<!-- 查看图书  -->
			  		<div id="tab2" class="tab" style="display:block">
			  		
			  			<div class="content">
							<div class="card-box">
								<!-- Row start -->
								<div class="am-g">
									<div class="am-u-sm-12 am-u-md-6">
							          <div class="am-btn-toolbar">
							            <div class="am-btn-group am-btn-group-xs">
							              <a href="#" onclick="setTab('tab',3,3,2)" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</a>
							              <a href="#" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</a>
							            </div>
							          </div>
							        </div>	
							        <div class="am-u-sm-12 am-u-md-3">
							          <div class="am-input-group am-input-group-sm">							       
							              <form action="BookManage!searchBook"> 
								              <input type="text" name="s_b_name" class="am-form-field">
									          <span class="am-input-group-btn" >
									            <button class="am-btn am-btn-default" type="submit" >搜索</button>
									          </span>
								         </form>
							          </div>
							        </div>
							    </div>
								<!-- Row end -->
								  
								  <!-- Row start -->
								  	<div class="am-g">
							        <div class="am-u-sm-12">
							          <s:form class="am-form">
							            <table class="am-table am-table-striped am-table-hover table-main">
							              <thead>
								              <tr>
								                <!-- <th class="table-check"><input type="checkbox" /></th> -->
								                <th class="table-id">ID</th>
								                <th class="table-title">书名</th>
								                <th class="table-type">作者</th>
								                <th class="table-type">存储地点</th>
								                <th class="table-author am-hide-sm-only">在馆量</th>
								                <th class="table-date am-hide-sm-only">出版社</th>
								                <th class="table-set">操作</th>								                
								              </tr>
							              </thead>
							              <tbody>
							              <%int count = 0; %>
							              	<s:iterator value="bookList">
							              	 <tr>	            	 						   
								                <td><span id = "b_id_<%=count%>"><s:property value="b_id"/></span></td>
								                <!-- 点击显示图书的详细信息 -->
								                <td><a href="#"><span id = "b_name_<%=count%>"><s:property value="b_name"/></span> </a></td>								                								               					               
								                <td><span id="b_author_<%=count %>"><s:property value="b_author"/></span></td>
								                <td><span id="b_location_<%=count %>"><s:property value="b_location"/></span></td>
								                <td class="am-hide-sm-only"><span id="b_type_<%=count %>"><s:property value="b_in"/></span></td>
								                <td class="am-hide-sm-only">
								                	<span id="b_press_<%=count %>"><s:property value="b_press"/></span>
								                	<span id="b_img_<%=count %>" style="display:none"><s:property value="b_pic"/></span>
								                </td>
								                <td>
								                  <div class="am-btn-toolbar">
								                    <div class="am-btn-group am-btn-group-xs">
								                      <a href="#editBook" onclick = "goEdit(<%=count %>)"  data-toggle="modal" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span>修改	</a>					                      
								                      <s:a href="BookManage!deleteBook?b_id=%{b_id}" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span>删除 </s:a>
								                    </div>
								                  </div>
								                </td>								                								                
								              </tr>		
								              <%count++; %>	
							              	</s:iterator>
								              					              
							              </tbody>
							            </table>
							            
							            <div class="am-cf">
							            	  共 <s:property value="bookCount"/>本书
							              <div class="am-fr">
							                <ul class="am-pagination">
												 <s:url id="url_pre" value="BookManage!showBook">  
											         <s:param name="pageNow" value="pageShow-1"></s:param>  
											     </s:url>   
											     <s:url id="url_next" value="BookManage!showBook">  
											         <s:param name="pageNow" value="pageShow+1"></s:param>  
											     </s:url>
											     <li><s:a href="%{url_pre}">«</s:a></li>
											     <li class="am-active"><a href="#"><s:property value="pageShow"/>/<s:property value="pageCount"/></a></li>
											     <li><s:a href="%{url_next}">»</s:a></li> 
							                </ul>
							              </div>
							            </div>
							            
							            <hr />
							            
							          </s:form>
							        </div>
			
			     				 </div>
								  <!-- Row end -->
								  
							</div>				
						</div>
			  		
			  		</div>
			  		
			  	<!-- 添加图书  -->
			  		<div id="tab3" style="display:none">
			  			<div class="am-g">
							<div class="am-u-sm-12">
								<div class="card-box">
									
									<!--  <h4 class="header-title m-t-0 m-b-30">添加图书</h4>-->
									
									<div class="am-g">
										<div class="am-u-md-6">
											<form class="form-horizontal" role="form" action="BookManage!addBook">
												<fieldset>
													<legend>添加图书</legend>											
												
												<div class="form-group">													
												    <label class="col-sm-2 control-label" for="bookID">图书编号</label>
												    <div class="col-sm-10"> 
												      <input name="book.b_id" class="form-control"  id="" placeholder="输入编号" required/>
											        </div>
											    </div>
												
												<div class="form-group">
													<label class="col-sm-2 control-label" for="bookName">书名</label>
													<div class="col-sm-10">
												      <input name="book.b_name" class="form-control"  id="" placeholder="输入书名"/>
											        </div>
											    </div>
											    
											    <div class="form-group">
											    	<label class="col-sm-2 control-label" for="bookAuthor">作者</label>
											    	<div class="col-sm-10">
												      <input name="book.b_author" class="form-control"  id="" placeholder="输入作者"/>
												    </div>
											    </div>		
											    
											    <div class="form-group">
											    	<label class="col-sm-2 control-label" for="bookAuthor">购进本数</label>
											    	<div class="col-sm-10">
												      <input name="book.b_in" class="form-control"  id="" placeholder="输入购进本数"/>
												    </div>
											    </div>										    											  
											    
											    <div class="form-group">
											    	<label class="col-sm-2 control-label" >出版社</label>
											    	<div class="col-sm-10">		      
												      <!-- <input name="book.b_press" class="form-control"  id="" placeholder="输入出版社"/> -->
												      <select class="form-control" name="book.b_press">	
												      		<s:iterator value="allPress">
												      			<option value="<s:property />">
												      				<s:property />
												      			</option>
												      		</s:iterator>												        													        												        
													  </select>
												    </div>
											    </div>
											    
											    <div class="form-group">
											        <label class="col-sm-2 control-label" >类别</label>
											    	<div class="col-sm-10">
												      <select class="form-control" name="book.b_type">	
												      		<s:iterator value="typeList">
												      			<option value="<s:property value="type_id"/>">
												      				<s:property value="type_name"/>
												      			</option>
												      		</s:iterator>												        													        												        
													  </select>
												    </div>
											    </div>
											    
											    <div class="form-group">
											    	<label class="col-sm-2 control-label" for="doc-ta-1">存储地点</label>
											    	<div class="col-sm-10">												     
												      <select class="form-control" name="book.b_location">
													        <option value="综合阅览室1">综合阅览室1</option>
													        <option value="综合阅览室2">综合阅览室2</option>
													        <option value="综合阅览室3">综合阅览室3</option>
													        <option value="文学阅览室1">文学阅览室1</option>
													  </select>
											    	</div>
											    </div>
											    
											    <div class="form-group">
													<label class="am-u-md-2 am-md-text-right am-padding-left-0" >图书封面</label>
											    	<div class="col-sm-10">												      
												      <div style="float:left">
												      <textarea id="book_img" name="book.b_pic" class="" style="width:50%">  	</textarea>												      
												      <script>													   				    
												        CKEDITOR.replace('book_img',{toolbar:[['Image']],height:'150px',width:'140px' } );      //修改为自己的文本域id    											    
												      </script>	
												      </div>										  
												    </div>
											    </div>
											    
											    <button class="am-btn am-btn-secondary" type="submit">提交</button>
											</fieldset>
											</form>
										</div>
									
									</div>
								</div>
							</div>
					<!-- Row end -->
				</div>
			  		</div>

			  </div>		
		
		 <!-- 修改图书信息模态框 -->
		 
		<div class="modal fade" id="editBook" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
        	<div class="modal-dialog">
        		<div class="modal-content">       		
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal">
        					<span aria-hidden="true">&times;</span>
        					<span class="sr-only">Close</span>
        				</button>
        				<s:label  value="图书详细信息" cssStyle="margin-left:20px;"></s:label>
        			</div>		
        			<div class="modal-body" >    
        			<form class="form-horizontal" role="form" action="BookManage!updateBook">
					  <div class="form-group">
					    <label for="book_id" class="col-sm-2 control-label">图书编号</label>
					    <div class="col-sm-10">
					      <input type="text" name="book_edit.b_id" class="form-control" id="book_id_edit1" style="display:none;">
					      <input type="text" name="book_edit.b_id" class="form-control" id="book_id_edit" disabled>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="book_name" class="col-sm-2 control-label">图书名</label>
					    <div class="col-sm-10">
					      <input type="text" name="book_edit.b_name" class="form-control" id="book_name_edit">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="book_author" class="col-sm-2 control-label">作者</label>
					    <div class="col-sm-10">
					      <input type="text" name="book_edit.b_author" class="form-control" id="book_author_edit">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="book_press" class="col-sm-2 control-label">出版社</label>
					    <div class="col-sm-10">
					      <input type="text" name="book_edit.b_press" class="form-control" id="book_press_edit">
					    </div>
					  </div>				  
					  <div class="form-group">
					    <label for="book_location" class="col-sm-2 control-label">存储地点</label>
					    <div class="col-sm-10">
						    <select class="form-control" name="book_edit.b_location" id="book_location_edit">
							        <option value="综合阅览室1">综合阅览室1</option>
							        <option value="综合阅览室2">综合阅览室2</option>
							        <option value="综合阅览室3">综合阅览室3</option>
							        <option value="文学阅览室1">文学阅览室1</option>
							</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="book_press" class="col-sm-2 control-label">图书封面</label>
					    <div class="col-sm-10">
					    	<img src="" style="width:150px;height:200px;" id="img_edit">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="am-btn am-btn-secondary">确认修改</button>
					    </div>
					  </div>
					</form>
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
		
	</body>
</html>