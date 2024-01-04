<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/trainer.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/photoModal.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/modal.css" type="text/css" rel="stylesheet">
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
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="center_photo_box">
							<div class="photo_box">
								<img class="first" src="${pageContext.request.contextPath}/resources/img/center1.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/resources/img/center2.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/resources/img/center3.jpg">
								<img class="rest" src="${pageContext.request.contextPath}/resources/img/center4.jpg">
								<div class="rest popup_btn" style="background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('${pageContext.request.contextPath}/resources/img/fitness1.jpg');">
									<div class="center_photo_view"><i class="fa-solid fa-images"></i>8개 사진 전체보기</div>
								</div>
							</div>
						</div>
						<jsp:include page="../include/trainerViewHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#trainer_tab1').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents row"><!-- 코치정보(패딩탑) -->
									<div class="left_bar"><!-- 코치정보 -->
										<div class="trainer_info">
											<div class="trainer_introduce">
												<div class="trainer_content">
													<h4>
														선생님 소개
													</h4>
													<div class="content_wrap">
														<div>
															<div class="photo_box">
																<div style="display: inline;">
																<!-- a태그는 modal창을 띄우는 용도 -->
																	<div class="photo_wrap">
																		<div class="photo_rel">
																			<div class="photo_abs">
																				<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner1.png">
																			</div>
																		</div>
																	</div>
																	<div class="photo_wrap">
																		<div class="photo_rel">
																			<div class="photo_abs">
																				<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
																			</div>
																		</div>
																	</div>
																	<div class="photo_wrap">
																		<div class="photo_rel">
																			<div class="photo_abs">
																				<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner3.png">
																			</div>
																		</div>
																	</div>
															</div>
														</div>
													</div>
													<div class="content_text">오늘도 기분좋은 하루되세요! 

이젠IT짐 운동도우미 김빡빡 트레이너입니다!
운동하기 참 좋은날이네요^^

- 언제까지 식사량 줄여가며 요요 다이어트 하실 건가요? 
빙빙 돌아가며 목표 달성도 못하고 포기하는 것보다
"지름길"로 가서 원하는 몸으로 바꾸시는 게 더 좋지 않을까요?

- 더 이상 본인체형에 맞지 않는 움직임 따라하며 운동하지마세요!
흉내내는 운동이 아닌 회원님 체형에 맞게 
올바르게 바른움직임으로 운동기구 사용하시면서 
바른체형! 강한근력!
만들 수 있도록 도움드리겠습니다! :-)

• 헬린이 전문
• 바디프로필 &amp; 시합준비
• 뱃살 가장 빨리 빼는 효율적인 다이어트 방법
• 쳐진살 탄력 잡는 가장 빠른 방법
• 어깨 파열 회복 &amp; 강화
• 허리근육 회복 &amp; 강화
• 다리 근력 회복 &amp; 강화 
• 각종 신체부위 손상에 따른 복구 전문								</div>
													</div>
												</div>	
											</div>
											<div class="trainer_career">
												<div class="trainer_content">
													<h4>
														검증된 자격사항
													</h4>
													<div class="content_wrap">
														<div>
															<div class="trophy">
																<i class="fa-solid fa-award"></i>
																<span>생활스포츠지도사 2급</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-trophy"></i>
																<span>2018 미스터 전북 70kg 2위</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-trophy"></i>
																<span>2019 미스터 전북 70kg 2위</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-trophy"></i>
																<span>2020 미스터 전북 70kg 2위</span>
															</div>
															<div class="trophy">
																<i class="fa-solid fa-dumbbell"></i>
																<span>전)이젠그래픽체육관 트레이너</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="trainer_schedule">
												<div class="trainer_content">
													<h4>
														레슨 스케줄
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_program">
												<div class="trainer_content">
													<h4>
														프로그램
													</h4>
													<div class="content_wrap">
														<div class="speciality">
														체형에 맞는 체형관리 및 다이어트 방법/ 체형에 따른 운동 기구 사용법
														</div>
														<div class="content_text">
														회원님 안녕하세요! 혹시!
														퍼스널 체형이라고 들어보셨나요?
														✅ 움직임 깨우기
														✅ 올바른 움직임으로 운동기구 사용하기
														회원님 ! 맞춤 근육 착용할 준비 되셨나요?
														</div>
													</div>
													<div class="content_wrap">
														<div class="speciality content_wrap_title">
														대회준비 및 바디프로필 전문
														</div>
														<div class="content_text">
														언제까지 헬스장가서 런닝머신만 타실건가요? 
														헬스라는 종목을 꾸준히 진행하게 된지도 10년이라는 시간이 흘렀는데요.
														지금까지도 아침마다 변화되는 제 모습을 보며 신나 합니다:) 
														✅ 확실한 비포에프터를 원하시는 분
														✅ 운동 경력이 꽤 있지만 변화가 없으신 분들
														✅ 본인의 신체부위 약점과 강점을 정확히 알고 약점 보완을 원하시는 분들 
														☝️올해의 체형대상은 바로 회원님 당신입니다~!
														</div>
													</div>
												</div>
											</div>
											<div class="trainer_review">
												<div class="trainer_content">
													<h4>
														최근후기
													</h4>
													<div class="content_wrap rating">
														<div style="display: flex;">
															<span class="review_rate">3.2</span>
															<div class="review_summary">
																<div style="display: flex;">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																	<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																</div>
																<div>5개의 후기</div>
															</div>
														</div>
														<div>
