<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>H+ 后台主题UI框架 - 主页</title>

    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="Resource/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="Resource/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="Resource/css/animate.min.css" rel="stylesheet">
    <link href="Resource/css/style.min.css?v=4.0.0" rel="stylesheet">
	<link href="Resource/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
</head>

<body class="gray-bg" >  
	<div class="wrapper wrapper-content">
		<ul id="myTab" class="nav nav-tabs">
			<li role="presentation" class="active"><a href="#home" data-toggle="tab">名单</a></li>
			<li role="presentation"><a href="#profile" data-toggle="tab">本日考勤情况</a></li>
			<li role="presentation"><a href="#statistic" data-toggle="tab">出勤统计</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
                       <div class="example-wrap">
                        
                         <div class="example">							
                             <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
                                 <button type="button" class="btn btn-outline btn-default">
                                     <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                 </button>
                                 <button type="button" class="btn btn-outline btn-default">
                                     <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
                                 </button>
                                 <button type="button" class="btn btn-outline btn-default">
                                     <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                 </button>
								 
                             </div>
                             <table id="exampleTableToolbar" data-mobile-responsive="true">
                                 <thead>
                                     <tr>
										 <th data-field="url">工号</th>
                                         <th data-field="name">姓名</th>
                                         <th data-field="star">状态</th>
                                         <th data-field="license">去向</th>
                                         <th data-field="description">描述</th>                                         
                                     </tr>
                                 </thead>
                             </table>
                         </div>
                     </div>
                                                            
			</div>
			
			<div class="tab-pane fade" id="profile">
							 <div class="example-wrap">
							    
							    <div class="example">
							        <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
							            <button type="button" class="btn btn-outline btn-default">
							                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
							            </button>
							            <button type="button" class="btn btn-outline btn-default">
							                <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
							            </button>
							            <button type="button" class="btn btn-outline btn-default">
							                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
							            </button>
							        </div>
							        <table id="tradeList" >
							            <thead>
							              
										</thead>
							        </table>
							    </div>
							</div>
							                        	
			</div>
			<div class="tab-pane fade" id="statistic">
							 <div class="example-wrap">
							  
							    <div class="example">
							        <div class="btn-group hidden-xs" id="toolbar" role="group">
							            <button type="button" class="btn btn-outline btn-default">
							                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
							            </button>
							            <button type="button" class="btn btn-outline btn-default">
							                <i class="glyphicon glyphicon-heart" aria-hidden="true"></i>
							            </button>
							            <button type="button" class="btn btn-outline btn-default">
							                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
							            </button>
							        </div>
							        <table id="ab_statistic" data-url="Resource/js/my/test.json" data-mobile-responsive="true">
							            <thead>
											<th data-field = "checkbox"></th>
							              <th data-field="uid">工号</th>
							              <th data-field="uname">姓名</th>
										  <th data-field="normal_signin">正常打卡</th>
										  <th data-field="late_signin">迟到</th>
										  <th data-field="vocation_signin">请假</th>
										  <th data-field="absence_signin">旷工</th>
										</thead>
							        </table>
							    </div>
							</div>
							                        	
			</div>
		</div>

    </div>
    <script src="Resource/js/jquery.min.js?v=2.1.4"></script>
    <script src="Resource/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="Resource/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="Resource/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="Resource/js/plugins/layer/layer.min.js"></script>
    <script src="Resource/js/hplus.min.js?v=4.0.0"></script>
    <script type="text/javascript" src="Resource/js/contabs.min.js"></script>
    <script src="Resource/js/plugins/pace/pace.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script src="Resource/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script src="Resource/js/demo/bootstrap-table-demo.min.js"></script>

		<!-- 日期Daterange picker -->
	<link href="Resource/js/datetimepicker/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />	
	<!-- 日期控件 -->
	<script src="Resource/js/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script src='Resource/js/datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js'></script>
	<script>
		$('#starttime').datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
			minView : 0, //日期时间选择器所能够提供的最精确的时间选择视图
			minuteStep:1,//分钟
			formatViewType : 'time'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
			var startTime = event.date;
			$("#expirationDate").datetimepicker('setStartDate',startTime);
			$("#expirationDate").val("");
		});
		$('#expirationDate').datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : 'zh-CN',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,//日期时间选择器打开之后首先显示的视图。 可接受的值：//0 分钟视图；1小时
			minView : 0, //日期时间选择器所能够提供的最精确的时间选择视图
			minuteStep:1,//分钟
			formatViewType : 'time'
		}).on('hide', function(event) {
			event.preventDefault();
			event.stopPropagation();
			var endTime = event.date;
			$("#startDate").datetimepicker('setEndDate',endTime);
		});
	
	</script>
	<script>
		
		$(function () {
		
		
			//1.初始化Table
			var oTable = new TableInit();
			var s = new newTableInit();
			
			
			oTable.Init();
			s.Init();
			
			$table = $("table");
			
			//2.初始化Button的点击事件
			/* var oButtonInit = new ButtonInit();
			oButtonInit.Init(); */
		 
		  });
				 
		$("#toolbar .btn")[2].click(function(){
			alert("test");
		});
		var TableInit = function () {
		var oTableInit = new Object();
		
		//初始化Table
		oTableInit.Init = function () {
			
			$("#tradeList").bootstrapTable({
			url: '/VenderManager/TradeList',     //请求后台的URL（*）
			method: 'get',           //请求方式（*）
			toolbar: '#toolbar',        //工具按钮用哪个容器
			striped: true,           //是否显示行间隔色
			cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination: true,          //是否显示分页（*）
			sortable: false,           //是否启用排序
			sortOrder: "asc",          //排序方式
			queryParams: oTableInit.queryParams,//传递参数（*）
			sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
			pageNumber:1,            //初始化加载第一页，默认第一页
			pageSize: 50,            //每页的记录行数（*）
			pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
			search: true, 
			showRefresh: true, 
			clickToSelect: true,
			strictSearch: true,
			clickToSelect: true,        //是否启用点击选中行
			uniqueId: "id",           //每一行的唯一标识，一般为主键列
			cardView: false,          //是否显示详细视图
			detailView: false,          //是否显示父子表
			columns: [{
			  field: 'id',
			  title: '工号'
			}, {
			  field: 'name',
			  title: '姓名'
			}, {
			  field: 'time_m_a',
			  title: '9:00',
			  
			}, {
			  field: 'time_n_l',
			  title: '12:00'
			}, {
			  field: 'time_n_a',
			  title: '14:00'
			}, {
			  field: 'time_a_l',
			  title: '17:00'
			}, {
			  field: 'time_night_a',
			  title: '19:00'
			}, {
			  field: 'time_night_l',
			  title: '21:00'
			},]
			});
			};
		
			//得到查询的参数
			oTableInit.queryParams = function (params) {
			var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			limit: params.limit,  //页面大小
			offset: params.offset, //页码
			sdate: $("#stratTime").val(),
			edate: $("#endTime").val(),
			sellerid: $("#sellerid").val(),
			orderid: $("#orderid").val(),
			CardNumber: $("#CardNumber").val(),
			maxrows: params.limit,
			pageindex:params.pageNumber,
			portid: $("#portid").val(),
			CardNumber: $("#CardNumber").val(),
			tradetype:$('input:radio[name="tradetype"]:checked').val(),
			success:$('input:radio[name="success"]:checked').val(),
			};
			return temp;
			};
			return oTableInit;
		};
		
		var newTableInit = function () {
		var oTableInit = new Object();
		var data =[{"uid":"hjl1","uname":"special","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"},{"uid":"hjl1","uname":"hjl","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"},{"uid":"hjl1","uname":"hjl","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"},{"uid":"hjl1","uname":"hjl","normal__signin":"1","late_signin":"2","vocation_signin":"3","absence_signin":"4"}];
		//初始化Table
		function operateFormatter(value, row, index) {
		            return [
		                '<a type="button" class="btn  btn-sm" ><i class="glyphicon glyphicon-remove"></i></a>'
		            ].join('');
		        }
		oTableInit.Init = function () {
			$('#ab_statistic').bootstrapTable({
			data:data,//请求方式（*）
			toolbar: '#toolbar',        //工具按钮用哪个容器
			striped: true,           //是否显示行间隔色
			cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination: true,          //是否显示分页（*）
			sortable: false,           //是否启用排序
			sortOrder: "asc",          //排序方式
			queryParams: oTableInit.queryParams,//传递参数（*）
			sidePagination: "server",      //分页方式：client客户端分页，server服务端分页（*）
			pageNumber:1,            //初始化加载第一页，默认第一页
			pageSize: 50,            //每页的记录行数（*）
			pageList: [10, 25, 50, 100],    //可供选择的每页的行数（*）
			strictSearch: true,
			clickToSelect: true,        //是否启用点击选中行
					//行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			uniqueId: "id",           //每一行的唯一标识，一般为主键列
			cardView: false,          //是否显示详细视图
			detailView: false,          //是否显示父子表
			columns: [ {		
				field:'checkbox',
				checkbox:true
				},{
		            field: 'uid',
		            title: '工号'
		            }, {
		                field: 'uname',
		                title: '姓名'
		            }, {
		                field: 'normal__signin',
		                title: '正常打卡',
						formatter:function(value,row,index) {
							//通过判断单元格的值，来格式化单元格，返回的值即为格式化后包含的元素
							var a = "";
						    	if(value == "1") {//已签
						    		var a = '<span style="color:#00ff00">'+value+'</span>';
						    	}else if(value == "0"){//未签
						    		var a = '<span style="color:#0000ff">'+value+'</span>';
						    	}else if(value == "2") {//迟到
						    		var a = '<span style="color:#FF0000">'+value+'</span>';
						    	}else if(value == "3") {//早退
						    		var a = '<span style="color:#FFF000">'+value+'</span>';
						    	}else{
						    		var a = '<span>'+value+'</span>';
						    	}
								return a;
								
						}
		            },{
		                field: 'late_signin',
		                title: '迟到'
		            }, {
		                field: 'vocation_signin',
		                title: '请假'
		            }, {
		                field: 'absence_signin',
		                title: '旷工'
		            }],
			
		
			});
			
			};
		
			//得到查询的参数
			oTableInit.queryParams = function (params) {
			var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			limit: params.limit,  //页面大小
			offset: params.offset, //页码
			sdate: $("#stratTime").val(),
			edate: $("#endTime").val(),
			sellerid: $("#sellerid").val(),
			orderid: $("#orderid").val(),
			CardNumber: $("#CardNumber").val(),
			maxrows: params.limit,
			pageindex:params.pageNumber,
			portid: $("#portid").val(),
			CardNumber: $("#CardNumber").val(),
			tradetype:$('input:radio[name="tradetype"]:checked').val(),
			success:$('input:radio[name="success"]:checked').val(),
			};
			return temp;
			};
			return oTableInit;
		};
		
		
	</script>
</body>

</html>