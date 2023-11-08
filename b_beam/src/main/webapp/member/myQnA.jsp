<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/source/css/member/myQnA.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous"/>
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
				<button type="button" class="btn-QnAList btn1 clicked">문의 내역</button>
				<button type="button" class="btn-QnA btn1">문의하기</button>
			</div>
			<div class="list-area">
				<c:forEach var="i" begin="1" end="5" step="1">
					<div class="QnA-item">
						<h3 class="QnA-title">문의한 질문${i}</h3>
						<p class="QnA-Answer">문의한 질문${i} 답변</p>
						<!-- <i class="fa-solid fa-chevron-down"></i> -->
						<button type="button" class="QnA-toggle">
							<i class="fas fa-chevron-down"></i>
							<i class="fas fa-chevron-up"></i>
						</button>
					</div>
				</c:forEach>
			</div>
			<div class="write-area dp-none">
				<div class="write-content">
					<div class="QnA-sub">
						<input type="text" class="input-sup" placeholder="제목을 입력해주세요">
					</div>
					<div class="QnA-content">
						<textarea class="textarea-content" placeholder="내용을 입력해주세요"></textarea>
					</div>
					<div class="btn-area2">
						<button type="button" class="btn-QnA-Write btn2">문의하기</button>
						<button type="button" class="btn-QnA-init btn2">문의내용 초기화</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp"/>
		
</body>
<script>

	const toggles = document.querySelectorAll(".QnA-item"); /* .QnA-toggle */
	
	toggles.forEach((toggle) => {
		toggle.addEventListener("click", () => {
			toggle.classList.toggle("active");
		})
	});
	
	var btn1 = document.querySelectorAll(".btn1");
	
	function handleClick(event) {
		for (var i = 0; i < btn1.length; i++) {
			btn1[i].classList.remove("clicked");
		}
		event.target.classList.add("clicked");
	}

	function init() {
		for (var i = 0; i < btn1.length; i++) {
			btn1[i].addEventListener("click", handleClick);
		}
	}
	
	init();
	
	$(document).ready(function(){
		
		$(".btn-QnAList").on("click", function(){
			$(".list-area").removeClass('dp-none');
			$(".write-area").addClass('dp-none');
		});	
		
		$(".btn-QnA").on("click", function(){
			$(".list-area").addClass('dp-none');
			$(".write-area").removeClass('dp-none');
			
		});
			
		
	});

</script>
</html>