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
	
	<!-- page start -->
	<div class="page-inner">
		<div class="page-side">
			<h2 class="page-title">마이페이지</h2>
		</div>
		
		<!-- top menu tap -->
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
						<h3 class="QnA-title">문의제목. 이거 어떻게 해요?${j}</h3>
						<c:if test="${i ne 3}">
							<p class="QnA-Answer">문의내용. 해줘${j}</p>
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
						<button type="button" id="write" class="btn-write btn2">등록</button>
						<button type="button" id="cancel" class="btn-cancel btn2">취소</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	
	<!-- footer -->
	<jsp:include page="../source/include/footer.jsp"/>
		
</body>
<script>

/* 	//상단 메뉴 바 클릭 시 색상변화, 클릭 감지 이벤트 리스너 달아줌
	var btn = document.querySelectorAll(".btn");
	
	function handleClick1(e){
		for(let i = 0; i < btn.length; i++){
			btn[i].classList.remove("clicked2");
		}
		e.target.classList.add("clicked2");
	}
	function init1(){
		for(let i = 0; i < btn.length; i++){
			btn[i].addEventListener("click", handleClick1);
			if(i == (btn.length - 1)){
				btn[i].classList.add("clicked2");
			}
		}
	}
	init1(); */
	
	//문의내역 & 문의하기 클릭 시 색상변화, 클릭 감지 이벤트 리스너 달아줌
	var btn1 = document.querySelectorAll(".btn1");
	
	function handleClick2(event) {
		for (var i = 0; i < btn1.length; i++) {
			btn1[i].classList.remove("clicked");
		}
		event.target.classList.add("clicked");
	}

	function init2() {
		for (var i = 0; i < btn1.length; i++) {
			btn1[i].addEventListener("click", handleClick2);
		}
	}
	
	init2();
	
	//각 QnA 박스마다 클릭 감지 이벤트 리스너 달아줌
	//누르면 열리고 다시 누르면 닫히게 하는 코드
	const toggles = document.querySelectorAll(".QnA-item"); /* .QnA-toggle */
	
	toggles.forEach((toggle) => {
		toggle.addEventListener("click", () => {
			toggle.classList.toggle("active");
		})
	});
	
	
	$(document).ready(function(){
		
		//문의내역 버튼 클릭 시 문의하기 대신 QnA 리스트 출력
		$(".btn-QnAList").on("click", function(){
			$(".list-area").removeClass('dp-none');
			$(".write-area").addClass('dp-none');
		});	
		
		//문의하기 버튼 클릭 시 문의내역 QnA 리스트 대신 글쓰기 출력
		$(".btn-QnA").on("click", function(){
			$(".list-area").addClass('dp-none');
			$(".write-area").removeClass('dp-none');
		});
		
		//문의하기 글쓰기 시 QnA 리스트에 추가하고 문의내역 버튼 클릭됨
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
		
		//취소 버튼 클릭 시 작성된 내용이 있으면 한번 확인 후 문의내역 버튼 클릭
		$("#cancel").on("click", function(){
			
			let title = $("#title");
			let content = $("#content");
			
			if(title.val() != ""){
				if(confirm("작성된 내용이 있습니다.\n취소하시면 내용이 전부 사라집니다.\n\n정말로 취소하시겠습니까?")){
					title.val("");
					content.val("");
					$(".btn-QnAList").trigger("click");
				}else{
					return;
				}
			}else if(content.val() != ""){
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