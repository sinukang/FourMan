<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/member/managerMyQnA.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous"/>
</head>
<body>

	<!-- header -->
	<jsp:include page="../source/include/header.jsp"/>
	
	<!-- page start -->
	<div class="page-inner">
		<div class="page-side">
			<h2 class="page-title">관리자 페이지</h2>
		</div>
		<div class="manager-navi">
			<div class="report-tap tap">신고내역</div>
			<div class="notice-tap tap">공지사항</div>
			<div class="QnA-tap tap clicked">1:1 문의</div>
			<div class="FAQ-tap tap">자주하는 질문</div>
		</div>
		<div class="contents-area">
			<div class="list-area">
				<c:set var="j" value="6"></c:set>
				<c:forEach var="i" begin="1" end="6" step="1">
					<div class="QnA-item">
						<h3 class="QnA-title">Q.어떻게 하나요?${j}</h3>
						<c:if test="${i ne 2}">
							<p class="QnA-Answer">A.몰?루${j}</p>
							<!-- <i class="fa-solid fa-chevron-down"></i> -->
							<button type="button" class="QnA-toggle">
								<i class="fas fa-chevron-down"></i>
								<i class="fas fa-chevron-up"></i>
							</button>						
						</c:if>
					</div>
					<div class="Acheck">
						<button class="btn-Answer btn" onclick="answer(${j})">답변하기</button>
					</div>
					<c:set var="j" value="${j-1}"></c:set>
				</c:forEach>
			</div>
		</div>
		
		
	</div>
	
	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp"/>
	
</body>
<script type="text/javascript">

	//상단 메뉴 바 클릭 시 색상변화, 클릭 감지 이벤트 리스너 달아줌
	var tap = document.querySelectorAll(".tap");
	
	function handleClick1(e){
		for(let i = 0; i < tap.length; i++){
			tap[i].classList.remove("clicked");
		}
		e.target.classList.add("clicked");
	}
	function init1(){
		for(let i = 0; i < tap.length; i++){
			tap[i].addEventListener("click", handleClick1);
		}
	}
	init1();
	
	const toggles = document.querySelectorAll(".QnA-item"); /* .QnA-toggle */
	
	toggles.forEach((toggle) => {
		toggle.addEventListener("click", () => {
			toggle.classList.toggle("active");
		})
	});
	
	
	
</script>
</html>