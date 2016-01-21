<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
<style type="text/css">
.bg {
	background: url(./images/bg_game.jpg);
	filter:
		"progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale')";
	-moz-background-size: 100% 100%;
	background-size: 100%;
}
</style>
</head>
<body class="bg">
	<header style="padding-top: 80px"> </header>
	<div class="container">
		<div class="row">
			<div class="col-md-1"><button type="button" class="btn btn-success">人物</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">装备</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">技能</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">觉醒</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">佣兵</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">英雄</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">勋章</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">公会</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">商店</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">商城</button></div>
			<div class="col-md-1"><button type="button" class="btn btn-success">黑店</button></div>
		</div>
		<br/>
		<div class="row"><font color="#FFA500">
		等级：<br/>
		经验：<br/>
		血量：<br/>
		魔力：<br/>
		力量：<br/>
		智力：<br/>
		体力：<br/>
		敏捷：<br/>
		<br/>
		攻击：<br/>
		防御：<br/>
		<br/>
		 攻击速度：<br/>
		 出手速度：<br/>
		 移动速度：<br/></font>
		</div>
	</div>
</body>
</html>
