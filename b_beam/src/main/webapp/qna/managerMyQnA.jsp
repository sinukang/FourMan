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
			<div class="QnA-tap tap clicked">1:1 문의내역</div>
			<div class="FAQ-tap tap">자주하는 질문</div>
		</div>
		<div class="contents-area">
			<div class="list-area">
				<c:set var="j" value="6"></c:set>
				<c:forEach var="i" begin="1" end="6" step="1">
					<c:choose>
						<c:when test="${i ne 2}">
							<div class="QnA-wrapper">
								<div class="QnA-item">
									<h3 class="QnA-writer">유저${j}</h3>
									<h3 class="QnA-title">Q. 이거 어떻게 해요?${j}</h3>
									<p class="QnA-Answer">
										<br>해줘${j}
										<br>해줘${j}
										<br>해줘${j}
										<br>해줘${j}
										<br>해줘${j}
									</p>
									<!-- <i class="fa-solid fa-chevron-down"></i> -->
									<button type="button" class="QnA-toggle">
										<i class="fas fa-chevron-down"></i>
										<i class="fas fa-chevron-up"></i>
									</button>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="QnA-wrapper">
								<div class="not-answered">
									<h3 class="QnA-writer">유저${j}</h3>
									<h3 class="QnA-title">Q. 이거 어떻게 해요?${j}</h3>
									<p class="QnA-Answer">
										<br>해줘${j}
										<br>해줘${j}
										<br>해줘${j}
										<br>해줘${j}
										<br>해줘${j}
									</p>
									<!-- <i class="fa-solid fa-chevron-down"></i> -->
									<button type="button" class="QnA-toggle">
										<i class="fas fa-chevron-down"></i>
										<i class="fas fa-chevron-up"></i>
									</button>								
								</div>
							</div>
							<div class="A-btn-area test${j}">
								<button class="btn-Answer btn" onclick="answer(${j})">답변하기</button>
							</div>
						</c:otherwise>						
					</c:choose>
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
	
	const toggles = document.querySelectorAll(".QnA-wrapper"); /* .QnA-toggle */
	
	toggles.forEach((toggle) => {
		toggle.addEventListener("click", () => {
			toggle.classList.toggle("active");
		})
	});
	
// 	const toggles2 = document.querySelectorAll(".not-answered"); /* .QnA-toggle */
	
// 	toggles2.forEach((toggle) => {
// 		toggle.addEventListener("click", () => {
// 			toggle.classList.toggle("active");
// 		})
// 	});	
	
	
	
	
	
</script>
</html>