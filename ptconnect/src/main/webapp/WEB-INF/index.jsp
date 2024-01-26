<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PT Connect</title>

<link href="${pageContext.request.contextPath}/resources/css/mainPage.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">

 <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

</head>
<body>
	<jsp:include page="./include/header.jsp"/>
	<section>
	<!-- 메인베너 -->
		<div class="homeMainBanner">
			<div class="bannerBox">
				<div class="banner">
					<img src="${pageContext.request.contextPath}/resources/img/mainbanner1.png">
					<h4>가입 고객</h4>
					<h1>13,000</h1>
					<p><span>13,000</span>명의 고객님이 <br> PTConnect를 믿고 찾아주세요! </p>
				</div>
				<div class="banner">
					<img src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
					<h4>등록 트레이너</h4>
					<h1>2,500</h1>
					<p><span>2,500</span>명의 전문트레이너가 <br> 활동중이에요! </p>
				</div>
				<div class="banner">
					<img src="${pageContext.request.contextPath}/resources/img/mainbanner3.png">
					<h4>이용 후기</h4>
					<h1>120,000</h1>
					<p><span>120,000</span>건의 후기를 <br> 확인해 보세요!</p>
				</div>
			</div>
		</div>
		<!-- 검색창 -->
		
		<div class="mainSearchBar">
			<div class="searchKeyword">
				<input type="text" id="search_keyword" class="bar" placeholder="지역, 지하철역, 센터, 선생님 검색" autocomplete="off" name="keyword" maxlength="20" value="">
			</div>
			<button class="searchButton">
				트레이너 찾기
			</button>
		</div>
		
		<!-- 리뷰 배너 -->
		<div class="swiper">
			<div class="reviewBannerTitle">
				<div class="titleBar">
					<h1>PTCONNECT 신규 <span>트레이너</span> </h1>
					<img src="${pageContext.request.contextPath}/resources/img/thumicon2.png">
				</div>
			</div>
			
			
			<div class="swiper-wrapper">
			 <div class="swiper-button-prev"></div>
			 
			 <c:forEach var="tio" items="${tio_alist}">
			 
				<div class="swiper-slide">
					<div class="mainReviewTitle">
						<h4 class="reviewUser">${tio.mbName} 회원님</h4>
<!-- 						<h5 class="reviewDate">10분전</h5> -->
						<span class="reviewStar"> ${tio.tnTicket}원</span>
					</div>
					
					<div class="reviewText">
						<p>${tio.tnIntro}</p>
					</div>
					
					<div class="moveTrainerPage">
						<div class="trainerProfile">
							<img src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
							<div class="profileTitle">
								<h4>${tio.mbName} <span>트레이너</span></h4>
								<h5 class="profileAddr">미국 11번가 골드짐</h5>
							</div>
							<div class="movePageBtn">
								<button type="button"><span class="btnSymbol">&#x27E9;</span></button>
							</div>
						</div>
					</div>
				</div>
				
			</c:forEach>
				
			</div>
			
			
			
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>
		</div>
		
		
		
		
		
		
		
		
		
		
	</section>
	<jsp:include page="./include/footer.jsp"/>



<script>
  document.addEventListener('DOMContentLoaded', function () {
    var mySwiper = new Swiper('.swiper', {
      // Autoplay 설정
      autoplay: {
        delay: 3000, // 슬라이드 간의 3초 지연
        disableOnInteraction: false, // 사용자 상호 작용 시에도 자동 재생 활성화
      },
      // 다른 Swiper 옵션들...
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      speed: 3000,
      slidesPerView: 'auto',// 이 부분을 추가하여 3개의 슬라이드를 보이도록 설정
      loop: true, // 무한 재생을 위한 설정
    });
  });
</script>







</body>
</html>