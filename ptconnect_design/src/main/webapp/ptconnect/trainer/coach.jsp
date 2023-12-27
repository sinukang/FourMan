<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 찾기</title>
<link href="${pageContext.request.contextPath}/source/css/coach.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/source/css/home.css" type="text/css" rel="stylesheet">

</head>
<body>
	
					<jsp:include page="../../source/include/header.jsp"/>
					<script>
						$('.contents').addClass('coach_nav');
					</script>
					<section><!-- 섹션 -->
						<div class="searchTab_wrap">
							<div class="searchBar_wrap">
								<div class="searchType">
									<div class="typeFilter">
										<div class="typeComp active">전체</div>
										<div class="typeComp">헬스</div>
										<div class="typeComp">필라테스</div>
									</div>
									<div class="filter">
										<img src="${pageContext.request.contextPath}/source/img/filtericon.png" alt="Filter Icon" width="24px" height="24px">
									</div>
									
								</div>
								
								<div class="searchBar">
									<input type="text" id="search_keyword" class="bar" placeholder="지역, 센터, 선생님 검색" autocomplete="off" maxlength="20">
									<div class="search_btn">
										<img src="${pageContext.request.contextPath}/source/img/searchicon.png"  width="30px" height="30px">
									</div>
								</div>
							
								<div class="searchBar_option">
									<img src="${pageContext.request.contextPath}/source/img//markericon.png" width="17px" height="25px">
									<span>
										<span class="search_key">덕진구</span>
										검색 결과
									</span>
								</div>
							</div>	
								<div class="filter_option">
									<div class="filter_Initialization">
										<button class="reset_btn">&#x25C4;</button>
										<div class="reset_filter">필터 초기화</div>
										
									</div>
									
									<div class="filterOption_list">
										<div class="radius">
											<h3>검색 반경
											<span class="radius_key">1km 이내</span>
											</h3>
										</div>
										
										<div class="radius_slider">
											<input type="range" id="radius-slider" min="1" max="200" step="1" value="10">
										</div>
										
										<ul class="distance">
											<li style="text-align:left;">500m</li>
											<li style="text-align:right;">5km</li>
										</ul>
										
										<div class="gender">
											<h3>선생님 성별</h3>
											<div class="radioBox">
												<label for="all">
													<input type="radio" name="Gender" value="1" id="all" checked>전체
													</label>
												<label for="male">
													<input type="radio" name="Gender" value="2" id="male" >남성
													</label>
												<label for="female">
													<input type="radio" name="Gender" value="3" id="female">여성
												</label>
											</div>
										</div>
										
										<div class="sorting">
												<h3>정렬</h3>
												<div class="sortingBtn">최저가 순</div>
												<div class="sortingBtn">리뷰많은 순</div>
												<div class="sortingBtn">거리 순</div>
										</div>
										
										<div class="filterBtn">
											<button>필터 적용하기</button>
										</div>
									</div>
									
								</div>
								
								<div class="searchForm">
									<div class="searchResultWrap">
										<div class="coachCard">
											<div class="coachImages">
												<img class="trainerImg" src="${pageContext.request.contextPath}/source/img/mainbanner1.png" >
												<img class="trainerImg" src="${pageContext.request.contextPath}/source/img/mainbanner2.png" >
												<img class="gymImg" src="${pageContext.request.contextPath}/source/img/mainbanner3.png" >
											</div>
											<div class="coachInfo">
												<div class="coachTitle">
													<h3 class="coachName">필 히스</h3>
												
													<div class="coachReviewCnt">
														<img class="reviewIcon" src="${pageContext.request.contextPath}/source/img/staricon.png">
														<span class="reviewText">35개</span>
													</div>
												</div>
												
												<div class="coachOneLine">
													<p>물리치료사 출신,체형교정,다이어트,보디빌딩</p>
												</div>
												
												<div class="priceInfo">
													<div class="priceTitle"> 1회 체험권 </div>
													<div class="ptPrice">35000원</div>
												</div>
												
												<div class="location">
													<img src="${pageContext.request.contextPath}/source/img/locationicon.png">
													<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
												</div>
												
											</div>
											
										</div>
										
										<div class="coachCard">
											<div class="coachImages">
												<img class="trainerImg" src="${pageContext.request.contextPath}/source/img/mainbanner1.png" >
												<img class="trainerImg" src="${pageContext.request.contextPath}/source/img/mainbanner2.png" >
												<img class="gymImg" src="${pageContext.request.contextPath}/source/img/mainbanner3.png" >
											</div>
											<div class="coachInfo">
												<div class="coachTitle">
													<h3 class="coachName">필 히스</h3>
												
													<div class="coachReviewCnt">
														<img class="reviewIcon" src="${pageContext.request.contextPath}/source/img/staricon.png">
														<span class="reviewText">35개</span>
													</div>
												</div>
												
												<div class="coachOneLine">
													<p>물리치료사 출신,체형교정,다이어트,보디빌딩</p>
												</div>
												
												<div class="priceInfo">
													<div class="priceTitle"> 1회 체험권 </div>
													<div class="ptPrice">35000원</div>
												</div>
												
												<div class="location">
													<img src="${pageContext.request.contextPath}/source/img/locationicon.png">
													<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
												</div>
												
											</div>
											
										</div>
										
										<div class="coachCard">
											<div class="coachImages">
												<img class="trainerImg" src="${pageContext.request.contextPath}/source/img/mainbanner1.png" >
												<img class="trainerImg" src="${pageContext.request.contextPath}/source/img/mainbanner2.png" >
												<img class="gymImg" src="${pageContext.request.contextPath}/source/img/mainbanner3.png" >
											</div>
											<div class="coachInfo">
												<div class="coachTitle">
													<h3 class="coachName">필 히스</h3>
												
													<div class="coachReviewCnt">
														<img class="reviewIcon" src="${pageContext.request.contextPath}/source/img/staricon.png">
														<span class="reviewText">35개</span>
													</div>
												</div>
												
												<div class="coachOneLine">
													<p>물리치료사 출신,체형교정,다이어트,보디빌딩</p>
												</div>
												
												<div class="priceInfo">
													<div class="priceTitle"> 1회 체험권 </div>
													<div class="ptPrice">35000원</div>
												</div>
												
												<div class="location">
													<img src="${pageContext.request.contextPath}/source/img/locationicon.png">
													<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
												</div>
												
											</div>
											
										</div>
									</div>
								
								
								
								</div>
						
							
						</div>
						
						
						<div class="mapWrap">
							<div class="map">
								<img src="${pageContext.request.contextPath}/source/img/staricon.png">
								지도들어갈곳
							</div>
						</div>
						
						
						
					</section>
					<jsp:include page="../../source/include/footer.jsp"/>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script>
document.addEventListener("DOMContentLoaded", function() {
    var filterButton = document.querySelector(".filter");

    filterButton.addEventListener("click", function() {
        var filterOption = document.querySelector(".filter_option");
        filterOption.classList.toggle("visible"); // "visible" 클래스를 토글하여 나타나거나 숨겨짐
    });
});
</script>
	
	
	
	
	
	
	
</body>
</html>