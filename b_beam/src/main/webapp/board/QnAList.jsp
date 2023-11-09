<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ page import="app.domain.*" %> --%>
<%-- <%@ page import="java.util.ArrayList" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객지원</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/board/QnAList.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

	<!-- header -->
	<jsp:include page="../source/include/header.jsp"/>
	
	<div class="page-inner">
		<div class="page-side">
			<h2 class="page-title">고객지원</h2>
		</div>
		<div class="content">
			<div class="btn-area">
				<button type="button" class="btn-Notice">공지사항</button>
				<button type="button" class="btn-FAQ">자주 묻는 질문</button>
			</div>
			<div class="qna-contents">
				<div class="list-area">
					<c:set var="j" value="6"></c:set>
					<c:forEach var="i" begin="1" end="6" step="1">
						<div class="QnA-item">
							<h3 class="QnA-title">Q.어떻게 하나요?${j}</h3>
							<p class="QnA-Answer">A.몰?루${j}</p>
							<!-- <i class="fa-solid fa-chevron-down"></i> -->
							<button type="button" class="QnA-toggle">
								<i class="fas fa-chevron-down"></i>
								<i class="fas fa-chevron-up"></i>
							</button>	
						</div>
						<c:set var="j" value="${j-1}"></c:set>
					</c:forEach>
				</div>	
			</div>
			<div class="btn-area2">
				<button id="btn-write" class="btn-write">자주 묻는 질문 등록</button>
			</div>			
			<div class="pagination-area">
				<div class="paging-number-area">
					<a href="#" class="a-arrow">
						<i class="first-arrow-icon"></i><i class="first-arrow-icon"></i>
					</a>
					<a href="#" class="a-arrow">
						<i class="prev-arrow-icon"></i>
					</a>
					<c:forEach var="i" begin="1" end="10" step="1">
						<a href="#" class="page-number">${i}</a>
					</c:forEach>
					<a href="#" class="a-arrow">
						<i class="next-arrow-icon"></i>
					</a>
					<a href="#" class="a-arrow">
						<i class="last-arrow-icon"></i><i class="last-arrow-icon"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp"/>
	
</body>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#btn-write").on("click", function(){
			location.href = "${pageContext.request.contextPath}/board/noticeWrite.do";
		});
		
	});
</script>
</html>