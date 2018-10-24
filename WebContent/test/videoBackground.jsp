<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<title>Cufflink</title>
<style>
#videobcg { 
     position: absolute;
     top: 0px;
     left: 0px;
     min-width: 100%;
     min-height: 400px;
     width: auto;
     height: 600px;
     z-index: -1000;
     overflow: hidden;
     opacity: 0.5;
}
</style>
</head>
<body>

	<div class="wrap" style="position: relative; height: 400px !important;">
		<!-- 비디오 백그라운드 -->
		<video id="videobcg" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" style="z-index: -2;">
			<!-- <source src="movie.mp4" type="video/mp4">
			<source src="movie.webm" type="video/webm"> -->
			<!-- <p>
				Your browser doesn't support video. Please <a href="http://browsehappy.com/">upgrade your browser</a> to see the example.
			</p> -->
			<source src="https://ak8.picdn.net/shutterstock/videos/13966088/preview/stock-footage-top-view-mixed-race-group-of-people-office-small-business-start-up-company-planning-creative.webm" type="video/webm">
			<!--    <source src="https://vjs.zencdn.net/v/oceans.webm" type="video/webm"> -->
			<!-- <source src="marvel.webm" type="video/webm"> -->
			<!-- <source src="marvel.mp4" type="video/mp4"> -->
		</video>
		<!-- 비디오 백그라운드 -->
		<div style="text-align: center; padding-top: 10px;">
			<h3>앱 개발, 웹 디자인, 쇼핑몰제작, 워드프레스 제작등</h3>    
			<h1 id="tt" style="font-size: 40px;">안전한 아웃소싱 플랫폼</h1>
			<h3>위시켓의 새로운 아웃소싱을 시작해 보세요</h3>
			<button class="ui button blue" onclick="location.href='#'">
				<h4>무료로 프로젝트 등록하기</h4>
			</button>
		</div>
	</div>
	<p><marquee direction="left">안녕하세요. 커프링크 입니다. 저희 커프링크는 개발자와 제작을 원하는 클라이언트를 연결해주는 서비스를 제공하고 있습니다.</marquee> </p>
</body>
</html>