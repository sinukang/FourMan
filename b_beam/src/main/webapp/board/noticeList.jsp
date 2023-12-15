<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ page import="app.domain.*" %> --%>
<%-- <%@ page import="java.util.ArrayList" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객지원</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/board/noticeList.css">
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
			<div class="notice-tap tap clicked" onclick="mNavi(0)">공지사항</div>
			<div class="FAQ-tap tap" onclick="mNavi(1)">자주하는 질문</div>
		</div>
		
		<div class="content">

			<div class="table-area">
				<table class="content-table">
					<tr>
						<td class="td-head td-no">글 번호</td>
						<td class="td-head td-cate">분류</td>
						<td class="td-head td-sub">글 제목</td>
						<td class="td-head td-writer">작성자</td>
						<td class="td-head td-wdate">작성일</td>
					</tr>
					<c:forEach var="bv" items="${alist}" varStatus="status">
						<tr class="tr-body">
							<td class="td-body td-no">${bv.bdno}</td>
							<td class="td-body td-cate"><c:if test="${bv.bdcate eq 'N'}">공지사항</c:if> </td>
							<td class="td-body td-sub">
							<a href="${pageContext.request.contextPath}/board/notice.do?bdno=${bv.bdno}">${bv.bdtitle}</a>
							</td>
							<td class="td-body td-writer">${bv.mbname}</td>
							<td class="td-body td-wdate">${bv.bddate}</td>
						</tr>							
					</c:forEach>
				</table>
			</div>
			<div class="btn-area2">
				<c:choose>
					<c:when test="${not empty manager}">
						<button id="btn-write" class="btn-write">공지사항 등록</button>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</div>			
			<div class="pagination-area">
				<table class="page-table">
					<tr>
						<c:if test="${pm.prev}">
							<td>
								<a class="page-num" href="${pageContext.request.contextPath}/board/noticeList.do?page=${pm.startPage - 1}">◀</a>
							</td>	
						</c:if>
						<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1">
							<c:choose>
								<c:when test="${pm.scri.page  == i}">			
									<td>
										<a class="page-num currentPageNum" href="${pageContext.request.contextPath}/board/noticeList.do?page=${i}">${i}</a>
									</td>
								</c:when>
								<c:otherwise>
									<td>
										<a class="page-num" href="${pageContext.request.contextPath}/board/noticeList.do?page=${i}">${i}</a>
									</td>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pm.next && pm.endPage > 0}">
							<td>
								<a href="${pageContext.request.contextPath}/board/noticeList.do?page=${pm.endPage + 1}">▶</a>
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
			location.href = "${pageContext.request.contextPath}/board/noticeWrite.do";
		});
		
	});
</script>
</html>