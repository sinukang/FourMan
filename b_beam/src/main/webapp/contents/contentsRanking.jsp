<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>리스트 페이지</title>
<link rel="stylesheet" type="text/css" href="../source/css/contents/contentsR.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	


</head>
</head>
<body>

<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./index.jsp">
					<img src="../source/images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/contents/contentsRanking.do">TOP10</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/board/board.do">갤러리</a>
				</li>
				<li>
					<a href="./Home.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./Home.jsp">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="./member/memberLogin.jsp">
			<img src="../source/images/login.png">
			</a>
		</span>
	</header>
	
	
<div class="rankcontainer">
	<div class="rankinghead">
		<h1 class="headtitle">
			랭킹 Top10
		</h1><hr><br><br>
	</div>
	<div class="rankingbox">
		<c:forEach var="i" begin="1" end="4" step="1">
			<div class="contentsbox rank">
				<h3 class="ranktitle">
					XX Top10
				</h3>
				<c:forEach var="i" begin="1" end="10" step="1">
				    <button type="button" class="listbutton rank" id="button1">
				        <div class="contents-info rank">
				            <img src="../source/images/duck4.jpg">
				            <div class="contents-title rank">전주덕진공원</div>
				        </div>
				    </button>
			    </c:forEach>
			</div>	
	    </c:forEach>
	</div>
</div>
</body>
</html>