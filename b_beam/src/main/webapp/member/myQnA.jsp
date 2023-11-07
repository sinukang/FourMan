<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/board/noticeWrite.css">
</head>
<body>

	<!-- header -->
	<jsp:include page="../source/include/header.jsp"/>	
	
	<div class="page-inner">
		<div class="page-side">
			<h2 class="page-title">마이페이지</h2>
		</div>
		<div class="content">
				<div class="btn-area">
				<button type="button" class="btn-Notice">공지사항</button>
				<button type="button" class="btn-FAQ">자주 묻는 질문</button>
			</div>
		</div>
		
		
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp"/>
		
</body>
</html>