<!-- 															<div class="review_button_expand_wrap" style="opacity:0;"> -->
<!-- 																<div class="review_button_expand">1회 체험 후기</div> -->
<!-- 																<div class="review_button_expand">일반 이용 후기(증빙필요)</div> -->
<!-- 															</div> -->
															<div>
																<button class="review_write_button">
																	<i class="fa-solid fa-pencil"></i> <span>리뷰 작성하기</span>
																</button>
															</div>
														</div>
													</div>
													<div class="content_wrap">
														<div class="content_wrap_title">생생한 후기를 확인하세요.</div>
														<div class="review_list">
															<ul>
																<div class="review">
																	<li>
																		<div>
																			<div class="review_header">
																				<div>
																					<span class="user_icon">
																						<i class="fa-solid fa-user"></i>
																					</span>
																					<span class="user_name">김덕배</span>
																					<span class="date">2023.11.05</span>
																				</div>
																				<div class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																				</div>
																			</div>
																			<div class="review_context">
																				<div class="review_photo">
																					<div class="photo_box">
																						<div style="display: inline;">
																							<!-- a태그는 modal창을 띄우는 용도 -->
																								<div class="photo_wrap review_photo">
																									<div class="photo_rel">
																										<div class="photo_abs">
																											<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner1.png">
																										</div>
																									</div>
																								</div>
																								<div class="photo_wrap review_photo">
																									<div class="photo_rel">
																										<div class="photo_abs">
																											<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
																										</div>
																									</div>
																								</div>
																								<div class="photo_wrap review_photo">
																									<div class="photo_rel">
																										<div class="photo_abs">
																											<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner3.png">
																										</div>
																									</div>
																								</div>
																						</div>
																					</div>
																				</div>
																				<div class="review_text">
																				헬스를 처음 접해보는데 그만큼 어색하고 생소했지만 트레이너님 께서 굉장히 부드럽게 잘 이끌어주셔서 피티받는 시간동안 힘들지만 집중력있게 배울수있었습니다

일단 느낀점은 평소 유튜브로 이것저것 찾아봤을때와는 달리 직접 피티를받아보니까 나를 가르처주시는 트레이너님의 꼼꼼함이 느껴저서 만족스러웠고 부족한 부분들을 이해시켜주시려는 전문성도 좋았고, 다소 벽이 느껴질수도 있는 첫수업이었지만 전혀 어색하지않게 접근해주셨던 그런점에 믿음이가고  나머지 피티횟수도 열심히 하고싶은 마음이들었습니다

자주 마음만 있고 미루다보니 등록하기 힘든 헬스였는데 첫 수업 이후 오기를 잘했구나 라는 생각이들어서 그점도 뿌듯하고 좋았습니다 회원에게 건성인 트레이너분들도 많다고 들었었는데 신준배 트레이너님과 만나게되어 다행입니다😁👍
																				</div>
																			</div>
																		</div>
																	</li>
																</div>
																<div class="review">
																	<li>
																		<div>
																			<div class="review_header">
																				<div>
																					<span class="user_icon">
																						<i class="fa-solid fa-user"></i>
																					</span>
																					<span class="user_name">장충동</span>
																					<span class="date">2023.11.02</span>
																				</div>
																				<div class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																					<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																				</div>
																			</div>
																			<div class="review_context">
																				<div class="review_photo">
																					<div class="photo_box">
																						<div style="display: inline;">
																							<!-- a태그는 modal창을 띄우는 용도 -->
																								<div class="photo_wrap review_photo">
																									<div class="photo_rel">
																										<div class="photo_abs">
																											<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner1.png">
																										</div>
																									</div>
																								</div>
																								<div class="photo_wrap review_photo">
																									<div class="photo_rel">
																										<div class="photo_abs">
																											<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
																										</div>
																									</div>
																								</div>
																								<div class="photo_wrap review_photo">
																									<div class="photo_rel">
																										<div class="photo_abs">
																											<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner3.png">
																										</div>
																									</div>
																								</div>
																						</div>
																					</div>
																				</div>
																				<div class="review_text">
																				헬스를 처음 접해보는데 그만큼 어색하고 생소했지만 트레이너님 께서 굉장히 부드럽게 잘 이끌어주셔서 피티받는 시간동안 힘들지만 집중력있게 배울수있었습니다

