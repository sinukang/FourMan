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
	<jsp:include page="source/include/header.jsp"/>
	<!-- Swiper -->
	<div class="swiper mySwiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="https://tour.jeonju.go.kr/upload_data/popup/banner/169563461262747.jpg">
				<div class="slide-text">
					<h1>동아시아 문화도시 전주</h1>
					<p>천년 문화도시, 전주의 자부심을 만나다 </p>
				</div>
			</div>
			<div class="swiper-slide">
				<img src="./source/images/logo4.png">
			</div>
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
						<li>
							<img src="https://tour.jeonju.go.kr/upload_data/board_data/BBS_0000030/168422136222553.jpg">
						</li>
						<li style="padding: 0 10px;">
							<img src="https://tour.jeonju.go.kr/upload_data/jeonju/RE_0000370/169889322046365.jpg">
						</li>
						<li>
							<img src="https://tour.jeonju.go.kr/upload_data/board_data/BBS_0000003/169759351474895.jpg">
						</li>
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
			<input type="button" name="btn" value="더보기" onclick="check();">
		</div>
	</div>
	
	<jsp:include page="source/include/footer.jsp"/>
</body>
</html>