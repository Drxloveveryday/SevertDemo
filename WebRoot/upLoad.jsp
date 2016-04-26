<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'upLoad.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="babyzone.js"></script>
<style type="text/css">
#main {
	width: 100%;
	height: 2000px;
	margin: 0px auto;
}

#header {
	width: 100%;
	height: 80px;
	background: #EDEDED;
}

#picture_play {
	width: 100%;
	height: 500px;
	border: 1px solid #666;
	position: relative;
	overflow: hidden;
	margin: 0px auto;
}

#picture_list img {
	max-width: 100%;
	max-height: 100%;
	border: 0px;
}

#picture_bg {
	position: absolute;
	bottom: 0;
	background-color: #000;
	width: 100%;
	height: 30px;
	filter: Alpha(Opacity = 30);
	opacity: 0.3;
	z-index: 1000;
	cursor: pointer;
}

#picture_info {
	position: absolute;
	bottom: 0;
	left: 5px;
	line-height: 30px;
	color: #fff;
	z-index: 1001;
}

#picture_play ul {
	position: absolute;
	list-style-type: none;
	filter: Alpha(Opacity = 75);
	opacity: 0.75;
	border: 1px solid #fff;
	z-index: 1002;
	margin: 0;
	padding: 0;
	bottom: 3px;
	right: 5px;
}

#picture_play ul li {
	padding: 0px 8px;
	float: left;
	display: block;
	color: #FFF;
	border: #fff 1px solid;
	background-color: #6f4f67;
	cursor: pointer;
}

#picture_play ul li.on {
	background-color: #900;
}

#picture_list a {
	position: absolute;
}

.login_title {
	width: 200px;
	height: 80px;
	float: left;
}

.user_info {
	width: 200px;
	height: 60px;
	float: right;
}

#container {
	width: 100%;
	height: 1760px;
}

nav {
	width: 1400px;
	display: block;
	min-height: 60px;
	padding: 0 5px 0 8px;
	border: 1px solid #cdbec4;
	margin-right: 5px;
	box-sizing: border-box;
	box-shadow: 10px;
	border-radius: 10px;
	background-clip: padding-box;
	z-index: 20;
	position: relative;
	overflow: hidden;
}

nav li {
	line-height: 30px;
	float: left;
	padding: 0 80px;
	list-style-type: none;
}

nav li a {
	padding: 3px 10px;
	text-decoration: none;
	font-weight: bold;
	color: #ccc;
	color: rgba(255, 255, 255, 0.7);
	text-shadow: 0 3px 3px rgba(0, 0, 0, 0.5);
	border-radius: 8px;
	transition: all 0.3s ease-in-out;
}

nav li a:hover,nav li a:focus {
	width: 30px;
	color: #fff;
	background: rgba(255, 255, 255, 0.15);
}

nav.bg {
	height: 60px;
	margin: 0px auto;
	background: black;
}

.mainbody {
	width: 1400px;
	height: 1200px;
	background: #ADFF2F;
	margin: 0px auto;
}

.main_left {
	width: 250px;
	height: 1200px;
	background: #AEEEEE;
	float: left;
}

.main_mid {
	width: 900px;
	height: 1200px;
	background: #9370DB;
	float: left;
}

.main_table {
	margin: 0 auto;
}

.main_right {
	width: 250px;
	height: 1200px;
	background: #4876FF;
	float: left;
}

#footer {
	width: 100%;
	height: 160px;
	float: left;
	background: #EE9A00;
}
</style>
<script type="text/javascript" language="javascript">
            window.onload=function(){
                babyzone.scroll(5,"picture_list","list","picture_info")
            }
        </script>
</head>

<body id="main">
	<div id="header">
		<div class="login_title">
			<span>Compter Science English</span>
		</div>
		<div class="user_info">
			<span>用户登录信息和时间</span>
		</div>
	</div>
	<div id="container">
		<div id="picture_play">
			<div id="picture_bg"></div>
			<a id="picture_info" href="#"></a>
			<ul id="list"></ul>
			<div id="picture_list">
				<a href="#" target="_blank"><img src="background/play1.jpg"
					title="dd1" alt="dd1"></a> <a href="#" target="_blank"><img
					src="background/play2.jpg" title="dd2" alt="dd2"></a> <a href="#"
					target="_blank"><img src="background/play3.jpg" title="dd3"
					alt="dd3"></a> <a href="#" target="_blank"><img
					src="background/play4.jpg" title="dd4" alt="dd4"></a> <a href="#"
					target="_blank"><img src="background/play5.jpg" title="dd5"
					alt="dd5"></a>
			</div>
		</div>
		<nav class="bg">
		<ul>
			<li><a href="#">首页</a></li>
			<li><a href="#">课程</a></li>
			<li><a href="#">资源</a></li>
			<li><a href="#">上传</a></li>
			<li><a href="#">下载</a></li>
			<li><a href="#">联系我们</a></li>
			<li class="wrap_search"></li>
		</ul>
		</nav>
		<div class="mainbody">
			<div class="main_left">
				<h1>单词检索区域</h1>
			</div>
			<div class="main_mid">
				<h1>主要文章</h1>
				<div>
					<table class="main_table">
						<tr>
							<td><a href="#">计算机常用英语900句</a></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
						<tr>
							<td><span>计算机常用英语900句</span></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="main_right">
				<h1>其他课程相关文章</h1>
			</div>
		</div>
	</div>
	<div id="footer">
		<h1>版权信息</h1>
	</div>
</body>
</html>
