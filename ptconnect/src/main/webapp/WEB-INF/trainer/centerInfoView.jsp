<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>센터 정보</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/trainer.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/photoModal.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/modal.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/1f85e66bca.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c7bf35d83cfc2f31f5a3bc48bf7f1605&libraries=services"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="center_photo_box">
							<div class="photo_box">
								<img class="first" src="${pageContext.request.contextPath}/resources/img/center1.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/resources/img/center2.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/resources/img/center3.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/resources/img/center4.jpg">
								<div class="rest popup_btn" style="background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('${pageContext.request.contextPath}/resources/img/fitness1.jpg');">
									<div class="center_photo_view"><i class="fa-solid fa-images"></i>사진 전체보기</div>
								</div>
							</div>
						</div>
						<jsp:include page="../include/trainerViewHeader.jsp"/>

						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents row"><!-- 코치정보(패딩탑) -->
									<div class="left_bar"><!-- 코치정보 -->
										<div class="center_info">
											<div class="center_basic">
												<div class="trainer_content">
													<div class="content_wrap">
														<div class="center">
															<strong>${tio.ctName}</strong>
															<!-- <div class="contact" onclick="setCenter()">상세 정보</div> -->
														</div>
														<div class="center">
															<span>${tio.mbAddr}</span>
														</div>
														<div class="center">
															<!-- <span>전북대학교 정문 맞은편 1층 롯데후레쉬</span> -->
														</div>
														<div>
															<div class="photo_box">
																<div style="display: inline;">
																<!-- a태그는 modal창을 띄우는 용도 -->
																	<div class="photo_wrap">
																		<div class="photo_rel">
																			<div class="photo_abs">
																				<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/center1.jpg">
																			</div>
																		</div>
																	</div>
																	<div class="photo_wrap">
																		<div class="photo_rel">
																			<div class="photo_abs">
																				<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/center2.jpg">
																			</div>
																		</div>
																	</div>
																	<div class="photo_wrap">
																		<div class="photo_rel">
																			<div class="photo_abs">
																				<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/center3.jpg">
																			</div>
																		</div>
																	</div>
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
														<div class="content_text">
															${tio.ctIntro}
															오늘도 기분좋은 하루되세요!
															
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
																<span>${tio.ctInfo}주차 3시간 무료</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-shirt"></i>
																<span>${tio.ctInfo}운동복, 수건 무료</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-box"></i>
																<span>${tio.ctInfo}개인 사물함 1개월 10,000원</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-shower"></i>
																<span>${tio.ctInfo}샤워시설</span>
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
															<strong>${tio.ctName}</strong>
															<!-- <div class="contact" onclick="centerInfoView()">상세 정보</div> -->
														</div>
														<div class="center">
															<span>${tio.mbAddr}</span>
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
														<img class="trainer_round_image" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
													</div>
													<div>
														<div class="trainer_name">${tio.mbName}</div>
														<div class="center_name">${tio.ctName}</div>
														<div class="stars">
															<c:choose>
																<c:when test="${tio.reviewRate ge 4.5}">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																</c:when>
																<c:when test="${tio.reviewRate ge 4}">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																</c:when>
																<c:when test="${tio.reviewRate ge 3}">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																</c:when>
																<c:when test="${tio.reviewRate ge 2}">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																</c:when>
																<c:otherwise>
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																</c:otherwise>
															</c:choose>
															<span class="review_wrap">
																<span class="rating">${tio.reviewRate}</span>
																<span class="count">(${tio.reviewCnt})</span>
															</span>
														</div>
														<div class="pickup_line">${tio.tnOneLine}</div>
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
												<button class="order">1회 체험 신청 하기</button>
												<button class="counseling">
													<i class="fa-solid fa-comment"></i>
													상담받기
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<jsp:include page="../include/footer.jsp"/>
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
	
	<!--결제 모달창 -->
	<jsp:include page="../include/orderModal.jsp"/>
	
<script>
	
	window.onload = function() {
		$('#trainer_tab2').addClass('active_tab');
		
		//탭 a 태그 주소에 매개변수 받는 부분 추가
		let a_tap_link = $(".a_tap_link");
		let href;
		for(var i = 0; i < a_tap_link.length; i++){
			href = $(a_tap_link[i]).prop('href');
			href += "?tnNo=${tio.tnNo}";
			$(a_tap_link[i]).attr("href", href);
		}
		$(a_tap_link[2]).text("후기(${tio.reviewCnt})");
	}
	
	function centerInfoView(){
		location.href = "${pageContext.request.contextPath}/centerInfoView?tnNo=${tio.tnNo}";
	}
	
	function review(){
		location.href = "${pageContext.request.contextPath}/review?tnNo=${tio.tnNo}";
	}
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div var geocoder = new kakao.maps.services.Geocoder();
	mapOption = {
		center: new kakao.maps.LatLng(${tio.mbMapY}, ${tio.mbMapX}), // 지도의 중심좌표
		level: 3 // 지도의 확대 레벨
	};  
	
	//지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	var markerPosition  = new kakao.maps.LatLng(${tio.mbMapY}, ${tio.mbMapX}); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position: markerPosition
	});	
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map)
	
	var iwContent = '<div style="padding:5px;">${tio.ctName}<div class="close" onclick="closeInfoWindow()"></div><br><a href="https://map.kakao.com/link/map/${tio.ctName},${tio.mbMapY}, ${tio.mbMapX}" style="color:blue" target="_blank">큰 지도보기</a> <a href="https://map.kakao.com/link/to/${tio.ctName},${tio.mbMapY}, ${tio.mbMapX}" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	iwPosition = new kakao.maps.LatLng(${tio.mbMapY}, ${tio.mbMapX}); //인포윈도우 표시 위치입니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
		position : iwPosition, 
		content : iwContent 
	});	
	
	// 마커에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(marker, 'click', function() {
		// 마커 위에 인포윈도우를 표시합니다
		infowindow.open(map, marker);
	});
	
	function closeInfoWindow(){
		infowindow.close();
	}
	
</script>

<script src="${pageContext.request.contextPath}/resources/js/order.js">
</script>
<script src="${pageContext.request.contextPath}/resources/js/photoModal.js">
</script>
<script src="${pageContext.request.contextPath}/resources/js/reviewPhotoModal.js">
</script>
</body>
<style>
	.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	.wrap * {padding: 0;margin: 0;}
	.wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	.info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	.close {position: absolute;top: 5px;right: -5px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	.close:hover {cursor: pointer;}
	.info .body {position: relative;overflow: hidden;}
	.info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
	.desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
	.desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	.info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	.info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	.info .link {color: #5085BB;}
</style>
</html>