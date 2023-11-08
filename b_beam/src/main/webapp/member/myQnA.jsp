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
	
	<!-- 페이지 영역 -->
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
				<c:set var="j" value="6"></c:set>
				<c:forEach var="i" begin="1" end="6" step="1">
					<div class="QnA-item">
						<h3 class="QnA-title">Q.어떻게 하나요?${j}</h3>
						<c:if test="${i ne 3}">
							<p class="QnA-Answer">A.몰?루${j}</p>
							<!-- <i class="fa-solid fa-chevron-down"></i> -->
							<button type="button" class="QnA-toggle">
								<i class="fas fa-chevron-down"></i>
								<i class="fas fa-chevron-up"></i>
							</button>						
						</c:if>
					</div>
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
						<button type="button" id="write" class="btn-write btn btn2">등록</button>
						<button type="button" id="cancel" class="btn-cancel btn btn2">취소</button>
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
		
		$("#write").on("click", function(){
			
			let title = $("#title");
			let content = $("#content");
			
			if(title.val() == null || title.val() == ""){
				
				alert("제목을 입력해주세요");
				title.focus();
				
			}else if(content.val() == null || content.val() == ""){
				
				alert("내용을 입력해주세요");
				content.focus();
				
			}else{
				alert("넵");
				
				/* $.ajax({
					
					에이잭스 내용 구현
					
				}); */
				
				title.val("");
				content.val("");
				$(".btn-QnAList").trigger("click");
			}
			
		});
		
		
		$("#cancel").on("click", function(){
			
			let title = $("#title");
			let content = $("#content");
			
			if(title.val() != null || title.val() == ""){
				if(confirm("작성된 내용이 있습니다.\n취소하시면 내용이 전부 사라집니다.\n\n정말로 취소하시겠습니까?")){
					title.val("");
					content.val("");
					$(".btn-QnAList").trigger("click");
				}else{
					return;
				}
			}else if(content.val() != null || content.val() == ""){
				if(confirm("작성된 내용이 있습니다.\n취소하시면 내용이 전부 사라집니다.\n\n정말로 취소하시겠습니까?")){
					title.val("");
					content.val("");
					$(".btn-QnAList").trigger("click");
				}else{
					return;
				}
			}else{
				title.val("");
				content.val("");
				$(".btn-QnAList").trigger("click");
			}

		});
		
	});

</script>
</html>