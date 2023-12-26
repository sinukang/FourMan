<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PTConnect 기본페이지</title>
<link href="./source/css/home.css" type="text/css" rel="stylesheet">
<link href="./source/css/commonExample.css" type="text/css" rel="stylesheet">

</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<!-- 헤더 -->
					<jsp:include page="./source/include/header.jsp"/>
					<!-- 헤더끝 -->
					<section><!-- 섹션 -->
						<div class="inner_header">
							<div class="tab_wrap my_container">
								<div class="my_container tab_flex">
									<div class="tab active_tab">내부_탭1</div>
									<div class="tab">내부_탭2</div>
									<div class="tab">내부_탭3</div>
									<div class="tab">내부_탭4</div>
								</div>
							</div>
						</div>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 마진오토 -->
								<div class="inner_contents"><!-- 내부 컨텐츠(패딩탑) -->
									<div class="example_contents"><!-- 이곳부터 div로 화면구현하세요 -->
										<div class="example_wrap">
											<div class="chat_list">
												<div class="header">
													<div class="read_all">모두읽음</div>
												</div>
												<div class="chat_comp open">
													<img class="chat_icon" src="./source/img/megaphone_off.svg">
													<div>
														<h5 class="chat_title">안녕하세요 개빡센트레이너 김빡빡입니...</h5>
														<div class="other_user">김빡빡</div>
														<span class="chat_time">11:32</span>
													</div>
												</div>
												<div class="chat_comp">
													<img class="chat_icon" src="./source/img/megaphone_off.svg">
													<div>
														<h5 class="chat_title">안빡센트레이너 박빡빡입니다. 보내주신...</h5>
														<div class="other_user">박빡빡</div>
														<span class="chat_time">10:11</span>
													</div>
												</div>
												<div class="chat_comp">
													<img class="chat_icon" src="./source/img/megaphone_off.svg">
													<div class="chat_box">
														<h5 class="chat_title">회원가입을 축하드립니다!</h5>
														<div class="other_user">PTConnect관리자</div>
														<span class="chat_time">2023-12-21</span>
													</div>
												</div>
											</div>
											<div class="chat_contents">
												<div class="chat_contents_title">
													<h5 class="chat_title">김빡빡</h5>
												</div>
												<div class="not_empty">
													<div class="chat_area gray_background">
														<div class="other_msg">
															<img class="user_icon" src="./source/img/img_640x640.jpg">
															<span class="msg_txt">안녕하세요 개빡센트레이너 김빡빡입니다.</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<jsp:include page="./source/include/footer.jsp"/>
				</div>
			</div>
		</div>
	</div>
</body>
</html>