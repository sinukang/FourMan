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
<script src="https://kit.fontawesome.com/1f85e66bca.js" crossorigin="anonymous"></script>

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../../source/include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="inner_header">
							<div class="tab_wrap my_container">
								<div class="my_container tab_flex">
									<div id="trainer_tab1" class="tab"><a href='trainerInfo.jsp'>트레이너</a></div>
									<div id="trainer_tab2" class="tab"><a href='trainerInfoModify.jsp'>센터</a></div>
									<div id="trainer_tab3" class="tab"><a href='trainerSchedule.jsp'>후기</a></div>
								</div>
							</div>
						</div>
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
																	<a href="${pageContext.request.contextPath}/source/img/mainbanner1.png">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/source/img/mainbanner1.png">
																				</div>
																			</div>
																		</div>
																	</a>
																	<a href="${pageContext.request.contextPath}/source/img/mainbanner2.png">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
																				</div>
																			</div>
																		</div>
																	</a>
																	<a href="${pageContext.request.contextPath}/source/img/mainbanner3.png">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/source/img/mainbanner3.png">
																				</div>
																			</div>
																		</div>
																	</a>
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
														<div class="speciality">
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
																	<img src="${pageContext.request.contextPath}/source/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
																	<img src="${pageContext.request.contextPath}/source/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
																	<img src="${pageContext.request.contextPath}/source/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
																	<img src="${pageContext.request.contextPath}/source/img/star_off.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
																	<img src="${pageContext.request.contextPath}/source/img/star_off.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
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
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_price">
												<div class="trainer_content">
													<h4>
														레슨 이용 가격
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_pickup_line">
												<div class="trainer_content">
													<h4>
														한줄 인사말
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_location">
												<div class="trainer_content">
													<h4>
														위치
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="right_bar"><!-- 코치프로필 -->
										<div class="trainer_profile">
											<div class="upside">
												<div>
													<div>
														<img class="trainer_round_image" src="${pageContext.request.contextPath}/source/img/mainbanner2.png">
													</div>
													<div>
														<div class="trainer_name">김빡빡 선생님</div>
														<div class="center_name">센터없음</div>
														<div class="stars">
															<img src="${pageContext.request.contextPath}/source/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/source/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/source/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/source/img/star_off.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/source/img/star_off.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
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
</body>
</html>