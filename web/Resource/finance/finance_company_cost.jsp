<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - Flot图表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">
    <style type="text/css">
        #box {

            height: 300px;
            overflow-x: hidden;
            overflow-y: scroll;
            line-height: 30px;
            text-align: center;
        }

        #box::-webkit-scrollbar {
            display: none;
        }
    </style>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <ul id="myTab" class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#home" data-toggle="tab">财务一览</a></li>
        <li role="presentation"><a href="#profile" data-toggle="tab">财务清单</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="home">
            <div class="row">
                <div class="col-sm-6">
                    <div class="ibox" id="box" style="height: 300px;">

                        <div id="yearselectBtnGroup">
                            <c:forEach items="${years}" var="year" varStatus="vs">
                                <c:choose>
                                    <c:when test="${vs.last}">
                                        <span id="latestYear" class="btn btn-block btn-primary year"
                                              onclick="changeFinanceData(this)">${year}年</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="btn btn-block btn-default year"
                                              onclick="changeFinanceData(this)">${year}年</span>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>饼状图</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="graph_flot.html#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="graph_flot.html#">选项1</a>
                                    </li>
                                    <li><a href="graph_flot.html#">选项2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-pie-chart"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>多轴线图表示例</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="graph_flot.html#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="graph_flot.html#">选项1</a>
                                    </li>
                                    <li><a href="graph_flot.html#">选项2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-line-chart-multi"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="tab-pane fade " id="profile">

            <div class="btn-group hidden-xs" id="toolbar_finance" role="group">
                <button type="button" class="btn btn-outline btn-default">
                    <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                </button>

                <button type="button" class="btn btn-outline btn-default" onclick="deleteFinance()">
                    <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                </button>

            </div>
                <table id="finance"></table>
<%--            <table  id="finance"--%>
<%--                    data-toggle="table"--%>
<%--                    data-url="getFinanceCost"--%>
<%--                    data-pagination="true"--%>
<%--                    data-search="true" >--%>
<%--                <thead>--%>
<%--                <tr>--%>
<%--                    <th data-field="financeId">流水号</th>--%>
<%--                    <th data-field="user.userName">创建人</th>--%>
<%--                    <th data-field="createTime">创建时间</th>--%>
<%--                    <th data-field="expense">金额</th>--%>
<%--                    <th data-field="expenseType">类型</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--            </table>--%>
            <%--            <table id="finance">--%>
            <%--                <tbody>--%>
            <%--                <c:forEach items="${financeCosts}" var="fc">--%>
            <%--                    <tr data-id="${fc.financeId}">--%>
            <%--                        <td></td>--%>
            <%--                        <td>${fc.financeId}</td>--%>
            <%--                        <td>${fc.user.userName}</td>--%>
            <%--                        <td>${fc.createTime}</td>--%>
            <%--                        <td>${fc.expense}</td>--%>
            <%--                        <td>${fc.expenseType}</td>--%>
            <%--                    </tr>--%>
            <%--                </c:forEach>--%>
            <%--                </tbody>--%>
            <%--            </table>--%>
        </div>
    </div>
</div>
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.5"></script>
<script src="../js/plugins/flot/jquery.flot.js"></script>
<script src="../js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="../js/plugins/flot/jquery.flot.resize.js"></script>
<script src="../js/plugins/flot/jquery.flot.pie.js"></script>
<script src="../js/content.min.js?v=1.0.0"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="../js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
    $("#yearselectBtnGroup").on('click', 'span', function () {
        $("#yearselectBtnGroup span").addClass("btn-default");
        $(this).removeClass("btn-default");
        $(this).addClass("btn-primary");
    });
    var data = [
        {label: "支出", data: 1},
        {label: "收入", data: 1}
    ];

    $("#home").show(function () {
        $.plot($("#flot-pie-chart"), data, {
            series: {
                pie: {
                    show: true //显示饼图
                }
            },
            legend: {
                show: false //不显示图例
            }
        });
        $.plot($("#flot-line-chart-multi"), [
                {label: "支出", data: [[1, 123], [2, 314], [3, 223]]},
                {label: "收入", data: [[1, 133], [2, 151], [3, 333]]},
                {label: "单位：元", data: [1, 0]}
            ],
            {
                xaxis: {
                    ticks: [[1, "一月"], [2, "二月"], [3, "三月"], [4, "四月"], [5, "五月"], [6, "六月"],
                        [7, "七月"], [8, "八月"], [9, "九月"], [10, "十月"], [11, "十一月"], [12, "十二月"], [13, " "]],
                    min: 1,
                    max: 13
                }
            });
    });
