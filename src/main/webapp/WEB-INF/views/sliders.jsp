<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div id="wrap">
<style>
.up_close {background:url(//img.tourtips.com/images/common/close_btn_b.png) no-repeat right center; position:absolute; width:38px; height:37px; 
top:15px; right:30px; cursor:pointer}
</style>
<div id="subWrap">
	<div id="header">
		<!-- headTop -->
		<div class="headTop">
			<span class="logo"> <a href="#"> <img
					src="//img.tourtips.com/images/pc/logo/origin.gif" alt="투어팁스">
			</a>
			</span>
			<!-- loginArea : 로그인 전 -->
			<div class="loginArea" style="width: 125px;">
				<a href="#">로그인</a> <span>|</span> <a href="#">회원가입</a>
			</div>
			<div id="search">
				<form method="get"
					action="http://www.tourtips.com/ap/search/search/">
					<fieldset>
						<legend>검색</legend>
						<span class="round"> <input type="text" name="cseq"
							title="검색어 입력" tabindex="1" style="ime-mode: active;">
							<button type="submit" name="search" id="search_btn" title="검색"
								tabindex="2">검색</button>
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
						<li><a href="sliders">Sliders</a></li>
						<li><a href="galleries">Galleries</a></li>
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

		<div class="lnb" >
			<h1 class="bigTitle">
				<a href="#">Home</a>
			</h1>
			<ul>
				<li  class="allNotice on"><a href="sliders">Sliders</a></li>
				<li><a href="galleries">Galleries</a></li>
				<li class=""><a href="#">Q&A</a></li>
				<li class=""><a href="#">아무거나 토크</a></li>

				<li class="myNotice "><a href="/ap/tboard/community/?my=a">
				내 글 모아보기 (0)<span></span>
				</a>
				</li>
			</ul>



			<div class="adv">
				<div class="adsvr" data-zone-id="207" data-option=""></div>
			</div>
			<div class="adv">
				<div class="adsvr" data-zone-id="208" data-option=""></div>
			</div>

		</div>
		<!-- //lnb -->

		<!-- contents -->
		<div class="contents">

			<h2 class="titleSt02">전체 글 보기</h2>

			<!-- searchNotice -->
			<script type="text/javascript"
				src="//img.tourtips.com/js/pc/tboard/list.js?utv=00023528"></script>

			<div class="searchNotice">
				<form action="" method="get">

					<!-- selectBox -->

					<div class="selectBox sltBox" name="search">
						<p class="cur">
							<span>제목+내용</span><i class="ico"></i>
						</p>
						<ul class="search_type">
							<li data='0'>제목+내용</li>
							<li data='1'>제목</li>
							<li data='2'>작성자</li>
						</ul>
					</div>
					<!-- //selectBox -->

					<!-- searchWord -->
					<div class="searchWord">
						<input type="text" name="q" placeholder="입력하세요" value="">
						<input type="hidden" name="k" id="k" value="0"> <input
							type="hidden" name="ps" value="20"> <input type="hidden"
							name="pf" value="">

						<button type="submit">
							<span>검색하기</span>
						</button>
					</div>
					</form>
					</div>
					
					<!-- //searchWord -->
					</div>
					</div>
					</div>
</body>
</html>