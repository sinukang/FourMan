<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객지원</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/board/FAQ.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	<!-- header -->
	<jsp:include page="../source/include/header.jsp"/>
	
	<div class="container">
		<div class="container-title">
			<h1>고객지원</h1>
		</div>
		
		<div class="m-navi">
			<c:if test="${manager eq 'M'}">
				<div class="report-tap tap" onclick="mNavi(2)">신고내역</div>
				<div class="QnA-tap tap" onclick="mNavi(3)">1:1 문의내역</div>
			</c:if>
			<div class="notice-tap tap" onclick="mNavi(0)">공지사항</div>
			<div class="FAQ-tap tap clicked" onclick="mNavi(1)">자주하는 질문</div>
		</div>	
		
		<div class="contents-area">
			<div class="qna-contents">
				<div class="list-area">
					<c:forEach var="bv" items="${alist}" varStatus="status">
						<div class="QnA-item">
							<h3 class="QnA-title">Q.${bv.bdtitle}</h3>
							<div class="QnA-Answer">
								<p>${bv.bdcont}</p>
							</div>
							<!-- <i class="fa-solid fa-chevron-down"></i> -->
							<button type="button" class="QnA-toggle">
								<i class="fas fa-chevron-down"></i>
								<i class="fas fa-chevron-up"></i>
							</button>	
						</div>
						<div class="btn-area">
							<c:choose>
							<c:when test="${not empty manager}">
								<div class="div-btn">
									<button id="btn-delete" class="btn-delete btn" onclick="FAQDelete(${bv.bdno})" >삭제</button>
									<button id="btn-modify" class="btn-modify btn" onclick="location.href='${pageContext.request.contextPath}/board/FAQModify.do?bdno=${bv.bdno}'">수정</button>
								</div>
							</c:when>
							<c:otherwise>
							</c:otherwise>
							</c:choose>
						</div>
					</c:forEach>
				</div>	
			</div>
			<c:if test="${not empty manager}">
				<div class="btn-area2">
					<button id="btn-write" class="btn-write btn">자주 묻는 질문 등록</button>
				</div>
			</c:if>
			
			<div class="pagination-area">
				<table class="page-table">
					<tr>
						<c:if test="${pm.prev}">
							<td>
								<a class="page-num" href="${pageContext.request.contextPath}/board/FAQ.do?page=${pm.startPage - 1}">◀</a>
							</td>	
						</c:if>
						<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1">
							<c:choose>
								<c:when test="${pm.scri.page  == i}">			
									<td>
										<a class="page-num currentPageNum" href="${pageContext.request.contextPath}/board/FAQ.do?page=${i}">${i}</a>
									</td>
								</c:when>
								<c:otherwise>
									<td>
										<a class="page-num" href="${pageContext.request.contextPath}/board/FAQ.do?page=${i}">${i}</a>
									</td>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pm.next && pm.endPage > 0}">
							<td>
								<a href="${pageContext.request.contextPath}/board/FAQ.do?page=${pm.endPage + 1}">▶</a>
							</td>
						</c:if>
					</tr>
				</table>
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
	
	//네비게이션 바 주소설정
	function mNavi(e){
		switch(e){
		case 0 : location.href="${pageContext.request.contextPath}/board/noticeList.do"; break;
		case 1 : location.href="${pageContext.request.contextPath}/board/FAQ.do"; break;
		<c:if test="${manager eq 'M'}">
		case 2 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		case 3 : location.href="${pageContext.request.contextPath}/qna/managerMyQnA.do"; break;
		</c:if>
		
		}
	}

	$(document).ready(function(){
		
		$("#btn-write").on("click", function(){
			location.href = "${pageContext.request.contextPath}/board/FAQWrite.do";
		});
		
	});
		
	//각 QnA 박스마다 클릭 감지 이벤트 리스너 달아줌
	//누르면 열리고 다시 누르면 닫히게 하는 코드
	const toggles = document.querySelectorAll(".QnA-item"); /* .QnA-toggle */
	
	toggles.forEach((toggle) => {
		toggle.addEventListener("click", () => {
			toggle.classList.toggle("active");
		})
	});
	
	function FAQDelete(idx) {
		event.preventDefault();
		event.stopPropagation()
		
		let bdno = idx;
		
		if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				type : "post",
				url : "${pageContext.request.contextPath}/board/FAQDelete.do",
				data : {"bdno" : bdno},
				dataType : "json",
				cache : false,
				success : function(data){
					if(data.value == 1) {
						alert("삭제되었습니다.");
						location.reload();
					}
				},
				error : function() {
					alert("에러");
					return;
				}
			})
			
		}else {
			return;
		}
		
	}
		
</script>
</html>