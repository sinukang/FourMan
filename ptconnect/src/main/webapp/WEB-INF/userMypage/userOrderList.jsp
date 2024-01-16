<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
						<jsp:include page="../include/userHeader.jsp"/>
						<script>
							window.onload = function() {
								$('#user_tab2').addClass('active_tab');
							}
						</script>
						<div class="gray_background"><!-- 회색배경 -->
							<div class="my_container"><!-- 코치정보(마진오토) -->
								<div class="inner_contents"><!-- 코치정보(패딩탑) -->
									<div><!-- 코치정보 -->
										<div>
											<div>
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
									                <span class="orderName">${po.odNo}</span>
									                <span class="orderText">${po.tnName}</span>
									                <span class="orderText">${po.mbPhone}</span>
									            </div>
									            <div class="orderContainer">
									                <span class="orderText">사용쿠폰 :</span>
									                <span class="orderText">사용포인트 :</span>
									                <span class="orderText">결제금액 :</span>
									            </div>
									            <div class="orderContainer">
									                <span class="orderName">${po.odCoupon}</span>
									                <span class="orderText"><strong>${po.odPoint}</strong>포인트</span>
									                <span class="orderText"><strong>${po.odPrice}</strong>원</span>
									            </div>
									            <div class="orderContainer">
									                <span class="orderText">결제상태 :</span>
									                <span class="orderText">결제수단 :</span>
									                <span class="orderText">결제시간 :</span>
									            </div>
									            <div class="orderContainer">
									                <span class="orderName">
									                <c:choose>
										                <c:when test="${not empty po.pcState}">${po.pcState}</c:when>
										                <c:otherwise>${po.pmState}</c:otherwise>
									                </c:choose>
									                </span>
									                <span class="orderText">${po.pmCard}</span>
									                <span class="orderText">${po.odDate}</span>
									            </div>
									        </div>
											</c:forEach>
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