<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/source/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/source/css/info.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../../source/include/header.jsp"/>
					<section><!-- 섹션 -->
						<jsp:include page="../../source/include/userHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#user_tab1').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div class="row"><!-- 코치정보 -->
										<div class="user_info">
											<h1>비밀번호 변경</h1>
											<hr>
											<div class="user_wrap">
												<div class="user_input">
													<label>현재 비밀번호</label>
													<input type="password" maxlength="20" placeholder="현재 비밀번호를 입력해주세요.">
												</div>
											</div>
											<div class="user_wrap">
												<div class="user_input">
													<label>새로운 비밀번호</label>
													<input type="password" name="pwd" maxlength="20" placeholder="변경할 비밀번호를 입력해주세요.">
												</div>
											</div>
											<div class="user_wrap">
												<div class="user_input">
													<label>새로운 비밀번호 확인</label>
													<input type="password" name="pwd2" maxlength="20" placeholder="변경할 비밀번호를 입력해주세요.">
												</div>
											</div>
											
											<hr>
											<div class="submit">
												<div class="half_button">
													<button class="submit_button checked"><span>비밀번호 변경</span></button>
												</div>
												<div class="half_button">
													<button class="submit_button unchecked"><span>취소</span></button>
												</div>
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
					<jsp:include page="../../source/include/footer.jsp"/>
				</div>
			</div>
		</div>
	</div>
</body>
</html>