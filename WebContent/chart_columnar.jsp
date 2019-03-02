<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>后台模板</title>
		<link rel="stylesheet" href="backassets/css/amazeui.css" />
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="./css/core.css" />
		<link rel="stylesheet" href="backassets/css/menu.css" />
		<link rel="stylesheet" href="backassets/css/index.css" />
		<link rel="stylesheet" href="backassets/css/admin.css" />
		<link rel="stylesheet" href="backassets/css/page/typography.css" />
	</head>
	<body>
		<%@include file="adminInfo.jsp" %>
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="am-g">
					<div class="title">
					   <h1 class="header-title m-t-0 m-b-30">图书馆基本情况</h1>
					</div>
					<div class="am-u-md-12">
						<div class="card-box">
							<h4 class="header-title">总馆藏量&nbsp;&nbsp; <small> <s:property value="book_sum"/></small></h4>
							<h4 class="header-title m-t-0 m-b-30">总借出量&nbsp;&nbsp;<small> <s:property value="book_out_sum"/></small></h4>
							<h4 class="header-title m-t-0 m-b-30">总在馆&nbsp;&nbsp;<small> <s:property value="book_in_sum"/></small></h4>
						</div>
					</div>
					<div class="am-u-md-5">
						<!-- 类别借阅量/该类别图书总量  -->
						<div class="card-box">
							<div  id="pie2" style="width: 100%;height: 400px;"></div>
						</div>
					</div>
					<div class="am-u-md-7">
						<!-- 类别借阅量/该类别图书总量  -->
						<div class="card-box">
							<div id="pie_line" style="width: 100%;height: 400px;"></div>
						</div>
					</div>
				</div>
				<hr/>
				
				<div class="am-g">
					<div>
						<h1>图书购进辅助决策</h1>
					</div>
					<div class="am-u-md-6" >
						<!-- 借出量 /在馆量 -->
						<div class="card-box">
							<div id="columnar1" style="width: 100%;height: 400px;"></div>
						</div>
					</div>
					<div class="am-u-md-6" >
						<div class="card-box">
							<div style="width: 100%;height: 400px;">
								<p>左图显示借出量/在馆量的比值在前5的图书</p>
								<p>这说明这些图书较受欢迎</p>
								<ul>
									<s:iterator value="nameList">
										<li><s:property/></li>
									</s:iterator>
								</ul>
								<p>对于这些图书可以考虑增加购进量</p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="am-g">
				<!-- 类别借阅量/该类别图书总量  -->
					<div class="am-u-md-6">
						<!-- Step Line -->
						<div class="card-box">
							<div  id="columnar3" style="width: 100%;height: 400px;"></div>
						</div>
					</div>
					<div class="am-u-md-6">
						<!-- 堆叠区域图  -->
						<div class="card-box">
							<div  style="width: 100%;height: 400px;">
								<p>左图显示了某类别书籍的近两年总借阅量与该类别的图书总量的比值</p>
								<p>一共有  8 种书，比值在前3的类别为：</p>
									<ul>
										<s:iterator value="typeList2">
											<li><s:property /></li>
										</s:iterator>
									</ul>
								<p>对于这五类书籍应考虑增加该种类书籍的购进量</p>
							</div>
						</div>
					</div>
				</div>
				<hr/>
				
				<div class="am-g">
					<div>
						<h1>图书清理辅助决策</h1>
					</div>
					<div class="am-u-md-6">
						<!-- 录入时间较久远   显示近几年的借阅量  -->
						<div class="card-box">
							<div id="Stack" style="width: 100%;height: 400px;"></div>
						</div>
					</div>
					<div class="am-u-md-6">
						<!-- 大数据面积图  -->
						<div class="card-box">
							<div style="width: 100%;height: 400px;">
								<p>左图显示了购进时间较久远而近5年借阅量较低的书籍</p>
								<p>有如下书籍：</p>
								<ul>
									<s:iterator value="nameList2">
										<li><s:property /></li>
									</s:iterator>
								</ul>
								<p>对于这些书籍应考虑从图书馆中清除</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		</div>
		<!-- {value:${typeSumList[3]}, name:'${typeList[3]}'}
			                {value:${typeSumList[4]}, name:'${typeList[4]}'}
			                {value:${typeSumList[5]}, name:'${typeList[5]}'}
			                {value:${typeSumList[6]}, name:'${typeList[6]}'}
			                {value:${typeSumList[7]}, name:'${typeList[7]}'}
			                
			            '${typeList[3]}',
			        	   '${typeList[4]}',
			        	   '${typeList[5]}',
			        	   '${typeList[6]}',
			        	   '${typeList[7]}',
			                 -->
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="backassets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="backassets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="backassets/js/app.js" ></script>
		<script type="text/javascript" src="backassets/js/blockUI.js" ></script>
		<script type="text/javascript" src="backassets/js/charts/echarts.min.js" ></script>
		<script type="text/javascript">
		//条形图******************统计借出/在馆数量差最大的
		(function(){
			
			var columnar1 = echarts.init(document.getElementById("columnar1"));

			option = {
				
				title : {
					text: "借出-在馆数一览",
					x:'center'
				},
				
			    tooltip : {
			        trigger: 'axis',
			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			        }
			    },
			    legend: {
			        data:['借出', '在馆'],
			        orient : 'vertical',
			        x : 'left',
			    },
			    grid: {
			        left: '3%',
			        right: '4%',
			        bottom: '3%',
			        containLabel: true
			    },
			    xAxis : [
			        {
			            type : 'value'
			        }
			    ],
			    yAxis : [
			        {
			            type : 'category',
			            axisTick : {show: false},
			            data : ["${nameList[0]}\n(${idList[0]})",
			            	"${nameList[1]}\n(${idList[1]})",
			            	"${nameList[2]}\n(${idList[2]})",
			            	"${nameList[3]}\n(${idList[3]})",
			            	"${nameList[4]}\n(${idList[4]})"]
			        }
			    ],
			    series : [
			        
			        {
			            name:'在馆',
			            type:'bar',
			            stack: '总量',
			            label: {
			                normal: {
			                    show: true
			                }
			            },
			            data:["${inList[0]}",
			            	"${inList[1]}",
			            	"${inList[2]}",
			            	"${inList[3]}", 
			            	"${inList[4]}"]
			        },
			        {
			            name:'借出',
			            type:'bar',
			            stack: '总量',
			            label: {
			                normal: {
			                    show: true,
			                    position: 'left'
			                }
			            },
			            data:["${outList[0]}",
			            	"${outList[1]}", 
			            	"${outList[2]}", 
			            	"${outList[3]}",
			            	"${outList[4]}"]
			        }
			    ]
			};
			columnar1.setOption(option);
			})();
		//饼状图**********************************************按类别统计占比
		(function(){
			option = {
			    title : {
			        text: '各类图书的馆藏量',
			        x:'center'
			    },
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        left: 'left',
			        data: ['${typeList[0]}',
			        	   '${typeList[1]}',
			        	   '${typeList[2]}',
			        	   '${typeList[3]}',
			        	   '${typeList[4]}',
			        	   '${typeList[5]}',
			        	   '${typeList[6]}',
			        	   '${typeList[7]}'
			        	   ]
			    },
			    series : [
			        {
			            name: '图书种类',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '60%'],
			            data:[
			                {value:${typeSumList[0]},  name:'${typeList[0]}'},
			                {value:${typeSumList[1]}, name:'${typeList[1]}'},        
			                {value:${typeSumList[2]}, name:'${typeList[2]}'},
			                {value:${typeSumList[3]}, name:'${typeList[3]}'},
			                {value:${typeSumList[4]}, name:'${typeList[4]}'},
			                {value:${typeSumList[5]}, name:'${typeList[5]}'},
			                {value:${typeSumList[6]}, name:'${typeList[6]}'},
			                {value:${typeSumList[7]}, name:'${typeList[7]}'}
			                
			            ],
			            itemStyle: {
			                emphasis: {
			                    shadowBlur: 10,
			                    shadowOffsetX: 0,
			                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			                }
			            }
			        }
			    ]
			};
			
			option2 = {
				tooltip : {
					trigger: 'axis',
					axisPointer : {
						type: 'shadow'
					}
				},
				legend: {
					data:['总在馆量','总借出量'],
					orient : 'vertical',
			        x : 'left',
				},
				toolbox: {
					show : true,
					orient : 'vertical',
					y : 'center',
					feature : {
						mark : {show: true},
						magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
						restore : {show: true},
						saveAsImage : {show: true}
					}
				},
				calculable : true,
				xAxis : [
					{
						type : 'category',
						data : ['${typeList[0]}',
								'${typeList[1]}',
								'${typeList[2]}',
								'${typeList[3]}',
				        	    '${typeList[4]}',
				        	    '${typeList[5]}',
				        	    '${typeList[6]}',
				        	    '${typeList[7]}'
							]
					}
				],
				yAxis : [
					{
						type : 'value',
						splitArea : {show : true}
					}
				],
				grid: {
					x2:40
				},
				series : [
					{
						name:'总在馆量',
						type:'bar',
						stack: '总量',
						data:['${typeInList[0]}', 
							'${typeInList[1]}', 
							'${typeInList[2]}',
							'${typeInList[3]}',
							'${typeInList[4]}',
							'${typeInList[5]}',
							'${typeInList[6]}',
							'${typeInList[7]}',]
					},
					{
						name:'总借出量',
						type:'bar',
						stack: '总量',
						data:['${typeOutList[0]}',
							'${typeOutList[1]}',
							'${typeOutList[2]}',
							'${typeOutList[3]}',
							'${typeOutList[4]}',
							'${typeOutList[5]}',
							'${typeOutList[6]}',
							'${typeOutList[7]}']
					},
					
				]
			};
			
			var pie2 = echarts.init(document.getElementById("pie2"));
			pie2.setOption(option);
			
			})();
		
		//*******显示每个类别的书的总在馆量  总借出量
			(function(){
			
				option2 = {
						tooltip : {
							trigger: 'axis',
							axisPointer : {
								type: 'shadow'
							}
						},
						legend: {
							data:['总在馆量','总借出量'],
							orient : 'vertical',
					        x : 'left'
						},
						toolbox: {
							show : true,
							orient : 'vertical',
							y : 'center',
							feature : {
								mark : {show: true},
								magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
								restore : {show: true},
								saveAsImage : {show: true}
							}
						},
						calculable : true,
						xAxis : [
							{
								type : 'category',
								data : ['${typeList[0]}',
									'${typeList[1]}',
									'${typeList[2]}',
									'${typeList[3]}',
					        	    '${typeList[4]}',
					        	    '${typeList[5]}',
					        	    '${typeList[6]}',
					        	    '${typeList[7]}'
								]
							}
						],
						yAxis : [
							{
								type : 'value',
								splitArea : {show : true}
							}
						],
						grid: {
							x2:40
						},
						series : [
							{
								name:'总在馆量',
								type:'bar',
								stack: '总量',
								data:['${typeInList[0]}', 
									'${typeInList[1]}', 
									'${typeInList[2]}',
									'${typeInList[3]}',
									'${typeInList[4]}',
									'${typeInList[5]}',
									'${typeInList[6]}',
									'${typeInList[7]}',]
							},
							{
								name:'总借出量',
								type:'bar',
								stack: '总量',
								data:['${typeOutList[0]}',
									'${typeOutList[1]}',
									'${typeOutList[2]}',
									'${typeOutList[3]}',
									'${typeOutList[4]}',
									'${typeOutList[5]}',
									'${typeOutList[6]}',
									'${typeOutList[7]}']
							},
							
						]
					};
				var pie_line=echarts.init(document.getElementById("pie_line"));
				pie_line.setOption(option2)
					
			})();
		
		//柱状图********************************显示借阅数/类别比例
		(function(){
			
			var columnar3 = echarts.init(document.getElementById("columnar3"));

			option = {
				
				title: {
					text: "类别借阅数/类别总量",
					x:'center'
				},
				
			    color: ['#3398DB'],
			    tooltip : {
			        trigger: 'axis',
			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			        }
			    },
			    toolbox: {
			        feature: {
			            saveAsImage: {}
			        }
			    },
			    grid: {
			        left: '3%',
			        right: '4%',
			        bottom: '3%',
			        containLabel: true
			    },
			    xAxis : [
			        {
			            type : 'category',
			            data : ['${typeList2[0]}', 
			            	    '${typeList2[1]}', 
			            	    '${typeList2[2]}'],
			            axisTick: {
			                alignWithLabel: true
			            }
			        }
			    ],
			    yAxis : [
			        {
			            type : 'value'
			        }
			    ],
			    series : [
			        {
			            name:'类别借阅数/类别总量',
			            type:'bar',
			            barWidth: '60%',
			            data:[${rateList[0]}, ${rateList[1]},${rateList[2]}]
			        }
			    ]
			};

			columnar3.setOption(option);
			})();
		
		(function(){
			
			var myChart = echarts.init(document.getElementById("Stack"));
			
			option = {
		    title: {
		        text: '旧书借阅数据',
		        x:'center'
		    },
		    tooltip: {
		        trigger: 'axis'
		    },
		    legend: {
		    	orient : 'vertical',
		        x : 'left',
		        data:['${nameList2[0]}','${nameList2[1]}','${nameList2[2]}']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        data: [${date-4}, ${date-3},${date-2},${date-1},${date}]
		    },
		    yAxis: {
		        type: 'value'
		    },
		    series: [
		        {
		            name:'${nameList2[0]}',
		            type:'line',
		           // stack: '总量',
		            data:[${borrowTimesList[4]},
		            	${borrowTimesList[3]},
		            	${borrowTimesList[2]},
		            	${borrowTimesList[1]},
		            	${borrowTimesList[0]}]
		        },
		        {
		            name:'${nameList2[1]}',
		            type:'line',
		            //stack: '总量',
		            data:[${borrowTimesList[9]},
		            	${borrowTimesList[8]},
		            	${borrowTimesList[7]},
		            	${borrowTimesList[6]},
		            	${borrowTimesList[5]}]
		        },
		        {
		            name:'${nameList2[2]}',
		            type:'line',
		            //stack: '总量',
		            data:[${borrowTimesList[14]},
		            	${borrowTimesList[13]},
		            	${borrowTimesList[12]},
		            	${borrowTimesList[11]},
		            	${borrowTimesList[10]}]
		        }
		    ]
		};

		myChart.setOption(option);
		})();
		</script>
		
	</body>
	
</html>
