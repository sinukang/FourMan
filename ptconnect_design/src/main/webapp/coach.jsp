<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./source/css/coach.css" type="text/css" rel="stylesheet">
<link href="./source/css/home.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<header class="main_header">
						<nav>
							<div class="contents">
								<a><img class="navi_logo" src="./source/img/PTCONNECT (1).png"></a>
								<a class="navi_name">트레이너찾기</a>
								<a class="navi_name">공지사항</a>
								<a class="navi_name">자주묻는질문</a>
								<div class="nav_bar_menu">회원가입 / 로그인</div>
							</div>
						</nav>
					</header>
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
										<img src="./source/img/filtericon.png" alt="Filter Icon" width="24px" height="24px">
									</div>
									
								</div>
								
								<div class="searchBar">
									<input type="text" id="search_keyword" class="bar" placeholder="지역, 센터, 선생님 검색" autocomplete="off" maxlength="20">
									<div class="search_btn">
										<img src="./source/img/searchicon.png"  width="30px" height="30px">
									</div>
								</div>
							
								<div class="searchBar_option">
									<img src="./source/img//markericon.png" width="17px" height="25px">
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
												<img class="trainerImg" src="./source/img/mainbanner1.png" >
												<img class="trainerImg" src="./source/img/mainbanner2.png" >
												<img class="gymImg" src="./source/img/mainbanner3.png" >
											</div>
											<div class="coachInfo">
												<div class="coachTitle">
													<h3 class="coachName">필 히스</h3>
												
													<div class="coachReviewCnt">
														<img class="reviewIcon" src="./source/img/staricon.png">
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
													<img src="./source/img/locationicon.png">
													<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
												</div>
												
											</div>
											
										</div>
										
										<div class="coachCard">
											<div class="coachImages">
												<img class="trainerImg" src="./source/img/mainbanner1.png" >
												<img class="trainerImg" src="./source/img/mainbanner2.png" >
												<img class="gymImg" src="./source/img/mainbanner3.png" >
											</div>
											<div class="coachInfo">
												<div class="coachTitle">
													<h3 class="coachName">필 히스</h3>
												
													<div class="coachReviewCnt">
														<img class="reviewIcon" src="./source/img/staricon.png">
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
													<img src="./source/img/locationicon.png">
													<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
												</div>
												
											</div>
											
										</div>
										
										<div class="coachCard">
											<div class="coachImages">
												<img class="trainerImg" src="./source/img/mainbanner1.png" >
												<img class="trainerImg" src="./source/img/mainbanner2.png" >
												<img class="gymImg" src="./source/img/mainbanner3.png" >
											</div>
											<div class="coachInfo">
												<div class="coachTitle">
													<h3 class="coachName">필 히스</h3>
												
													<div class="coachReviewCnt">
														<img class="reviewIcon" src="./source/img/staricon.png">
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
													<img src="./source/img/locationicon.png">
													<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
												</div>
												
											</div>
											
										</div>
									</div>
								
								
								
								</div>
						
							
						</div>
						
						
						<div class="mapWrap">
							<div class="map">
								<img src="./source/img/staricon.png">
								지도들어갈곳
							</div>
						</div>
						
						
						
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div><!-- 코치정보 -->
										<div>
										</div>
									</div>
									<div><!-- 코치프로필 -->
										<div>
											<div class="upside"></div>
											<div class="downside"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<footer class="main_footer">
						<div class="footer my_container">
							<div class="terms">
								<a class="menu">이용약관</a>|
								<a class="menu">개인정보보호정책</a>|
								<a class="menu">공지사항</a>|
								<a class="menu">고객센터</a>
								<div class="icon">
									<a><img src="https://www.woondoc.com/static/images/footer/naver_link.svg"></a>
									<a><img src="https://www.woondoc.com/static/images/footer/instagram_link.svg"></a>
								</div>
							</div>
							<div class="project_info">
								<div class="cs">
									<div class="cs_title">PT Connect</div>
									<a class="tel">123-456-7890</a>
									<div class="test_id">user_id:test/pwd:1234</div>
									<div class="test_id">trainer_id:ptman/pwd:1234</div>
									<div class="test_id">center_id:ptcenter/pwd:1234</div>
								</div>
								<h5>FourMan<span>|</span>포맨</h5>
							</div>
						</div>
					</footer>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
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