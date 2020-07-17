<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
	  xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3" xmlns="http://www.w3.org/1999/html" lang="">
<head>
<title>服务器出错了</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
BODY {
	MARGIN: 0px;
	BACKGROUND-COLOR: #000000
}

BODY {
	COLOR: #ffffff;
	FONT-FAMILY: Comic Sans MS;
	background-image: url(images/bg.jpg);
	background-repeat: repeat;
	background-color: #D9D9D9;
}

TD {
	COLOR: #ffffff;
	FONT-FAMILY: Comic Sans MS
}

TH {
	COLOR: #ffffff;
	FONT-FAMILY: Comic Sans MS
}

.style6 {
	FONT-WEIGHT: bold;
	FONT-SIZE: 12px
}

.style7 {
	FONT-SIZE: 18px
}

.style8 {
	FONT-SIZE: 12px
}

.style9 {
	FONT-SIZE: 24px;
	FONT-FAMILY: "楷体_GB2312"
}

.style10 {
	COLOR: #ff0000
}

body, td, th {
	color: #666;
}

a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	color: #666;
}

a:link {
	text-decoration: none;
	color: #06F;
}

a:visited {
	text-decoration: none;
	color: #09F;
}

a:hover {
	text-decoration: none;
	color: #09F;
}

a:active {
	text-decoration: none;
	color: #09F;
}
</style>
</head>
<body style="text-align: center;">
	<h1>404,页面走丢了</h1>

	<p></p>
	<div align="center">
		<p align="left"></p>
		<div id="catch-the-cat"></div>
	</div>

	<a href="allRegulations">返回首页</a>
	<script type="text/javascript" src="js/phaser.min.js"></script>
	<script type="text/javascript" src="js/catch-the-cat.js"></script>
	<script>
		var myVar = setInterval(myTimer, 1000);
		var time = 0;
		function myTimer() {
			time += 1;
			document.getElementById("time").innerHTML = time;
		}
		window.game = new CatchTheCatGame({
			w : 11,
			h : 11,
			r : 20,
			backgroundColor : 16777215,
			parent : "catch-the-cat",
			statusBarAlign : "center",
			credit : "&nbsp; "
		})
	</script>
</body>
</html>

