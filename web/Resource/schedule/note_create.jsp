<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>H+ 后台主题UI框架 - Bootstrap3 Markdown编辑器</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="../css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/plugins/markdown/bootstrap-markdown.min.css" />
    <link href="../css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">

    <!-- Sweet Alert -->
    <link href="../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
				<form class="form-horizontal">
				<div class="row">
                    <div class="form-group">
                        <label class="col-sm-1 control-label">主题：</label>
                    
                        <div class="col-sm-9">
                            <input id="title_note" name="title" type="text" placeholder="主题" class="form-control">
                        </div>
                    </div>
                </div>  
                <div class="row">
					 <div class="form-group">
					    <label class="col-sm-1 control-label">内容：</label>
					    <div class="col-sm-9">
					        <textarea id="detail_note" name="content" data-provide="markdown" rows="10"></textarea> 
					    </div>
					</div>
                </div>   
				<div class="row">
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					        <a class="btn btn-sm center btn-white cancel" href="calendar_note.jsp" target="_self">取消</a>
							<a id="createNote" class="btn btn-sm center btn-white">创建</a>
					    </div>
					</div>
				</div>		   
                </form>
    </div>
    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.5"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>

    <script src="../js/plugins/sweetalert/sweetalert.min.js"></script>
    <script src="../iwork_js/note.js"></script>
    <script src="../iwork_js/timeControl.js"></script>

    <script type="text/javascript" src="../js/plugins/markdown/markdown.js"></script>
    <script type="text/javascript" src="../js/plugins/markdown/to-markdown.js"></script>
    <script type="text/javascript" src="../js/plugins/markdown/bootstrap-markdown.js"></script>
    <script type="text/javascript" src="../js/plugins/markdown/bootstrap-markdown.zh.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<script>
		function callbackdata(){
			var title = $("#title_note").val();
			var detail =$("#detail_note").val();
				
			var data ={
				note_title:title,
				note_detail:detail
			}
			return data;
		}
	</script>
</body>

</html>