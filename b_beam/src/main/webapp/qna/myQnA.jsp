<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="app.domain.QnAVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/qna/myQnA.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous"/>
</head>
<body>

<!-- header -->
<jsp:include page="../source/include/header.jsp"/>

<!-- page start -->
<div class="container">
	<div class="container-title">
	<h1>마이페이지</h1>
	</div>

	<!-- top menu tap -->
	<jsp:include page="../source/include/mypageNavi.jsp"/>

	<div class="contents-area">
		<div class="btn-area">
			<button type="button" class="btn-QnAList btn1 clicked">문의 내역</button>
			<button type="button" class="btn-QnA btn1">문의하기</button>
		</div>
		<div class="list-area">
			<c:set var="j" value="${q_alist.size()}"></c:set>
			<c:forEach var="qv" items="${q_alist}">
			 <c:choose>
				<c:when test="${empty qv.ambno}">    <!-- 미 답변 -->
						<div class="QnA-item ${empty qv.ambno ? '' : 'answered'}">
							<h3 class="QnA-title">Q.${qv.qtitle}</h3>
							<p class="QnA-Answer">${qv.qcont} <br></p>

							<button type="button" class="QnA-toggle">
							<i class="fas fa-chevron-down"></i>
							<i class="fas fa-chevron-up"></i>
							</button>
						</div>

						<div class="unAnswered-btn-area test${j}">
							<button class="btn-Delete btn" onclick="deleteAnswer(${j})">문의 삭제</button>
							<button class="btn-Modify btn" onclick="modifyAnswer(${j})">문의 수정</button>
						</div>
				</c:when>
			<c:otherwise>
					<div class="QnA-item answered">
						<h3 class="QnA-title">Q.${qv.qtitle}</h3>
						<p class="QnA-Answer">${qv.qcont}</p>

					<button type="button" class="QnA-toggle">
						<i class="fas fa-chevron-down"></i>
						<i class="fas fa-chevron-up"></i>
					</button>
						<div class="answer-area">
						<p class="answer-content">${qv.acont}</p>
						</div>
					</div>
			</c:otherwise>
			</c:choose>
		<c:set var="j" value="${j-1}"></c:set>
		</c:forEach>
		</div>
			<div class="write-area dp-none">
				<div class="write-content">
					<form id="form" class="form">
						<div class="QnA-sub">
						<input type="text" id="title" name="bdtitle" class="input-sup" placeholder="제목을 입력해주세요">
						</div>
				<div class="QnA-content">
					<textarea id="content" name="bdcont" class="textarea-content"  placeholder="내용을 입력해주세요"></textarea>
				</div>
					</form>
				<div class="btn-area2">
					<button type="button" id="write" class="btn-write btn2">등록</button>
					<button type="button" id="cancel" class="btn-cancel btn2">취소</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function () {
	// 각 QnA 박스마다 클릭 감지 이벤트 리스너 달아줌
	// 누르면 열리고 다시 누르면 닫히게 하는 코드
	const toggles = document.querySelectorAll(".QnA-item");

	toggles.forEach((toggle, index) => {
	toggle.addEventListener("click", () => {
	toggle.classList.toggle("active");

	// 답변이 있는 경우에만 답변을 보여줌
	const answerArea = toggle.querySelector(".answer-area");
	if (answerArea) {
	answerArea.classList.toggle("dp-none");
	}
	});
	});

	});
	
	
	
	
	
	
</script>

<!-- footer -->
<jsp:include page="../source/include/footer.jsp"/>

</body>
</html>