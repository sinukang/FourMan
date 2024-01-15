<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
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
									<div class="center_photo_view"><i class="fa-solid fa-images"></i>사진 전체보기</div>
								</div>
							</div>
						</div>
						<jsp:include page="../include/trainerViewHeader.jsp"/>

						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents row"><!-- 코치정보(패딩탑) -->
									<div class="left_bar"><!-- 코치정보 -->
										<div class="trainer_info">
											<div class="trainer_review">
												<div class="trainer_content">
													<div class="content_wrap rating">
														<div style="display: flex;">
															<span class="review_rate">${tio.reviewRate}</span>
															<div class="review_summary">
																<div style="display: flex;">
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
																</div>
																<div>5개의 후기</div>
															</div>
														</div>
														<div>
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
																							</a>
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
																
																<c:forEach var="rvo" items="${rvo_alist}">
																	<div class="review">
																		<li>
																			<div>
																				<div class="review_header">
																					<div>
																						<span class="user_icon">
																							<i class="fa-solid fa-user"></i>
																						</span>
																						<span class="user_name">${rvo.mbName}</span>
																						<span class="date">${rvo.rvDate}</span>
																					</div>
																					<div class="review_star">
																						<c:choose>
																							<c:when test="${rvo.rvRate eq 5}">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																							</c:when>
																							<c:when test="${rvo.rvRate eq 4}">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																							</c:when>
																							<c:when test="${rvo.rvRate eq 3}">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																								<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" class="review_star">
																							</c:when>
																							<c:when test="${rvo.rvRate eq 2}">
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
																								</a>
																							</div>
																						</div>
																					</div>
																					<div class="review_text">
																						${rvo.rvContent}
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
																</c:forEach>
																
															</ul>
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
														<div class="center_name" onclick="centerInfoView()">${tio.ctName}</div>
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
	
	<!--리뷰 모달창 -->
	<jsp:include page="../include/reviewModal.jsp"/>
	<!--결제 모달창 -->
	<jsp:include page="../include/orderModal.jsp"/>
	
<script>

	window.onload = function() {
		$('#trainer_tab3').addClass('active_tab');
		
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