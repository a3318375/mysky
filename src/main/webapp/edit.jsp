<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>主页</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./js/jquery-2.1.4.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <!-- 加载编辑器的容器 -->
    <script id="container" name="content" type="text/plain" style="width: 1000px;height: 300px;">
    </script>
    <!-- 配置文件 -->
    <script type="text/javascript" src="./uediter/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="./uediter/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container');
        function mysubmit() {
        	var html = ue.getContent();
        	alert(html);
		}
    </script>
    <br/>
   <button type="button" class="btn btn-warning">存为草稿</button>&nbsp;&nbsp;&nbsp;&nbsp;
   <button type="button" class="btn btn-warning" onclick="mysubmit();">发布</button>
</div>
</body>
</html>
