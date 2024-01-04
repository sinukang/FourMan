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
<script src="https://kit.fontawesome.com/1f85e66bca.js" crossorigin="anonymous"></script>

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<jsp:include page="../include/trainerHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#trainer_tab2').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents row"><!-- 코치정보(패딩탑) -->
									<div class="left_bar"><!-- 코치정보 -->
										<div class="trainer_info">
											<div class="trainer_photo">
												<div class="trainer_content">
													<h4>
														사진
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
													</h4>
													<div class="content_wrap">
														<div>
															<div class="photo_box">
																<div style="display: inline;">
																<!-- a태그는 modal창을 띄우는 용도 -->
																	<a href="${pageContext.request.contextPath}/resources/img/mainbanner1.png">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner1.png">
																				</div>
																			</div>
																		</div>
																	</a>
																	<a href="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
																		<div class="photo_wrap">
																			<div class="photo_rel">
																				<div class="photo_abs">
																					<img class="photo_size" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
																				</div>
																			</div>
																		</div>
																	</a>
																	<a href="${pageContext.request.contextPath}/resources/img/mainbanner3.png">
																		<div class="photo_wrap">
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
													</div>
												</div>
											</div>
											<div class="trainer_introduce">
												<div class="trainer_content">
													<h4>
														선생님 소개
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_lesson">
												<div class="trainer_content">
													<h4>
														1회 체험권
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_career">
												<div class="trainer_content">
													<h4>
														검증된 자격사항
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_schedule">
												<div class="trainer_content">
													<h4>
														레슨 스케줄
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
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
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
													</div>
												</div>
											</div>
											<div class="trainer_review">
												<div class="trainer_content">
													<h4>
														최근후기
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
													</h4>
													<div class="content_wrap">
														<div class="content_text">소개글이없어요</div>
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
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
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
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
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
														<div class="content_modify">
															<span class="edit">
																<i class="fa-solid fa-pencil"></i> 수정하기
															</span>
														</div>
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
														<img class="trainer_round_image" src="${pageContext.request.contextPath}/resources/img/mainbanner2.png">
													</div>
													<div>
														<div class="trainer_name">김빡빡 선생님</div>
														<div class="center_name">센터없음</div>
														<div class="stars">
															<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/resources/img/star_on.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
															<img src="${pageContext.request.contextPath}/resources/img/star_off.svg" style="margin: 0px 0.5px; display: inline; vertical-align: baseline;">
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
					<jsp:include page="../include/footer.jsp"/>
				</div>
			</div>
		</div>
	</div>
</body>
</html>