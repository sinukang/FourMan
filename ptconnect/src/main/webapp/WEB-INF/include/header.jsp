<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<header class="main_header">
	<nav>
		<div class="contents">
			<a href="${pageContext.request.contextPath}/"><img class="navi_logo" src="${pageContext.request.contextPath}/resources/img/logo.png"></a>
			<a class="navi_name" href="coach">트레이너찾기</a>
			<a class="navi_name">공지사항</a>
			<a class="navi_name">자주묻는질문</a>
			<div class="nav_bar_menu">
				<c:choose>
					<c:when test="${mbAuth eq 'U'}">
						<div>
							<span class="name_button">
								<span class="name">${mbName}</span>님! 반갑습니다.
							</span>
						</div>
						<div class="drop_down_menu">
							<a href="userInfo">마이페이지</a>
							<div class="drop_down_divider"></div>
							<a href="userOrderList">결제내역</a>
							<div class="drop_down_divider"></div>
							<a href="logout">로그아웃</a>
						</div>
					</c:when>
					<c:otherwise>
						<a href="joinUser">회원가입 </a> / <a href="login"> 로그인</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
</header>