<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./js/jquery-2.1.4.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
</head>
<body style="background-image: url(./images/bg_login.jpg)">
	<div class="container" style="width: 300px;height: 300px;margin-top: 220px;">
		<form action="http://localhost:8080/mysky/shiro/login.do" method="post">
			<div class="form-group">
				<label for="name"><font color="blue">用户帐号：</font></label> 
				<input type="text" class="form-control" id="username" name="username">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1"><font color="blue">登录密码： </font></label> 
				<input type="password" class="form-control" name="password" value="" id="password">
			</div>
			<div class="form-group" style="text-align: center;"><br/>
			<button type="submit" class="btn btn-info btn-block">登录</button>
			</div>
		</form>
	</div>
</body>
</html>