</script>
<script src="../js/plugins/layer/layer.js"></script>
<script src="../js/json2.js"></script>
<script src="../iwork_js/finance.js"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
<script>
    var datenow = new Date(+new Date() + 8 * 3600 * 1000).toISOString().replace(/T/g, ' ').replace(/\.[\d]{3}Z/, '');//格式2019-07-18 11:40:31
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    if (month < 10) {
        month = "0" + month;
    }
    if (day < 10) {
        day = "0" + day;
    }//年月日

    $("#toolbar_finance").children().eq(0).click(function () {
        layer.open({
            type: 1,
            title: '财务清单',
            fix: false,
            shadeClose: true,
            closeBtn: 0,
            area: ['1000px', '500px'],
            content: $('#create_finance'),//这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
            success: function () {
                $("#create_time").val(year + month + day);
            }
        });
    });
    $(function () {
        //1.初始化Table
        var oTable = new TableInit();

        oTable.Init();
        s.Init();

        //2.初始化Button的点击事件
        /* var oButtonInit = new ButtonInit();
        oButtonInit.Init(); */

    });
    var TableInit = function () {
        var oTableInit = new Object();

        //初始化Table
        oTableInit.Init = function () {
            $("#finance").bootstrapTable({
                url: 'getFinanceCost',     //请求后台的URL（*）
                method: 'get',           //请求方式（*）
                toolbar: '#toolbar_finance',        //工具按钮用哪个容器
                striped: true,           //是否显示行间隔色
                cache: false,            //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
                pagination: true,          //是否显示分页（*）
                sortable: false,           //是否启用排序
                sortOrder: "desc",          //排序方式
                // queryParams: oTableInit.queryParams,//传递参数（*）
                sidePagination: "client",      //分页方式：client客户端分页，server服务端分页（*）
                pageNumber: 1,            //初始化加载第一页，默认第一页
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
                    field: 'checkbox',
                    checkbox: true
                }, {
                    field: 'financeId',
                    title: '流水号'
                }, {
                    field: 'user.userName',
                    title: '创建人'
                }, {
                    field: 'createTime',
                    title: '创建时间'
                }, {
                    field: 'expense',
                    title: '金额'
                }, {
                    field: 'expenseType',
                    title: '类型'
                },]
            });
        };

        //得到查询的参数
        // oTableInit.queryParams = function (params) {
        //     var temp = {  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
        //         limit: params.limit,  //页面大小
        //         offset: params.offset, //页码
        //         sdate: $("#stratTime").val(),
        //         edate: $("#endTime").val(),
        //         sellerid: $("#sellerid").val(),
        //         orderid: $("#orderid").val(),
        //         CardNumber: $("#CardNumber").val(),
        //         maxrows: params.limit,
        //         pageindex: params.pageNumber,
        //         portid: $("#portid").val(),
        //         CardNumber: $("#CardNumber").val(),
        //         tradetype: $('input:radio[name="tradetype"]:checked').val(),
        //         success: $('input:radio[name="success"]:checked').val(),
        //     };
        //     return temp;
        // };
        return oTableInit;
    };

</script>
</body>
<div hidden="true" class="wrapper wrapper-content " id="create_finance">
    <div class="row">
        <form class="form-horizontal">
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">流水号：</label>

            <div class="col-sm-10">
                <input id="financeId" name="title_note" type="text" placeholder="流水号" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">创建人：</label>

            <div class="col-sm-10">
                <input id="createUserId" name="title_note" type="text" placeholder="创建人" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">创建时间：</label>

            <div class="col-sm-10">
                <input id="create_time" name="title_note" type="text" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <label class="col-sm-2 control-label">金额：</label>

            <div class="col-sm-10">
                <input id="expense" name="title_note" type="text" placeholder="金额" class="form-control">
            </div>
        </div>
    </div>
    <div class="row">

        <div class="form-group">
            <label class="col-sm-2 control-label">类型：</label>

            <div class="col-sm-10">
                <select id="expenseType" class="form-control" name="content">
                    <option value="1">奖金</option>
                    <option value="2">补贴</option>
                    <option value="3">项目开销</option>
                    <option value="4">其他</option>
                    <option value="5">收入</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row">

    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <a id="create" class="btn btn-sm center btn-white" onclick="addFinance()">创建</a>
            </div>
        </div>
    </div>
    </form>

</div>
</html>