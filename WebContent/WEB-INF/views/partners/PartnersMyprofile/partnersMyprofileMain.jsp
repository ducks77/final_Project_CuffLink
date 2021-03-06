<%@page import="org.apache.log4j.Logger"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!-- 수정시작20181018 -->
<%
	Cookie[] cookies = request.getCookies();
	String id = null;
	for(Cookie cookie : cookies){
		if("id".equals(cookie.getName())){
			id = cookie.getValue();
		}
	}
	Map<String,Object> info = (Map<String,Object>)session.getAttribute(id);
	String kind = (String)info.get("S_KINDS");
%>
<!-- 수정끝20181018 -->
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../common/ui.jsp" />
<meta charset="UTF-8">
<title>파트너스 프로필</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
<link rel="stylesheet" href="/css/login.css" />
<link rel="stylesheet" href="/css/partners.css" />
</head>
<!-- *******************************************************************************************************20181014 수정요청 -->
<body style="margin-left: 0;margin-right: 0;">
<!-- *******************************************************************************************************20181014 수정요청 -->
<!----------------------------------------------------------------------- top 시작 -->
	<header class="header">
		<div class="ui">
	<!-- header 시작 -->
			<!-- 수정시작20181018 -->
				<%
					if ("클라이언트".equals(kind)) {
				%>
				<jsp:include page="../../common/menu/headerMenu.jsp" />
				<%
					} else {
				%>
				<jsp:include page="../../common/menu/PartnersHeaderMenu.jsp" />
				<%
					}
				%>
				<!-- 수정끝20181018 -->
        	<!-- header 종료 -->
	
			<div class="ui"><!-- header와 navigation 여백 --></div>
	
	<!-- navigation menu 종료-->
		</div>
	</header>
<!----------------------------------------------------------------------- top 끝 -->

	<div class="ui basicspace"><!-- navigation menu와 여백 --></div>
	
<!--======================================================================================-->
<!----------------------------------------------------------------------- main content 시작 -->

	<div class="ui container" >
	
<!-- *******************************************************************************************************20181014 수정요청 -->	
	<!-- main 입력 시작-->
	
		<!--=== title =========================================-->
		<div class="ui two column grid container">
			<div class="three wide column" style="padding-left: 0; padding-top: 0; padding-right: 0px;">
<!-- 로그인 정보 =================================================================================-->
				<div id="partnersback" class="ui segment">
					<jsp:include page="../../auth/PartnersLoginOk.jsp" />
				</div>
<%-- 				<div class="ui segment">
					<jsp:include page="../info/partnersProfileImg.jsp" />
				</div> --%>
<!-- 로그인 정보 =================================================================================-->

<!-- 서브 메뉴 ===================================================================================-->
				<div id="partnersback" class="ui fluid vertical menu" style="padding: 0px;">
					<jsp:include page="./info/PartnersProfileSubMenu.jsp" />
				</div>
<!-- 서브 메뉴 ===================================================================================-->
			</div>
			<div class="ui column" style="padding-left: 5px; padding-top: 0px; padding-bottom: 0px; width: 80%; height: auto">
				<div class="thirteen wide column ui segments" style="margin-top: 0;padding-top: 00px;margin-bottom: 0px;">
	<!-- *******************************************************************************************************20181014 수정요청 -->	
				<% 
					String path = (String)request.getAttribute("path");
					if("partnersMyprofileMain".equals(path)){ %>
					<jsp:include page="./partnersShowAll.jsp" />
				  <%}	
					else if("partnersIntroduction".equals(path)){ %>
					<jsp:include page="./partnersIntroduction.jsp" />
					<!-- <script>$(document).ready(function(){
				    	 $('footer').css('position','absolute')
				     })</script> -->
		          <%}	
					else if("partnersPortfolio".equals(path)){%>
				  	<jsp:include page="./partnersPortfolio.jsp"/>
				  <%}
					else if("partnersSkill".equals(path)){%>
				  	<jsp:include page="./partnersSkill.jsp"/>
				  	<!-- <script>$(document).ready(function(){
				    	 $('footer').css('position','absolute')
				     })</script> -->
				  <%}
					else if("partnersBackground".equals(path)){%>
					<jsp:include page="./partnersBackground.jsp"/>
					
				  <%} 
				  	else if("partnersEvaluation".equals(path)){%>
				  	<jsp:include page="./partnersEvaluation.jsp"/>
				  	
				  <%}%> 
			</div>
		</div>
 
	<!-- main 입력 끝-->

	</div>
</div>
<!----------------------------------------------------------------------- main content 끝 --->
<!--======================================================================================-->
	
	<div class="ui basicspace"><!-- login title와 main content 여백 -->	</div>
	
<!----------------------------------------------------------------------- footer content 시작 -->
	<!-- footer 시작-->
		<footer class="footer">
			<div class="ui inverted segment">
				<jsp:include page="../../common/menu/footerMenu.jsp"/>
			</div>
		</footer>
	<!-- footer 끝-->
<!----------------------------------------------------------------------- footer content 끝 -->
</body>
</html>