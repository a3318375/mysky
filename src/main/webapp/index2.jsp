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
<script type="text/javascript">
	function myclick(obj) {
		$('.active').removeClass('active');
		$(obj).parent().attr("class", 'active');
	}
	function getDatas(val){
		$.ajax( {  
			url:'/mysky/article/list',// 跳转到 action  
			data:{  
				pageNo : val
			},  
			type:'post',  
			dataType:'json',  
			success:function(data) {  
				if(data.msg =="true" ){  
					// view("修改成功！");  
				    alert("修改成功！");  
				    window.location.reload();  
			     }else{  
					view(data.msg);  
				 }  
			} 
		});
	}
</script>
</head>
<body>
	<header class="navbar navbar-static-top mac-docs-nav" id="top"
		role="banner">
		<div class="container">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="navbar-header" style="margin-left: 100px;">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#example-navbar-collapse">
						<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><font color="#FF7F00">无邪蝶恋</font></a>
				</div>
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<!-- 				<li class="active"><a href="#">iOS</a></li> -->
						<li><a href="#" onclick="myclick(this);">java</a></li>
						<li><a href="#" onclick="myclick(this);">git</a></li>
						<li><a href="#" onclick="myclick(this);">架构</a></li>
						<li><a href="#" onclick="myclick(this);">游戏交流</a></li>
						<li><a href="#" onclick="myclick(this);">美图分享</a></li>
						<li><a href="#" onclick="myclick(this);">音乐推荐</a></li>
						<li><a href="#" onclick="myclick(this);">关于我</a></li>
						<!-- 				<li class="dropdown"><a href="#" class="dropdown-toggle" -->
						<!-- 					data-toggle="dropdown"> Java <b class="caret"></b> -->
						<!-- 				</a> -->
						<!-- 					<ul class="dropdown-menu"> -->
						<!-- 						<li><a href="#">jmeter</a></li> -->
						<!-- 						<li><a href="#">EJB</a></li> -->
						<!-- 						<li><a href="#">Jasper Report</a></li> -->
						<!-- 						<li class="divider"></li> -->
						<!-- 						<li><a href="#">分离的链接</a></li> -->
						<!-- 						<li class="divider"></li> -->
						<!-- 						<li><a href="#">另一个分离的链接</a></li> -->
						<!-- 					</ul></li> -->
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<div class="container-fluid">
		<div class="col-lg-7" style="margin-left: 70px;">
			<h3>
				<font color="#FF6A6A">哈哈哈</font>
			</h3>
			<div class="post-desc">因为工作项目中需要，在网上找了好久都没有很齐全的省市区数据解决方案，要么是只有SQL，要么是省市区数据过时。要么是只有JS插件，数据包不匹配。所以决定自己整理一套齐全的省市区数据解决方案。并分享出来。希望能帮助大</div>
			<p class="text-muted text-small">2015-12-04 09:12:00</p>
			<p class="text-right text-muted text-small">
				<span class="glyphicon glyphicon-eye-open"></span>
				3&nbsp;&nbsp;&nbsp;&nbsp; <span
					class="glyphicon glyphicon-thumbs-up"></span> 0
			</p>
			<hr>
		</div>
		<div class="col-lg-3 col-md-offset-1">
			<form method="get" accept-charset="utf-8" role="form" action="/">
				<div class="form-group text">
					<div class="input-group">
						<span class="input-group-addon">搜索</span><input type="text"
							name="q" placeholder="搜你想搜" id="q" class="form-control">
					</div>
				</div>
			</form>
			<h4 class="section-title">最新的文章</h4>
			<ul class="list-unstyled list-text">
				<li><a href="/posts/view/134">解决：IOS9抛出App Transport
						Security has blocked a cleartext HTTP (http://) resource load ……</a></li>
				<li><a href="/posts/view/133">Swift 的UIAlertController 用法</a></li>
				<li><a href="/posts/view/132">让CakePHP3的Shell脚本开机自动运行</a></li>
				<li><a href="/posts/view/131">ubuntu创建和删除软链接</a></li>
				<li><a href="/posts/view/130">beanstalkd ubuntu下安装与使用教程</a></li>
			</ul>
			<h4 class="section-title">热门的文章</h4>
			<ul class="list-unstyled list-text">
				<li><a href="/posts/view/67">解决百度编辑器提示：后端配置项没有正常加载，上传插件不能正常使用！</a></li>
				<li><a href="/posts/view/1">关于我</a></li>
				<li><a href="/posts/view/112">淘宝网商品SKU系统设计经验分享</a></li>
				<li><a href="/posts/view/71">安装CakePHP 3.0+ 出现 Fatal error:
						You must enable the intl extension to use CakePHP. </a></li>
				<li><a href="/posts/view/23">jQuery 1.11.0 CHM帮助文档（电子书）</a></li>
			</ul>
			<h4 class="section-title">最新的评论</h4>
			<ul class="list-unstyled list-text">
			</ul>
			<div id="feed-container">
				<h4 class="section-title">
					<a href="https://github.com/macnie">macnie’s Activity</a>
				</h4>
				<ul class="list-text list-unstyled">
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/badoo/Chatto"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">badoo/Chatto</a>
							</div>

							<div class="time">
								<time datetime="2015-12-02T15:28:18Z" is="relative-time">Dec
									2, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/ircmaxell/filterus"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">ircmaxell/filterus</a>
							</div>

							<div class="time">
								<time datetime="2015-12-02T15:07:24Z" is="relative-time">Dec
									2, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/YANGReal/JokeClient-Swift"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">YANGReal/JokeClient-Swift</a>
							</div>

							<div class="time">
								<time datetime="2015-12-02T13:04:03Z" is="relative-time">Dec
									2, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/ortuman/SwiftForms"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">ortuman/SwiftForms</a>
							</div>

							<div class="time">
								<time datetime="2015-12-02T12:56:58Z" is="relative-time">Dec
									2, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/EasyIOS/EasyIOS-Swift"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">EasyIOS/EasyIOS-Swift</a>
							</div>

							<div class="time">
								<time datetime="2015-12-02T12:56:56Z" is="relative-time">Dec
									2, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/jacksonly/ShiXiSeng_ios"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">jacksonly/ShiXiSeng_ios</a>
							</div>

							<div class="time">
								<time datetime="2015-11-30T14:54:21Z" is="relative-time">Nov
									30, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/mnapoli/phpBeanstalkdAdmin"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">mnapoli/phpBeanstalkdAdmin</a>
							</div>

							<div class="time">
								<time datetime="2015-11-30T02:32:25Z" is="relative-time">Nov
									30, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/beanstalkd/pybeanstalk"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">beanstalkd/pybeanstalk</a>
							</div>

							<div class="time">
								<time datetime="2015-11-30T02:32:15Z" is="relative-time">Nov
									30, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/Alamofire/Alamofire"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">Alamofire/Alamofire</a>
							</div>

							<div class="time">
								<time datetime="2015-11-29T12:25:50Z" is="relative-time">Nov
									29, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/wantedly/swift-rss-sample"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">wantedly/swift-rss-sample</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T16:25:39Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/uglide/RedisDesktopManager"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">uglide/RedisDesktopManager</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T14:31:09Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/JakeLin/SwiftWeather"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">JakeLin/SwiftWeather</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T06:09:35Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/ipader/SwiftGuide"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">ipader/SwiftGuide</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T05:58:04Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/SwiftyJSON/SwiftyJSON"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">SwiftyJSON/SwiftyJSON</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T05:53:01Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/vikmeup/SCLAlertView-Swift"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">vikmeup/SCLAlertView-Swift</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T05:52:10Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/sxyx2008/Swift-PM25"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">sxyx2008/Swift-PM25</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T05:18:03Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/beecloud/beecloud-ios"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">beecloud/beecloud-ios</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T05:14:04Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/beecloud/beecloud-php"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">beecloud/beecloud-php</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T02:03:17Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/baijunjie/jQuery-photoClip"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">baijunjie/jQuery-photoClip</a>
							</div>

							<div class="time">
								<time datetime="2015-11-28T00:55:01Z" is="relative-time">Nov
									28, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/easonwzs/STSwift"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">easonwzs/STSwift</a>
							</div>

							<div class="time">
								<time datetime="2015-11-27T16:48:21Z" is="relative-time">Nov
									27, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/think2011/localResizeIMG"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">think2011/localResizeIMG</a>
							</div>

							<div class="time">
								<time datetime="2015-11-27T07:51:50Z" is="relative-time">Nov
									27, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/alibaba/RocketMQ"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">alibaba/RocketMQ</a>
							</div>

							<div class="time">
								<time datetime="2015-11-27T07:24:47Z" is="relative-time">Nov
									27, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/kr/beanstalkd"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">kr/beanstalkd</a>
							</div>

							<div class="time">
								<time datetime="2015-11-21T08:30:26Z" is="relative-time">Nov
									21, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/davidpersson/beanstalk"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">davidpersson/beanstalk</a>
							</div>

							<div class="time">
								<time datetime="2015-11-21T08:20:26Z" is="relative-time">Nov
									21, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/phpmyadmin/phpmyadmin"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">phpmyadmin/phpmyadmin</a>
							</div>

							<div class="time">
								<time datetime="2015-11-18T03:18:23Z" is="relative-time">Nov
									18, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/wosiwo/KeywordFilteringService"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">wosiwo/KeywordFilteringService</a>
							</div>

							<div class="time">
								<time datetime="2015-11-15T02:04:39Z" is="relative-time">Nov
									15, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/laravel/laravel"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">laravel/laravel</a>
							</div>

							<div class="time">
								<time datetime="2015-11-03T08:08:28Z" is="relative-time">Nov
									3, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/shenzhe/zphp"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">shenzhe/zphp</a>
							</div>

							<div class="time">
								<time datetime="2015-11-03T08:01:26Z" is="relative-time">Nov
									3, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/FriendsOfCake/process-mq"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">FriendsOfCake/process-mq</a>
							</div>

							<div class="time">
								<time datetime="2015-11-03T07:19:20Z" is="relative-time">Nov
									3, 2015</time>
							</div>
						</div>
					</li>
					<li>
						<!-- watch -->
						<div class="simple">
							<span class="octicon octicon-star" aria-label="Watch"></span>

							<div class="title">
								<a href="https://github.com/macnie"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:actor"
									target="_blank">macnie</a> starred <a
									href="https://github.com/lchb369/swooleIM"
									data-ga-click="News feed, event click, Event click type:WatchEvent target:repo"
									target="_blank">lchb369/swooleIM</a>
							</div>

							<div class="time">
								<time datetime="2015-10-30T06:48:35Z" is="relative-time">Oct
									30, 2015</time>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<script type="text/javascript">
				$.get('/api/feeds/read', {}, function(data) {
					var a = $('<a></a>').attr('href', data.link).html(data.title);
					var title = $('<h4></h4>').attr('class', 'section-title').html(a);
					$("#feed-container").append(title);
					var ul = $('<ul class="list-text list-unstyled"></ul>');
					$.each(data.items, function(i) {
						var li = $('<li></li>').html(this.description)
						li.find('a').each(function() {
							$(this).attr('href', 'https://github.com' + $(this).attr('href')).attr('target', '_blank')
						})
						ul.append(li);
					})
					$("#feed-container").append(ul);
				}, 'json')
			</script>
		</div>
	</div>
	<div class="container">
		<ul class="pagination">
			<li><a href="#">&laquo;</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>
	</div>
</body>
</html>
