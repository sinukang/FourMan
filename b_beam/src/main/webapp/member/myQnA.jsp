<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/member/myQnA.css">
</head>
<body>

	<!-- header -->
	<jsp:include page="../source/include/header.jsp"/>	
	
	
	
	<div class="page-inner">
		<div class="page-side">
			<h2 class="page-title">마이페이지</h2>
		</div>
		<!-- 상단 메뉴 바 -->
		<jsp:include page="../source/include/mypageNavi.jsp"/>
		<div class="contents-area">
			<div class="btn-area">
				<button type="button" class="btn-Notice btn2 clicked">문의 내역</button>
				<button type="button" class="btn-FAQ btn2">문의하기</button>
			</div>
			<div class="list-area">
				
			</div>
		</div>
		
		
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp"/>
		
</body>
<script>
	var btn = document.getElementsByClassName("btn2");
	
	function handleClick(event) {
		for (var i = 0; i < btn.length; i++) {
			btn[i].classList.remove("clicked");
		}
		event.target.classList.add("clicked");
	}

	function init() {
		for (var i = 0; i < btn.length; i++) {
			btn[i].addEventListener("click", handleClick);
		}
	}
	
	init();
</script>
</html>