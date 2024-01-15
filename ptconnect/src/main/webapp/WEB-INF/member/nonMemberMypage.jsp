<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비회원 주문정보</title>
<link href="${pageContext.request.contextPath}/resources/css/home.css" type="text/css" rel="stylesheet">

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
											<ul>
											<c:forEach var="po" items="${pList}">
												<li style="margin-bottom:20px;">
													<div>
														주문번호
														<strong>${po.odNo}</strong>
													</div>
													<div>
														주문날짜
														<strong>${po.odDate}</strong>
													</div>
													<div>
														주문인
														<strong>${po.nmName}</strong>
													</div>
													<div>
														상품번호
														<strong>${po.tnNo}</strong>
														<a href="${pageContext.request.contextPath}/trainerInfoView?tnNo=${po.tnNo}">트레이너 페이지로 이동하기</a>
													</div>
													<div>
														결제액
														<strong>${po.odPrice}</strong>원
													</div>
												</li>
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