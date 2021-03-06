<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.iwork.bean.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 文章列表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min.css?v=4.0.0" rel="stylesheet">
    <base target="_blank">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content  animated fadeInRight blog">
    <div class="row">
        <c:forEach var="w" items="${activities}">

            <div class="col-lg-4">
                <div class="ibox">
                    <div class="ibox-content">
                        <a href="article?id=${w.activityId}" class="btn-link">
                            <h2>
                                ${w.activityTitle}
                            </h2>
                        </a>
                        <div class="small m-b-xs">
                            <strong>${w.user.userName}</strong> <span class="text-muted"></span>
                        </div>
                        <div style="height: 20px;overflow: hidden;">${w.activityContext}</div>
                        <div class="row">
                            <div class="col-md-6">
                                <h5>操作：</h5>
                                <a href="article?id=${w.activityId}"><button class="btn btn-primary btn-xs" type="button">查看</button></a>
                                <button class="btn btn-white btn-xs" type="button" onclick="deleteOrin(${w.activityId})">删除</button>
                            </div>
                            <div class="col-md-6">
                                <div class="small text-right">
                                    <h5>状态：</h5>
                                    <div><i class="fa fa-comments-o"> </i> ${commentCount} 评论</div>
                                    <i class="fa fa-eye"> </i> 144 浏览
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.5"></script>
<script src="js/content.min.js?v=1.0.0"></script>
<script>
    function deleteOrin(activityId) {
        $.ajax({
            url:"deleteActivityById",
            type:"post",
            data:{activityId:activityId},
            success:function () {
                window.location.reload();
            },
            error:function () {
                alert("删除失败！");
            }
        });
    }
</script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>