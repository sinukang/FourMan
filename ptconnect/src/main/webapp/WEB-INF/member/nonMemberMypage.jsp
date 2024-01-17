<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비회원 주문정보</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/orderList.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div>
		<div>
			<div>
				<div> <!--헤더+맵-->
					<jsp:include page="../include/header.jsp"/>
					<section><!-- 섹션 -->
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div><!-- 코치정보 -->
										<div>
											<div style="font-size:30px">
												<h2>${nmName} 님의 주문입니다!</h2>
											</div>
											<ul>
											<c:forEach var="po" items="${pList}">
												<div class="orderListBox">
												
										            <div class="">
										                <img class="orderProfile" src="https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png"/>
										            </div>
										            <div class="orderContainer">
										                <span class="orderText">주문번호 :</span>
										                <span class="orderText">트레이너 :</span>
										                <span class="orderText">전화번호:</span>
										            </div>
										            <div class="orderContainer">
										                <span id="odNo_${loop.index}">${po.odNo}</span>
										                <span class="orderText">${po.tnName}</span>
										                <span class="orderText">${po.mbPhone}</span>
										                <span id="pmNo_${loop.index}" style="display: none;">${po.pmNo}</span>
										            </div>
										            <div class="orderContainer">
										                <span class="orderText">결제상태 :</span>
										                <span class="orderText">결제수단 :</span>
										                <span class="orderText">결제시간 :</span>
										                <span class="orderText">
															결제액
														</span>
										            </div>
										            <div class="orderContainer">
										                <span class="orderName">
										                <c:choose>
											                <c:when test="${not empty po.pcState}">${po.pcState}</c:when>
											                <c:otherwise>${po.pmState}</c:otherwise>
										                </c:choose>
										                </span>
										                <span class="orderText">${po.pmCard}</span>
										                <span id="odDate_${loop.index}">${po.odDate}</span>
														<span class="orderText">
															<strong>${po.odPrice}</strong>원
														</span>
												</div>
											</c:forEach>
											</ul>
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