일단 느낀점은 평소 유튜브로 이것저것 찾아봤을때와는 달리 직접 피티를받아보니까 나를 가르처주시는 트레이너님의 꼼꼼함이 느껴저서 만족스러웠고 부족한 부분들을 이해시켜주시려는 전문성도 좋았고, 다소 벽이 느껴질수도 있는 첫수업이었지만 전혀 어색하지않게 접근해주셨던 그런점에 믿음이가고  나머지 피티횟수도 열심히 하고싶은 마음이들었습니다

자주 마음만 있고 미루다보니 등록하기 힘든 헬스였는데 첫 수업 이후 오기를 잘했구나 라는 생각이들어서 그점도 뿌듯하고 좋았습니다 회원에게 건성인 트레이너분들도 많다고 들었었는데 신준배 트레이너님과 만나게되어 다행입니다😁👍
																				</div>
																				<div class="reply_comment">
																					<div class="user_name">김빡빡 선생님</div>
																					안녕하세요~! 첫수업이 하체운동이라 힘드셨을텐데 만족스러워하셨다니 기분이 좋네요 첫수업 후 후기작성까지 감사합니다~!
다리근육도 단순히 앉았다 일어났다가 아닌 발바닥 접지부터 잡아주며, 허벅지근육은 어디부터 사용되어야 하는지 
근육을 사용할때도 순차가 있습니다~
앞으로도 근육에 움직임 하나하나 회원님 체형에 맞는 움직임 인지 시켜드리며, 운동에 대한 흥미 가질 수 있도록 최선을 다해 도움드리겠습니다 ~!
감사합니다 !💪💪
																				</div>
																			</div>
																		</div>
																	</li>
																</div>
															</ul>
														</div>
														<div>
															<button class="view_review_button">
																<span>전체 후기 보기</span>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="trainer_price">
												<div class="trainer_content">
													<h4>
														레슨 이용 가격
													</h4>
													<div class="content_wrap">
														<div class="price_head">개인레슨</div>
														<div class="price_table">
															<div class="price_line">
																<div class="price_count">30회</div>
																<div class="price">
																	<div class="price_per">회당<strong>50,000</strong>원</div>
																	<div class="price_total">1,500,000원</div>
																</div>
															</div>
															<div class="price_line">
																<div class="price_count">20회</div>
																<div class="price">
																	<div class="price_per">회당<strong>55,000</strong>원</div>
																	<div class="price_total">1,100,000원</div>
																</div>
															</div>
															<div class="price_line">
																<div class="price_count">10회</div>
																<div class="price">
																	<div class="price_per">회당<strong>60,000</strong>원</div>
																	<div class="price_total">600,000원</div>
																</div>
															</div>
														</div>
													</div>
													<div class="content_wrap">
														<div class="price_head">그룹레슨</div>
														<div class="price_table">
															<div class="price_line">
																<div class="price_count">30회</div>
																<div class="price">
																	<div class="price_per">회당<strong>28,333</strong>원</div>
																	<div class="price_total">850,000원</div>
																</div>
															</div>
															<div class="price_line">
																<div class="price_count">20회</div>
																<div class="price">
																	<div class="price_per">회당<strong>32,500</strong>원</div>
																	<div class="price_total">650,000원</div>
																</div>
															</div>
															<div class="price_line">
																<div class="price_count">10회</div>
																<div class="price">
																	<div class="price_per">회당<strong>45,000</strong>원</div>
																	<div class="price_total">450,000원</div>
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
														<img class="trainer_round_image" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
													</div>
													<div>
														<div class="trainer_name">김빡빡 선생님</div>
														<div class="center_name">이젠IT짐</div>
														<div class="stars">
															<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
															<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
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
		<div id="modal_wrap" class="modal_wrap">
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
	
	
	<!--리뷰 모달창 -->
	<jsp:include page="../include/reviewModal.jsp"/>
	<!--결제 모달창 -->
	<jsp:include page="../include/orderModal.jsp"/>
	
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
<script src="${pageContext.request.contextPath}/resources/js/review.js">
</script>
<script src="${pageContext.request.contextPath}/resources/js/order.js">
</script>
<script src="${pageContext.request.contextPath}/resources/js/photoModal.js">
</script>
<script src="${pageContext.request.contextPath}/resources/js/reviewPhotoModal.js">
</script>

</body>
</html>