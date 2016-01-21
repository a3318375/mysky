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
<title>Insert title here</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./js/jquery-2.1.4.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script type="text/javascript">
    var webSocket =
      new WebSocket('ws://localhost:8080/mysky/websocket');
 
    webSocket.onerror = function(event) {
      onError(event)
    };
 
    webSocket.onopen = function(event) {
      onOpen(event)
    };
 
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
 
    function onMessage(event) {
      document.getElementById('messages').innerHTML
        += '<br />' + event.data;
    }
 
    function onOpen(event) {
      document.getElementById('messages').innerHTML
        = 'Connection established';
    }
 
    function onError(event) {
      alert(event.data);
    }
 
    function start() {
      webSocket.send($("#message").val());
      return false;
    }
  </script>
</head>
<body>
<div class="container">
<div id="messages"></div>
<input type="text" class="form-control" id="message" name="message"/>
<button type="button" class="btn btn-success" onclick="start();">发送</button>
</div>
</body>
</html>