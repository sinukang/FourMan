<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/info.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/1f85e66bca.js" crossorigin="anonymous"></script>

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<jsp:include page="../include/centerHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#trainer_tab1').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div class="row"><!-- 코치정보 -->
										<div class="user_info">
											<div class="user_wrap">
												<div class="user_input">
													<label>센터 이름</label>
													<input type="text" value="${mo.mbName}" disabled>
												</div>
											</div>
											<div class="user_wrap">
												<div class="user_input">
													<label>이메일</label>
													<input type="text" value="${mo.mbEmail}" disabled>
												</div>
											</div>
											<div class="user_wrap">
												<div class="user_input">
													<label>센터 주소</label>
													<div class="center_search">
														<input type="text" name="centerName" value="${mo.mbAddr}" disabled>
<!-- 														<div class="search_btn"> -->
<!-- 															<i class="fa-solid fa-magnifying-glass"></i> -->
<!-- 														</div> -->
													</div>
												</div>
											</div>
<!-- 											<div class="user_wrap"> -->
<!-- 												<div class="user_input"> -->
<!-- 													<label>성별</label> -->
<!-- 													<div class="flex"> -->
<!-- 														<div class="button_wrap"> -->
<!-- 															<button class="button active"><span>남성</span></button> -->
<!-- 														</div> -->
<!-- 														<div class="button_wrap"> -->
<!-- 															<button class="button"><span>여성</span></button> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
											<div class="user_wrap">
												<div class="user_input">
													<label>핸드폰 번호<span>*</span></label>
													<div class="input_wrap">
														<div class="input_width">
															<input type="tel" name="tel" placeholder="'-' 없이 입력" maxlength="20" autocomplete="off" value="${mo.mbPhone}">														
														</div>
														<div class="send_submit">
															<div class="send_auth_button">인증번호 발송</div>
														</div>
													</div>
												</div>
											</div>
											<hr>
											<div class="submit">
												<button class="submit_button checked"><span>정보 업데이트</span></button>
											</div>
											<div class="resign">
												회원탈퇴
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