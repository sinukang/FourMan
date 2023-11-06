<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
	<!-- Link Swiper's CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
	<link href="./source/css/home.css" type="text/css" rel="stylesheet">
</head>
<body>
	<header class="header">
		<div class="header-logo">
			<h1 class="logo">
				<a class="svgLogo" href="./index.jsp">
					<img src="./source/images/logo4.png" width="150" height="80" alt="메인화면으로 이동">
				</a>
			</h1>
		</div>
		<div class="menu">
			<ul class="depth1">
				<li>
					<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
				</li>
				<li>
					<a href="./index.jsp">TOP10</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/board/board.do">갤러리</a>
				</li>
				<li>
					<a href="./index.jsp">마이페이지</a>
				</li>
				<li>
					<a href="./index.jsp">고객지원</a>
				</li>
			</ul>
		</div>
		<span class="login">
			<a class="loginbutton" href="${pageContext.request.contextPath}/member/memberLogin.do">
			<img src="./source/images/login.png">
			</a>
		</span>
	</header>
	<!-- Swiper -->
	<div class="swiper mySwiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
			<img src="./source/images/logo4.png">
			</div>
			<div class="swiper-slide"><img src="http://tong.visitkorea.or.kr/cms/resource/71/3022871_image2_1.jpg"></div>
			<div class="swiper-slide">Slide 2</div>
			<div class="swiper-slide">Slide 3</div>
			<div class="swiper-slide">Slide 4</div>
			<div class="swiper-slide">Slide 5</div>
			<div class="swiper-slide">Slide 6</div>
			<div class="swiper-slide">Slide 7</div>
			<div class="swiper-slide">Slide 8</div>
			<div class="swiper-slide">Slide 9</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</div>
  
	<div class="main-search">
		<div class="search-wrap">
			<input type="text" id="title" placeholder="찾고싶은 '관광데이터'명을 입력하세요." title="찾고싶은 '관광데이터'명을 입력하세요.">
			<button type="button">검색</button>
		</div>
	</div>
  
  
	<!-- top3 탭 -->

	<div class="container">
		<ul class="tab">
			<li class="is_on">
			<a href="#tab1" class="btn">오늘의 top3</a>
			</li>
			<li>
			<a href="#tab2" class="btn">조회수 top3</a>
			</li>
			<li>
			<a href="#tab3" class="btn">별점 top3</a>
			</li>
		</ul>
		<div class="cont_area">
			<div class="cont" id="tab1">
				<div class="top_list">
					<ul>
						<li>오늘의 top1</li>
						<li>오늘의 top2</li>
						<li>오늘의 top3</li>
					</ul>
				</div>
			</div>
			<div class="cont" id="tab2">
				<div class="top_list">
					<ul>
						<li>조회수 top1</li>
						<li>조회수 top2</li>
						<li>조회수 top3</li>
					</ul>
				</div>
			</div>
			<div class="cont" id="tab3">
				<div class="top_list">
					<ul>
						<li>별점 top1</li>
						<li>별점 top2</li>
						<li>별점 top3</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="top-more">
			<input type="button" name="btn" value="더 보기" onclick="check();">
		</div>
	</div>
	
	<a href="${pageContext.request.contextPath}/contents/contents.do">컨텐츠</a>
	<a href="${pageContext.request.contextPath}/board/board.do">게시판</a>
	<a href="${pageContext.request.contextPath}/comment/comment.do">댓글</a>
	<a href="${pageContext.request.contextPath}/member/member.do">회원</a>
	<a href="${pageContext.request.contextPath}/qna/qna.do">1:1문의</a>
	<a href="${pageContext.request.contextPath}/review/review.do">후기</a>
	<a href="${pageContext.request.contextPath}/report/report.do">신고</a>
	
	<footer>
		<div class="inner">
			<div class="footer-message">b_beam</div>
			<div class="footer-contact">컨택: asdf@naver.com</div>
			<div class="footer-copyright">ⓒ FourMan</div>
		</div>
	</footer>
</body>
</html>