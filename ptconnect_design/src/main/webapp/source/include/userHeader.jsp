<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="inner_header">
	<div class="tab_wrap my_container">
		<div class="my_container tab_flex">
			<div id="user_tab1" class="tab" onclick="location.href='userInfo.jsp'">내 정보보기</div>
			<div id="user_tab2" class="tab" onclick="location.href='userOrderList.jsp'">내 주문목록</div>
			<div id="user_tab3" class="tab" onclick="location.href='userReview.jsp'">리뷰관리</div>
			<div id="user_tab4" class="tab" onclick="location.href='userPoint.jsp'">쿠폰/포인트</div>
			<div id="user_tab5" class="tab" onclick="location.href='userChat.jsp'">채팅</div>
		</div>
	</div>
</div>