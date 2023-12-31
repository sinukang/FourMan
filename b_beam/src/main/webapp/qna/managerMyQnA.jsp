<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty manager || manager eq null || manager eq '' || manager ne 'M'}">
	<script type="text/javascript">
		alert("접근 권한이 없습니다.");
		location.href = "${pageContext.request.contextPath}/member/memberLogin.do";
	</script>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/source/css/qna/managerMyQnA.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous" />
</head>
<body>

	<!-- header -->
	<jsp:include page="../source/include/header.jsp" />

	<!-- page start -->
	<div class="container">
	
		<div class="container-title">
			<h1>ManagerMyQnA</h1>
		</div>
		
		<div class="m-navi">
			<div class="report-tap tap" onclick="mNavi(0)">신고내역</div>
			<div class="QnA-tap tap clicked" onclick="mNavi(1)">1:1 문의내역</div>
			<div class="notice-tap tap" onclick="mNavi(2)">공지사항</div>
			<div class="FAQ-tap tap" onclick="mNavi(3)">자주하는 질문</div>
		</div>		
		
		<div class="contents-area">
			<div class="list-area">
				<c:forEach var="qv" items="${qna_alist}">
					<c:choose>
						<c:when test="${qv.ambno>0}">
							<div class="QnA-wrapper test${qv.qano}">
								<div class="answered-item">
									<h3 class="QnA-writer">${qv.qmbname}</h3>
									<h3 class="QnA-title">${qv.qtitle}</h3>
									<p class="QnA-Answer">${qv.qcont}</p>
									<!-- <i class="fa-solid fa-chevron-down"></i> -->
									<button type="button" class="QnA-toggle">
										<i class="fas fa-chevron-down"></i> <i
											class="fas fa-chevron-up"></i>
									</button>
									<div class="answer-area">
										<h3 class="answer-writer">${qv.ambname}</h3>
										<p id="acont${qv.qano}" class="answer-content">${qv.acont}</p>
									</div>
								</div>
							</div>
							<div class="Answered-btn-area test${qv.qano}">
								<button class="btn-Delete btn" onclick="deleteAnswer(${qv.qano})">문의삭제</button>
								<button class="btn-Modify btn" onclick="modifyAnswer(${qv.qano})">답변수정</button>
							</div>
						</c:when>
						<c:otherwise>
							<div class="QnA-wrapper test${qv.qano}">
								<div class="unanswered-item">
									<h3 class="QnA-writer">${qv.qmbname}</h3>
									<h3 class="QnA-title">${qv.qtitle}</h3>
									<p class="QnA-Answer">${qv.qcont}</p>
									
									<!-- <i class="fa-solid fa-chevron-down"></i> -->
									<button type="button" class="QnA-toggle">
										<i class="fas fa-chevron-down"></i> <i
											class="fas fa-chevron-up"></i>
									</button>
								</div>
							</div>
							<div class="unAnswered-btn-area test${qv.qano}">
								<button class="btn-Answer btn" onclick="writeAnswer(${qv.qano})">답변하기</button>
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
			<!-- 글 작성 영역 -->
			<div class="write-area dp-none">
			    <div class="write-content">
			        <form id="form" class="form">
			            <div class="QnA-content">
			                <textarea id="content" name="bdcont" class="textarea-content" placeholder="내용을 입력해주세요"></textarea>
			            </div>
			        </form>
			        <div class="btn-area2">
			            <button type="button" id="write" class="btn-write btn2">등록</button>
			            <button type="button" id="cancel" class="btn-cancel btn2" onclick="writeCancel()">취소</button>
			        </div>
			    </div>
			</div>
			
			<!-- 글 수정 영역 -->
			<div class="modify-area dp-none">
			    <div class="write-content">
			        <form id="modify-form" class="form">
			            <div class="QnA-content">
			                <textarea id="modify-content" name="modify-content" class="textarea-content"></textarea>
			            </div>
			        </form>
			        <div class="btn-area2">
			            <button type="button" id="modify-write" class="btn-write btn2">수정완료</button>
			            <button type="button" id="modify-cancel" class="btn-cancel btn2" onclick="modifyCancel()">취소</button>
			        </div>
			    </div>
			</div>
		</div>
		
		<!-- 페이징 영역 -->
		<div class="pagination-area">
			<table class="page-table">
				<tr>
					<c:if test="${pm.prev}">
						<td>
							<a class="page-num" href="${pageContext.request.contextPath}/qna/managerMyQnA.do?page=${pm.startPage - 1}<c:if test="${pm.scri.keyword ne ''}">${keyword}</c:if>">◀</a>
						</td>	
					</c:if>
					<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1">
						<c:choose>
							<c:when test="${pm.scri.page eq i}">			
								<td>
									<a class="page-num currentPageNum" href="${pageContext.request.contextPath}/qna/managerMyQnA.do?page=${i}<c:if test="${pm.scri.keyword ne ''}">${keyword}</c:if>">${i}</a>
								</td>
							</c:when>
							<c:otherwise>
								<td>
									<a class="page-num" href="${pageContext.request.contextPath}/qna/managerMyQnA.do?page=${i}<c:if test="${pm.scri.keyword ne ''}">${keyword}</c:if>">${i}</a>
								</td>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${pm.next && pm.endPage > 0}">
						<td>
							<a href="${pageContext.request.contextPath}/qna/managerMyQnA.do?page=${pm.endPage + 1}${keyword}">▶</a>
						</td>
					</c:if>
				</tr>
			</table>
		</div>
		<!-- 페이징 영역 -->
		
	</div>

	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp" />

