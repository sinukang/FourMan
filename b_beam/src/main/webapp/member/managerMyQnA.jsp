<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/member/managerMyQnA.css">
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
			<div class="report-tap tap"><span class="tap-span">신고</span></div>
			<div class="notice-tap tap"><span class="tap-span">공지사항</span></div>
			<div class="QnA-tap tap"><span class="tap-span">1:1 문의</span></div>
			<div class="FAQ-tap tap"><span class="tap-span">자주하는 질문</span></div>
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
			if(i == (tap.length - 1)){
				tap[i].classList.add("clicked");
			}
		}
	}
	init1();
	
</script>
</html>