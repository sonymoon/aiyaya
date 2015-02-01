<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="/WEB-INF/struts-tags.tld" prefix="s"%>
<%@include file="top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="bailei" />

<link rel="icon" href="../../favicon.ico" />

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- 可选的Bootstrap主题文件（一般不使用） -->
<link
	href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css"
	rel="stylesheet" />

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- 新 Bootstrap 核心 CSS 文件 -->

<title>爱伢伢</title>

</head>

<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">爱伢伢</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="#about">活动</a></li>
					<li><a href="#contact">心理</a></li>
					<li><a href="#contact">培训</a></li>
					<li><a href="#contact">家长</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">您尚未登录<span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Nav header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>

					<li class=""><a href="../navbar-static-top/">登录</a></li>
					<li><a href="./">注册 <span class="sr-only">(current)</span></a></li>
				</ul>

				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="请输入内容" class="form-control" />
					</div>
					<button type="submit" class="btn btn-success">搜索</button>
				</form>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<!-- .nav -->


	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="container">
					<span class="label label-danger">危险标签</span>
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				<div class="thumbnail">
					<img src="images/kittens.jpg" alt="通用的占位符缩略图">
				</div>
				
			</div>

			<div class="col-md-4">
				<div class="jumbotron">
					<h1>Navbar example</h1>
					<p>This example is a quick exercise to illustrate how the
						default, static and fixed to top navbar work. It includes the
						responsive CSS and HTML, so it also adapts to your viewport and
						device.</p>
					<p>To see the difference between static and fixed top navbars,
						just scroll.</p>
					<p>
						<a class="btn btn-lg btn-primary" href="../../components/#navbar"
							role="button">测试&raquo;</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
</body>
</html>