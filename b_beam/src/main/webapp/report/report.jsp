<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${manager eq null || manager eq '' || manager ne 'M'}">
	<script>
		alert("접근 권한이 없습니다.");
		location.href = "${pageContext.request.contextPath}/";
	</script>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지-신고내역</title>
<link rel="stylesheet" type="text/css" href="../source/css/report.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	<jsp:include page="../source/include/header.jsp"/>
			
	<div class="container">
		
		<div class="container-title">
			<h1>REPORT</h1>
		</div>
			
		<div class="m-navi">
			<div class="report-tap tap clicked" onclick="mNavi(0)">신고내역</div>
			<div class="QnA-tap tap" onclick="mNavi(1)">1:1 문의내역</div>
			<div class="notice-tap tap" onclick="mNavi(2)">공지사항</div>
			<div class="FAQ-tap tap" onclick="mNavi(3)">자주하는 질문</div>
		</div>
		
		<div class="tabContent">
			<table class="report-table">
				<tr>
					<td class="td-cate delCheck">전체선택</td>
					<td class="td-cate reportNum">신고번호</td>
					<td class="td-cate reportCnt">누적신고</td>
					<td class="td-cate sort">분류</td>
					<td class="td-cate reportedBdno">원글 번호</td>
					<td class="td-cate type">유형</td>
					<td class="td-cate userName">닉네임</td>
					<td class="td-cate content">내용</td>
					<td class="td-cate pntYN">패널티여부</td>
					<td class="td-cate clearYN">글삭제여부</td>
				</tr>
				<c:forEach var="rp" items="${alist}" varStatus="idx">
					<tr>
						<td class="td-cate delCheck">
							<input type="checkbox" class="deleteBox">
						</td>
						<td class="reportNum">${rp.rpno}</td>
						<td class="reportCnt"></td>
						<td class="sort">
							<c:choose>
								<c:when test="${rp.rvno ne null}">
									리뷰
								</c:when>
								<c:when test="${rp.bdno ne null}">
									갤러리
								</c:when>
								<c:when test="${rp.cmno ne null}">
									댓글
								</c:when>
							</c:choose>
						</td>
						<td class="reportedBdno">
							<c:choose>
								<c:when test="${rp.rvno ne null}">
									${rp.rvno}
								</c:when>
								<c:when test="${rp.bdno ne null}">
									${rp.bdno}
								</c:when>
								<c:when test="${rp.cmno ne null}">
									${rp.cmno}
								</c:when>
							</c:choose>						
						</td>
						<td class="type">
							<c:choose>
								<c:when test="${rp.rpcate eq 'F' || rp.rpcate eq 'V'}">
									폭언 / 욕설
								</c:when>
								<c:when test="${rp.rpcate eq 'A'}">
									광고
								</c:when>
								<c:when test="${rp.rpcate eq 'P'}">
									음란물
								</c:when>
							</c:choose>						
						</td>
						<td class="userName">
							<button class="userId">${rp.mbname}</button>
						</td>
						<td class="content">${rp.bdcont}</td>
						<td class="pntYN">
							<c:choose>
								<c:when test="${rp.rpcate eq 'F'}">
									ㄱㄱㄱ
								</c:when>
								<c:when test="${rp.rpcate eq 'A'}">
									ㅁㅁㅁ
								</c:when>
								<c:when test="${rp.rpcate eq 'P'}">
									ㄴㄴㄴ
								</c:when>
								<c:when test="${rp.rpcate eq 'V'}">
									ㅇㅇㅇ
								</c:when>
							</c:choose>						
						</td>
						<td class="clearYN">${rp.rpdelyn}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div id="myModal" class="modal" style="display: none;">
		<div class="modalContent">
			<h2>사용자 정보</h2>
			<p>ID: <span id="userId">아놀드슈왈츠제네거</span></p>
			<p>Email: <span id="userEmail">bbeamproject@gmail.com</span></p>
			<h2>패널티 선택</h2>
			<select class="penaltySelect">
				<option value="none">패널티 없음</option>
				<option value="7days">이용정지(7일)</option>
				<option value="30days">이용정지(30일)</option>
				<option value="permanent">이용정지(영구)</option>
			</select>
			<button class="penaltyBtn">완료</button>
			<button class="cancelBtn">취소</button>
		</div>
	</div>
	<jsp:include page="../source/include/footer.jsp"/>
	
<script>

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
	
	function mNavi(e){
		switch(e){
		case 0 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		case 1 : location.href="${pageContext.request.contextPath}/qna/managerMyQnA.do"; break;
		case 2 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		case 3 : location.href="${pageContext.request.contextPath}/report/report.do"; break;
		
		}
	}

	$(document).ready(function() {
		// 삭제 버튼 클릭 시
		$(".deleteBtn").on("click", function() {
			var checkboxes = $(".deleteBox:checked");
			if (checkboxes.length === 0) {
				alert("삭제할 글을 선택하세요");
			}else{
				var confirmDelete = confirm("삭제된 글은 복구가 어렵습니다. 삭제하시겠습니까?");
				if (confirmDelete) {
				// 여기서 선택된 행을 삭제하는 로직을 추가할 수 있습니다.
				// checkboxes.each(function() {
				//     $(this).closest('tr').remove(); // 선택된 항목 삭제하는 예시
				// });
				}
			}
		});
		
		// 사용자 ID 클릭 시 모달 표시----------------------------------------------
		$(".userId").on("click", function() {
			var modal = $('#myModal');
			if (modal.is(':visible')) {
				modal.hide();
			} else {
				modal.show();
			}
		});
		
		// 완료 버튼 클릭 시 모달 닫기
		$(".penaltyBtn").on("click", function() {
			// 완료 버튼을 클릭한 경우 실행되는 코드 작성
			
			// 모달 닫기
			$('#myModal').hide();
		});
	
		// 취소 버튼 클릭 시 모달 닫기
		$(".cancelBtn").on("click", function() {
			// 취소 버튼을 클릭한 경우 모달 닫기
			$('#myModal').hide();
		});
	
		$(document).on("click", function(event) {
			if (!$(event.target).closest('#myModal, .userId').length) {
				$('#myModal').hide();
			}
		});
	});
	
	
</script>
</body>
</html>