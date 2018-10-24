<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html>
<!-- 웹 문서 제작자 설정 -->
<meta name="author" content="ducks77">

<!-- 웹 문서 설명 설정 -->
<meta name="description" content="CuffLink">

<!-- 웹 문서 키워드 설정 -->
<meta name="keywords" content="CuffLink, ducks77">

<!-- 검색엔진 허가 설정 -->
<meta name="robots" content="all">

<!-- 모바일 웹을 위한 설정 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- 호환성 설정 최신버전으로 확인해라 안적어도됨. -->
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />

<head>
<meta charset="UTF-8">
<jsp:include page="./ui.jsp" />
<%
	List<Map<String, Object>> main_pro = (List<Map<String, Object>>) request.getAttribute("MainProject");
%>
<title>Cufflink</title>
<link rel="stylesheet" href="/css/main.css " />
<link href="https://fonts.googleapis.com/earlyaccess/nanumgothic.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/nanumbrushscript.css" rel="stylesheet">
<jsp:include page="./loading.jsp" />
<!-- 숫자 또로록 -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="/js/jquery.counterup.min.js"></script>
<script type="text/javascript">
	$(document).ready(function($) {
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});

	});
</script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<!-- //chatting -->
<link rel="stylesheet" href="../css/main.css" />

</head>
<body>
	<!-- 비디오 백그라운드 -->
	<video id="videobcg" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" style="z-index: -2;">
		<source src="movie.mp4" type="video/mp4">
		<source src="movie.webm" type="video/webm">
		<p>
			Your browser doesn't support video. Please <a href="http://browsehappy.com/">upgrade your browser</a> to see the example.
		</p>
		<source src="https://ak8.picdn.net/shutterstock/videos/13966088/preview/stock-footage-top-view-mixed-race-group-of-people-office-small-business-start-up-company-planning-creative.webm" type="video/webm">
		<!--    <source src="https://vjs.zencdn.net/v/oceans.webm" type="video/webm"> -->
		<!-- <source src="marvel.webm" type="video/webm"> -->
		<source src="marvel.mp4" type="video/mp4">
	</video>
	<!-- 비디오 백그라운드 -->
	<div class="wrap" style="position: relative;">
		<div class="mode" style="position: absolute; top: 0; left: 0;">
			<a href="/modeViewSets/modeview.jsp" style="font-size: 9px; background-color: rgba(0, 0, 0, 0.2);">반응형</a>
		</div>
		<div id="container" class="ui container tool">
			<div class="ui secondary pointing menu" style="margin-bottom: 50px;">
				<a href="/"> <img src="/image/logo.jpg" class="ui image tiny" alt="" style="float: left; margin-right: 10px" />
				</a> <a href="/auth/login" id="projectRegister" class="projectRegister item" style="font-weight: bold">프로젝트 등록 </a> <a href="../project/page?pagenum=1" id="projectFind" class="projectFind item" style="font-weight: bold">프로젝트 찾기 </a> <a href="../partners/partnersList" id="partnersList" class="partnersList item" style="font-weight: bold">파트너스 목록 </a>
				<div class="right menu">
					<div class="item loginjoin">
						<button class="ui button" style="margin-right: 10px;" onclick="location.href='/auth/login'">로그인</button>
						<button class="ui primary button" style="margin-right: 10px;" onclick="location.href='/auth/join'">회원가입</button>
					</div>
				</div>
			</div>
		</div>

		<div id="tools" class="tools">
			<div class="ui secondary pointing menu" style="margin-bottom: 0px !important;">
				<div style="width: 20%;">
					<a href="/"> <img src="/image/logo.jpg" class="ui image tiny" alt="" style="float: left; margin-right: 10px" />
					</a>
				</div>
				<div style="display: inline-block; width: 80%;margin-top: 10px;">
					<p><marquee behavior="scroll" style="width: 85%;color:red">안녕하세요. &nbsp;&nbsp;커프링크 입니다. &nbsp;&nbsp;&nbsp;저희 커프링크는 개발자와 제작을 원하는 클라이언트를 연결해주는 서비스를 제공하고 있습니다.</marquee></p> 
				</div>	
			</div>
			<div id="smenu">
				<span class="smenu"><a href="#"><i class="fas fa-align-justify fa-2x"></i></a></span>
			</div>
			<nav id="nav">
				<div class="nav">
					<ul style="margin-top: 0; margin-bottom: 0;">
						<li><a href="/auth/login">프로젝트 등록</a></li>
						<li><a href="../project/page?pagenum=1">프로젝트 찾기</a></li>
						<li><a href="../partners/partnersList">파트너스 목록</a></li>
						<li><a href="/auth/login">로그인</a></li>
						<li><a href="/auth/join">회원가입</a></li>
					</ul>
					<!-- //clearfix -->
				</div>
				<!-- //.nav -->
			</nav>
			<!-- //nav -->
			<!-- 우측메뉴 생성 -->
		</div>





		<script>
			$(document).ready(function() {
				$(".smenu").click(function(e) {
					//Default로 준다.
					e.preventDefault();
					$("#nav").slideToggle("show");
				});

			});
		</script>

		<div id="tinfo" style="text-align: center; padding-top: 10px;">
			<h3>앱 개발, 웹 디자인, 쇼핑몰제작, 워드프레스 제작등</h3>
			<h1 id="tt" style="font-size: 40px;">안전한 아웃소싱 플랫폼</h1>
			<h3>커프링크의 새로운 아웃소싱을 시작해 보세요</h3>
			<button class="ui button blue" onclick="location.href='/auth/login'">
				<h4>무료로 프로젝트 등록하기</h4>
			</button>
		</div>
	</div>
	<p></p>
	<div style="background-color: #e7e9ec;">
		<div style="width: 100%; border-bottom: 0 !important;">
			<div style="width: 100%; background-color: #fff; border-bottom: 0 !important;">
				<div id="thapp" class="ui container thapp" style="margin-bottom: 16px; padding: 0; border-bottom: 0 !important;">
					<div class="ui" style="width: 100%; padding: 0; margin: 0; border-bottom: 0 !important;">
						<div class="ui three column grid segments" style="padding: 0; margin: 0; border-top: 0 !important; border-bottom: 0 !important; border-left: 0 !important; border-right: 0 !important;">

							<div class="ui column segment happ" style="width: 33.3%; background-color: white; border-top: 0 !important; border-bottom: 0 !important;">
								<div style="background-color: #fff;">
									<h2 id="tt3">등록된 프로젝트</h2>
								</div>
								<h3>
									<span id="h33" class="counter" style="font-size: 24px;">14,234</span>개
								</h3>

							</div>
							<div class="ui column segment happ" style="width: 33.3%; background-color: white; border-top: 0 !important; border-bottom: 0 !important;">
								<div style="background-color: #fff;">
									<h2 id="tt3">프로젝트 등록 금액</h2>
								</div>
								<h3>
									<span>$</span> <span id="h33" class="counter" style="font-size: 24px;">142,030,018,631</span>원
								</h3>

							</div>
							<div class="ui column segment happ" style="width: 33.3%; background-color: white; border-top: 0 !important; border-bottom: 0 !important;">
								<div style="background-color: #fff;">
									<h2 id="tt3">등록된 프리랜서</h2>
								</div>
								<h3>
									<span id="h33" class="counter" style="font-size: 24px;">54,453</span>명
								</h3>

							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- 		<p></p> -->
			<div></div>
			<div id="tinsert" class="ui container tinsert" style="border-top: 0 !important; padding-top: 5px; padding-bottom: 5px; font-size: 1.2em; font-weight: bold; text-align: center; background-color: #CED8F6; margin-top: 50px;">
				<img id="img1" src="../image/logo.png" alt="" style="margin-right: 10px;" /> 등록된 프로젝트
			</div>
			<div class="ui container" style="padding-top: 20px;">
				<div class="ui three column grid">
					<%
						for (int i = 0; i < 6; i++) {
					%>
					<div id="insert" class="column insert">
						<div class="ui segment" style="background-color: white;">
							<div class="p-intro" style="background-color: white;">
								<a href="#" class="title" style="color: #2099bb;"><%=main_pro.get(i).get("PRO_NAME")%></a>
							</div>
							<p></p>
							<span class="f-won"> <i class="won sign icon"></i> <%=main_pro.get(i).get("PRO_PRICE")%>
							</span> <span class="f-won"> <i class="clock outline icon"></i> <%=main_pro.get(i).get("PRO_PERIOD")%>
							</span> <span class="f-won"> <i class="pencil alternate icon"></i> <%=main_pro.get(i).get("PRO_SKILL")%>
							</span>
							<p></p>
							<p class="content">
								<span> <%=main_pro.get(i).get("PRO_CONTENTS")%>
								</span>
							</p>
						</div>
					</div>
					<!-- column -->
					<%
						}
					%>
				</div>
				<!--three column  -->

			</div>
			<!-- container -->
		</div>

		<div style="height: 20px;"></div>
		<div id="jido" class="ui container csearch" style="position: relative; padding-top: 5px; padding-bottom: 5px; padding-left: 0; padding-right: 0; margin-left: 0; margin-right: 0; font-size: 1.2em; font-weight: bold; text-align: center; background-color: #CED8F6;">
			<img id="img1" src="../image/logo.png" alt="" style="margin-right: 10px;" /> 클라이언트 의뢰 주변 검색
			<div class="ui mini search" style="position: absolute; top: 2px; right: 0; float: right;">
				<div class="ui icon input">
					<div class="ui search" style="">
						<!-- 지도검색 -->
						<input class="prompt" id="MapSearch" type="text" placeholder="Search countries..." style="height: 25px;"> <i id="icon1" class="search icon"></i>
						<!-- 지도검색 -->
					</div>
					<div class="results"></div>
				</div>
			</div>
		</div>

		<div id="jidov" class="ui container jidov" style="margin-left: 0; margin-right: 0; padding-left: 0; padding-right: 0; padding-top: 0px; text-align: center; height: 480px; background-color: #dedede;">
			<div id="jidoinput" style="margin-left: 0; margin-right: 0; padding-left: 0; padding-right: 0;">
				<jsp:include page="../map/Mapdisplay1.jsp" />
			</div>
		</div>

		<div style="height: 30px; margin: 0 auto;" align="center"></div>

		<div id="wcompany" class="ui container wcompany" style="margin-left: 0; margin-right: 0; padding-top: 5px; padding-bottom: 5px; font-size: 1.2em; font-weight: bold; text-align: center; background-color: #CED8F6;">
			<img id="img1" src="../image/logo.png" alt="" style="margin-right: 10px;" /> 우리와 함께하는 회사
		</div>
		<div id="wcompanyv" class="ui container" style="padding-top: 20px; text-align: center; background-color: #E0E6F8;">
			<div class="ui small images">
				<img class="logo" src="../image/logo1.png"> <img class="logo" src="/image/logo2.png"> <img class="logo" src="/image/logo3.png"> <img class="logo" src="/image/logo4.png"> <img class="logo" src="/image/logo5.png"> <img class="logo" src="/image/logo6.png">
			</div>
		</div>
	</div>
	<!-- <script>
		function autoSplit(len) { // 자동으로 len 길이만큼 글자수를 잘라주고 난후 ... 을 붙여준다
			var leng = $('.content').text().length;
			if (leng > 100) {
				$('.content').text($('.content').text().substring(0, len))
						.append('...')
			}
		}
		autoSplit(100);

		var lengt = $('.title').text().length;
		if (lengt > 16) {
			$('.title').text($('.title').text().substring(0, 16)).append('...')
		} 
	</script> -->
</body>
</html>