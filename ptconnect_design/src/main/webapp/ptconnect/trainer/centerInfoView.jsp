<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/source/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/source/css/trainer.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/source/css/photoModal.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/1f85e66bca.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6eaf7ed9af48a5319b75a0937ac3096&libraries=services"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../../source/include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="center_photo_box">
							<div class="photo_box">
								<img class="first" src="${pageContext.request.contextPath}/source/img/center1.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/source/img/center2.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/source/img/center3.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/source/img/center4.jpg">
								<div class="rest popup_btn" style="background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('${pageContext.request.contextPath}/source/img/fitness1.jpg');">
									<div class="center_photo_view"><i class="fa-solid fa-images"></i>8개 사진 전체보기</div>
								</div>
							</div>
						</div>
						<jsp:include page="../../source/include/trainerViewHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#trainer_tab2').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents row"><!-- 코치정보(패딩탑) -->
									<div class="left_bar"><!-- 코치정보 -->
										<div class="center_info">
											<div class="center_basic">
												<div class="trainer_content">
													<div class="content_wrap">
														<div class="center">
															<strong>이젠IT짐 금암점</strong>
															<div class="contact" onclick="setCenter()">상세 정보</div>
														</div>
														<div class="center">
															<span>전북 전주시 덕진구 백제대로 572 5층 이젠IT짐 금암점</span>
														</div>
														<div class="center">
															<span>전북대학교 정문 맞은편 1층 롯데후레쉬</span>
														</div>
														<div>
															<div class="photo_box">
																<div style="display: inline;">
																<!-- a태그는 modal창을 띄우는 용도 -->
																	<a href="${pageContext.request.contextPath}/source/img/center1.jpg">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/source/img/center1.jpg">
																				</div>
																			</div>
																		</div>
																	</a>
																	<a href="${pageContext.request.contextPath}/source/img/center2.jpg">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/source/img/center2.jpg">
																				</div>
																			</div>
																		</div>
																	</a>
																	<a href="${pageContext.request.contextPath}/source/img/center3.jpg">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/source/img/center3.jpg">
																				</div>
																			</div>
																		</div>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>	
											<div class="center_introduce">
												<div class="trainer_content">
													<h4>
														센터 소개
													</h4>
													<div class="content_wrap">
														<div class="content_text">오늘도 기분좋은 하루되세요! 

이젠IT짐 입니다!
운동하기 참 좋은날이네요^^

														</div>
													</div>
												</div>
											</div><div class="center_info">
												<div class="trainer_content">
													<h4>
														센터 시설 정보
													</h4>
													<div class="content_wrap">
														<div>
															<div class="trophy">
																<i class="fa-solid fa-square-parking"></i>
																<span>주차 3시간 무료</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-shirt"></i>
																<span>운동복, 수건 무료</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-box"></i>
																<span>개인 사물함 1개월 10,000원</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-shower"></i>
																<span>샤워시설</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="center_price">
												<div class="trainer_content">
													<h4>
														센터 이용 가격
													</h4>
													<div class="content_wrap">
														<div class="price_head">센터 이용료</div>
														<div class="price_table">
															<div class="price_line">
																<div class="price_count">3개월</div>
																<div class="price">
																	<div class="price_per">월<strong>60,000</strong>원</div>
																	<div class="price_total">180,000원</div>
																</div>
															</div>
															<div class="price_line">
																<div class="price_count">2개월</div>
																<div class="price">
																	<div class="price_per">월<strong>75,000</strong>원</div>
																	<div class="price_total">150,000원</div>
																</div>
															</div>
															<div class="price_line">
																<div class="price_count">1개월</div>
																<div class="price">
																	<div class="price_per">월<strong>90,000</strong>원</div>
																	<div class="price_total">90,000원</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="trainer_location">
												<div class="trainer_content">
													<h4>
														위치
													</h4>
													<div class="content_wrap">
														<div class="center">
															<strong>이젠IT짐 금암점</strong>
															<div class="contact" onclick="setCenter()">상세 정보</div>
														</div>
														<div class="center">
															<span>전북 전주시 덕진구 백제대로 572 5층 이젠IT짐 금암점</span>
														</div>
														<div id="map" class="center_location">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="right_bar"><!-- 코치프로필 -->
										<div class="trainer_profile">
											<div class="upside">
												<div class="report_button">
													&#x1F6A8
												</div>
												<div>
													<div>
														<img class="trainer_round_image" src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
													</div>
													<div>
														<div class="trainer_name">김빡빡 선생님</div>
														<div class="center_name">이젠IT짐</div>
														<div class="stars">
															<img src="${pageContext.request.contextPath}/source/img/star_on.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/source/img/star_on.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/source/img/star_on.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/source/img/star_off.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/source/img/star_off.svg" class="review_star">
															<span class="review_wrap">
																<span class="rating">(3.2)</span>
																<span class="count">(5)</span>
															</span>
														</div>
														<div class="pickup_line">"안녕하세요, 개빡센 트레이너 김빡빡입니다."</div>
														<div class="list_wrap">
															<div class="flex_box">
																<span class="left">자격검증</span><span class="right">자격사항을 등록하세요</span>
															</div>
															<div class="flex_box">
																<span class="left">전문분야</span><span class="right">프로그램을 추가하세요</span>
															</div>
															<div class="flex_box">
																<span class="left">대표가격</span><span class="right">가격정보를 등록하세요</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="downside">
												<div>
													<div class="counseling">
														<i class="fa-solid fa-comment"></i>
														<span>상담받기</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<jsp:include page="../../source/include/footer.jsp"/>
				</div>
			</div>
		</div>
	</div>
	<div>
		<div id="modal_wrap">
			<div class="modal_b">
				<div class="close_button">
					<div id="close_btn">
						<span>&times;</span>
					</div>
				</div>
				<div class="modal_body">
					<div class="swiper my_swiper">
						<div class="swiper-wrapper">
					
						</div>
					</div>
				</div>
			</div>
						<div class="swiper-pagination-custom"></div>
			<div class="swiper-button-next" style="color: white;"></div>
			<div class="swiper-button-prev" style="color: white;"></div>
		</div>
	</div>
	<div>
	</div>
<script>
	var mapX = 0;
	var mapY = 0;

	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div var geocoder = new kakao.maps.services.Geocoder();
	
	mapOption = {
	    center: new kakao.maps.LatLng(35.813605625795276, 127.09494840838936), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};  
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	//주소로 좌표를 검색합니다
	var geocoder = new kakao.maps.services.Geocoder();
	geocoder.addressSearch('전북 전주시 덕진구 백제대로 572 5층', function(result, status) {
	
	// 정상적으로 검색이 완료됐으면 
		if (status === kakao.maps.services.Status.OK) {
	
		    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			mapX = result[0].x;
			mapY = result[0].y;
		    // 결과값으로 받은 위치를 마커로 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: coords
		    });
		
		    // 인포윈도우로 장소에 대한 설명을 표시합니다
		    var infowindow = new kakao.maps.InfoWindow({
		        content: '<div style="width:150px;text-align:center;padding:6px 0;">이젠IT짐</div>'
		    });
		    infowindow.open(map, marker);
		
		    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		    map.setCenter(coords);
		} 
	}); 

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
	
</script>
<script src="${pageContext.request.contextPath}/source/js/photoModal.js">

</script>
</body>
</html>