<script type="text/javascript">

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
	
	//네비게이션 바 주소설정
	function mNavi(e){
		switch(e){
		case 0 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		case 1 : location.href="${pageContext.request.contextPath}/qna/managerMyQnA.do"; break;
		case 2 : location.href="${pageContext.request.contextPath}/board/noticeList.do"; break;
		case 3 : location.href="${pageContext.request.contextPath}/board/FAQ.do"; break;
		
		}
	}	

	const toggles = document.querySelectorAll(".QnA-wrapper");

	toggles.forEach((toggle) => {
		toggle.addEventListener("click", () => {
			const currentToggle = toggle;
			toggles.forEach((otherToggle) => {
				if (otherToggle !== currentToggle) {
					otherToggle.classList.remove("active");
				}
			});
			currentToggle.classList.toggle("active");
		});
	});
	
	//답변글 작성 시 화면 CSS 변경
	function writeAnswer(qano) {
		
		window.currentQano = qano;
		let item = document.querySelectorAll(".QnA-wrapper");
		
		for (let i = 0; i < item.length; i++) {
			if (item[i].classList.contains("test" + qano)) {
				document.querySelector(".write-area").classList.remove("dp-none");
				document.querySelector(".write-area").classList.add("dp-block");
			} else {
				item[i].classList.add("dp-none");
				item[i].classList.remove("active");
			}
		}
		
		document.querySelector(".unAnswered-btn-area.test" + qano).classList.add("active");
		document.querySelector(".pagination-area").classList.add("dp-none");
	}	
	
	//답변글 수정 시 화면 CSS 변경
	function modifyAnswer(qano) {
		
		window.currentQano = qano;
		let item = document.querySelectorAll(".QnA-wrapper");
		let content = $("#modify-content");
		content.val($('#acont'+qano).html());
		
		for (let i = 0; i < item.length; i++) {
			if (item[i].classList.contains("test" + qano)) {
				document.querySelector(".modify-area").classList.remove("dp-none");
				document.querySelector(".modify-area").classList.add("dp-block");
			} else {
				item[i].classList.add("dp-none");
				item[i].classList.remove("active");
			}
		}
		
		document.querySelector(".Answered-btn-area.test" + qano).classList.add("active");
		document.querySelector(".pagination-area").classList.add("dp-none");
	}
	
	//답변하기
	$("#write").on("click", function(){
		let content = $("#content");
		if(content.val() == null || content.val() == ""){
			alert("내용을 입력해주세요");
			content.focus();
		} else {
			$.ajax({
				url: '${pageContext.request.contextPath}/qna/mngWriteAction.do',
				type: 'POST',
				data: {
					'ambno': ${mbno},
					'qano': window.currentQano,
					'bdcont': content.val()
				},
				success: function(response) {
					alert('성공적으로 등록되었습니다.');
					location.reload();
				},
				error: function(xhr, status, error) {
					alert('오류가 발생했습니다. 다시 시도해주세요.');
				}
			});
		}
	});
	
	//답변 수정
	$("#modify-write").on("click", function() {
		let content = $("#modify-content");
		if (content.val() == null || content.val() == "") {
			alert("내용을 입력해주세요");
			content.focus();
		} else {
			$.ajax({
				url: '${pageContext.request.contextPath}/qna/mngqnaModifyAction.do',
				type: 'POST',
				data: {
					'ambno': ${mbno},
					'qano': window.currentQano,
					'modify-content': content.val()
				},
				success: function(response) {
					alert('성공적으로 수정되었습니다.');
					location.reload();
				},
				error: function(xhr, status, error) {
					alert('오류가 발생했습니다. 다시 시도해주세요.');
				}
			});
		}
	});
	
	//문의 글 삭제
	function deleteAnswer(qano) {
		if (confirm("정말로 문의를 삭제하시겠습니까?")) {
			$.ajax({
				url: '${pageContext.request.contextPath}/qna/mngqnaDeleteAction.do',
				type: 'POST',
				data: {'qano': qano},
				success: function (response) {
				alert('답변이 성공적으로 삭제되었습니다.');
					location.reload();
				},
				error: function (xhr, status, error) {
					alert('답변 삭제 중 오류가 발생했습니다. 다시 시도해주세요.');
				}
			});
		} else {
			return false;
		}
	}
	
	//답변작성 취소
	function writeCancel(){
		
		let item = document.querySelectorAll(".QnA-wrapper");
		//let item2 = document.querySelectorAll(".Answered-btn-area");
		let unAnsweredBtn = document.querySelectorAll(".QnA-wrapper + .unAnswered-btn-area");
		
		for (let i = 0; i < item.length; i++) {
			item[i].classList.remove("dp-none");
			item[i].classList.add("dp-block");
		}
		for (let i = 0; i < unAnsweredBtn.length; i++) {
			if(unAnsweredBtn[i].classList.contains("active")){
				unAnsweredBtn[i].classList.remove("active");
			}
		}
		document.querySelector(".write-area").classList.remove("dp-block");
		document.querySelector(".write-area").classList.add("dp-none");
		document.querySelector(".pagination-area").classList.remove("dp-none");
	}
	
	//답변수정 취소
	function modifyCancel(){
		
		let item = document.querySelectorAll(".QnA-wrapper");
		let answeredBtn = document.querySelectorAll(".QnA-wrapper + .Answered-btn-area");
		for (let i = 0; i < item.length; i++) {
			item[i].classList.remove("dp-none");
			item[i].classList.add("dp-block");
		}
		for (let i = 0; i < answeredBtn.length; i++) {
			if(answeredBtn[i].classList.contains("active")){
				answeredBtn[i].classList.remove("active");
			}
		}
		document.querySelector(".modify-area").classList.remove("dp-block");
		document.querySelector(".modify-area").classList.add("dp-none");
		document.querySelector(".pagination-area").classList.remove("dp-none");
	}
	
</script>
</body>
</html>