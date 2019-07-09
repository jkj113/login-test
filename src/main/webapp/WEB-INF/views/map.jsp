<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css" href="//img.tourtips.com/css/pc/common.css?utv=00023528" />
<link rel="stylesheet" type="text/css" href="//img.tourtips.com/css/pc/main.css?utv=00023528" />

<style type="text/css">
@charset "UTF-8";

.menubar {
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 14px;
	font-weight: bold;
}

.menubar ul {
	background: rgb(109, 109, 109);
	height: 50px;
	list-style: none;
	display: table;
	margin-left: auto;
	margin-right: auto;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: rgb(109, 109, 109);
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar li a:hover, .menubar ul li:hover a {
	background: rgb(71, 71, 71);
	color: #FFFFFF;
	text-decoration: none;
}

.menubar li ul {
	background: rgb(109, 109, 109);
	display: none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 200px;
	z-index: 200;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: rgb(109, 109, 109);
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 12px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	background: rgb(71, 71, 71);
	border: 0px;
	color: #ffffff;
	text-decoration: none;
}

.menubar p {
	clear: left;
}
</style>
</head>
<body>
	<div id="header">
		<!-- headTop -->
		<div class="headTop">
			<span class="logo"> <a href="#"> 
			<img src="//img.tourtips.com/images/pc/logo/origin.gif" alt="투어팁스">
			</a>
			</span>
			<!-- loginArea : 로그인 전 -->
			<div class="loginArea" style="width: 125px;">
				<a href="#">로그인</a> <span>|</span> <a href="#">회원가입</a>
			</div>
			<div id="search">
				<form method="get" action="http://www.tourtips.com/ap/search/search/">
					<fieldset>
						<legend>검색</legend>
						<span class="round"> <input type="text" name="cseq"	title="검색어 입력" tabindex="1" style="ime-mode: active;">
							<button type="submit" name="search" id="search_btn" title="검색" tabindex="2">검색</button>
						</span>
					</fieldset>
				</form>
			</div>
			<!-- //search -->

		</div>
		<div class="menubar">
			<ul>
				<li><a href="#">Home</a>
					<ul>
						<li><a href="#">Sliders</a></li>
						<li><a href="#">Galleries</a></li>
						<li><a href="#">Apps</a></li>
						<li><a href="#">Extensions</a></li>
					</ul></li>
				<li><a href="#" id="current">Products</a>
					<ul>
						<li><a href="#">Sliders</a></li>
						<li><a href="#">Galleries</a></li>
						<li><a href="#">Apps</a></li>
						<li><a href="#">Extensions</a></li>
					</ul></li>
				<li><a href="#">Company</a>
					<ul>
						<li><a href="#">Sliders</a></li>
						<li><a href="#">Galleries</a></li>
						<li><a href="#">Apps</a></li>
						<li><a href="#">Extensions</a></li>
					</ul></li>
				<li><a href="#">Address</a>
					<ul>
						<li><a href="#">Sliders</a></li>
						<li><a href="#">Galleries</a></li>
						<li><a href="#">Apps</a></li>
						<li><a href="#">Extensions</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<div id="map" style="width: 500px; height: 400px;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49b91ea9e3468a5626607648857446d1"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(37.50500105946323, 126.9581314306242),
			level : 4
		};

		var map = new kakao.maps.Map(container, options);
	</script>

</body>

</html>
