<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>트레이너 찾기</title>
<link href="${pageContext.request.contextPath}/resources/css/coach.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096&libraries=services"></script>
</head>
<body>
	
	<jsp:include page="/WEB-INF/include/header.jsp"/>

	<section><!-- 섹션 -->
		<div class="searchTab_wrap">
			<div class="searchBar_wrap">
				<div class="searchType">
					<div class="typeFilter">
						<div class="typeComp active">전체</div>
					</div>
					<div class="filter">
						<img src="${pageContext.request.contextPath}/resources/img/filter_icon_black.svg" alt="Filter Icon" width="24px" height="24px">
					</div>
					
				</div>
				
				<div class="searchBar">
					<input type="text" id="search_keyword" class="bar" placeholder="지역, 센터, 선생님 검색" autocomplete="off" maxlength="20">
					<div class="search_btn">
						<img src="${pageContext.request.contextPath}/resources/img/search.svg">
					</div>
				</div>
			
				<div class="searchBar_option">
					<div class="flex">
						<div>
							<img src="${pageContext.request.contextPath}/resources/img//markericon.png" width="17px" height="25px">
							<span>
								<span class="search_key">덕진구</span>
								검색 결과
							</span>
						</div>
					</div>
				</div>
				<div class="filter_option">
					<div class="filter_Initialization">
						<div class="headerComp">
							<img src="${pageContext.request.contextPath}/resources/img//arrow_left.svg" alt="search">
						</div>
						<div class="headerComp">
							<div class="resetFilter">필터 초기화</div>
						</div>
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
								<div class="sortingBtn">최저가 순</div>
								<div class="sortingBtn">리뷰많은 순</div>
								<div class="sortingBtn">거리 순</div>
						</div>
						
						<div class="filterBtn">
							<button>필터 적용하기</button>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 리스트 영역 -->
			<div class="searchForm">
				<div class="searchResultWrap">
					<div class="searchResultArea">
						<c:forEach var="i" begin="1" end="10" step="1">
							<a href="trainerInfoView">
								<div class="coachCard">
									<div>
										<div class="coachImages">
											<img class="trainerImg" src="${pageContext.request.contextPath}/resources/img/mainbanner1.png" >
											<img class="trainerImg" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png" >
											<img class="gymImg" src="${pageContext.request.contextPath}/resources/img/mainbanner3.png" >
										</div>
										<div class="coachInfo">
											<div class="coachTitle">
												<h3 class="coachName">필 히스${i}</h3>
											
												<div class="coachReviewCnt">
													<img class="reviewIcon" src="${pageContext.request.contextPath}/resources/img/staricon.png">
													<span class="reviewText">35개</span>
												</div>
											</div>
											
											<div class="coachOneLine">
												<p>물리치료사 출신,체형교정,다이어트,보디빌딩</p>
											</div>
											
											<div class="priceInfo">
												<div class="priceTitle"> 1회 체험권 </div>
												<div class="ptPrice"><strong>35000</strong> 원</div>
											</div>
											
											<div class="location">
												<img src="${pageContext.request.contextPath}/resources/img/locationicon.png">
												<p class="locationAddr">서울특별시 중구 태평로1가 세종대로 110 (서울시청)</p>
											</div>
										</div>
									</div>
								</div>
							</a>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- 리스트 영역 -->
			
			
		</div>
		
		
		<div class="mapWrap">
			<div style="width:100%;height:100%;" id="map">
				
			</div>
		</div>
		
	</section>
	
	<!-- 푸터 -->
	<jsp:include page="/WEB-INF/include/footer.jsp"/>
	<c:forEach var="tio" items="${tio_alist}">
		${tio.ctName}
	</c:forEach>
	
<script>
	
	//헤더 여백 설정
	$('.contents').addClass('coach_nav');
	
	document.addEventListener("DOMContentLoaded", function() {
	    var filterButton = document.querySelector(".filter");
	    var returnButton = document.querySelector(".headerComp");
	    
	    filterButton.addEventListener("click", function() {
	        var filterOption = document.querySelector(".filter_option");
	        filterOption.classList.toggle("visible"); // "visible" 클래스를 토글하여 나타나거나 숨겨짐
	   		
	        /* var resultWrap = document.querySelector(".searchResultArea");
	        if (filterOption.classList.contains("visible")) {
	            resultWrap.style.display = "none";
	        } else {
	            resultWrap.style.display = "";
	        } */
	    });
	    
	    returnButton.addEventListener("click", function() {
	        var filterOption = document.querySelector(".filter_option");
	        filterOption.classList.toggle("visible"); // "visible" 클래스를 토글하여 나타나거나 숨겨짐
	    });
	});

	var mapX = 0;
	var mapY = 0;

	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div var geocoder = new kakao.maps.services.Geocoder();
	
	mapOption = {
	    center: new kakao.maps.LatLng(35.84026098258203, 127.1324143491829), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	function setDraggable(draggable){
		map.setDraggable(draggable);
	}
	var mapTypeControl = new kakao.maps.MapTypeControl();	//지도, 스카이뷰 버튼 추가
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	
	var zoomControl = new kakao.maps.ZoomControl();		//확대, 축소 UI 추가
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
	function relayout() {    
	    
	    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
	    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
	    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
	    map.relayout();
	}
	
	var positions = [
		<c:forEach items='${tio_alist}' var='tio'>
			{
				title: '${tio.ctName}',
				latlng: new kakao.maps.LatLng(${tio.mbMapY},${tio.mbMapX}) // y좌표, x좌표
			},
		</c:forEach>
	];
	
	var bounds = new kakao.maps.LatLngBounds();
	var overlayArray = [];	//마커 클릭 시 띄울 오버레이들 담는 배열
	
	for (var i = 0; i < positions.length; i++) {	//데이터 개수만큼 반복문 돌면서 마커, 오버레이 생성
		var data = positions[i];

		displayMarker(data,i);
	}
	
	function displayMarker(data,e){

	  	var content ='<div>';
		content+='<div class="marker_wrap">';
		content+=data.title;
		content+='</div>';
		content+='<div class="marker_pin">';
		content+='</div">';
		content+='</div">';
			
		var marker = new kakao.maps.CustomOverlay({	//좌표값을 지정해 마커 생성
			map : map,
			position : data.latlng,
		    content: content
		});		
		
	}
	
	
</script>
</body>
</html>