<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리</title>
<link href="../source/css/home.css" type="text/css" rel="stylesheet">
<link href="../source/css/gallery/galleryList.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>

	<jsp:include page="../source/include/header.jsp"/>
	
	<div class="container">
		<div class="container-title">
			<h1>GALLERY</h1>
		</div>
		<div class="inner-container">
			<table class="wrap-table">
				<!-- <tr> -->
				<c:forEach var="bv" items="${bv_alist}" varStatus="status">
					<c:if test="${status.index % 4 == 0}">
						<tr>
					</c:if>
					<td class="td-inner">
						<div class="inner-table">
							<button type="button" id="popupBtn" class="popupBtn" value="${bv.bdno}"> <!-- 모달팝업 버튼 -->
								<table class="table-cont">
									<tr>
										<td class="td-nickname">${bv.mbname}</td>
									</tr>
									<tr>
										<td class="td-img">
											<div class="div-img">
												<img src="${pageContext.request.contextPath}/source/galleryImages/${bv.bdFilename[0]}" alt="대체 이미지 없음"/>
											</div>
										</td>
									</tr>
								</table>
							</button>
							<div class="info-area">
								<div class="title-area">
									<span class="span-nickname">${bv.bdtitle}</span>
								</div>
								<div class="like-area">
									<input type="hidden" value="${bv.bdno}">
									<c:choose>
										<c:when test="${bv.bdLikeYN == 'Y'}">
											<span class="span-bdLikeY">♥</span>
										</c:when>
										<c:otherwise>
											<span class="span-bdLikeN">♡</span>
										</c:otherwise>
									</c:choose>							
								</div>
							</div>
						</div>
					</td>
					<c:if test="${status.index % 4 == 3}">
						</tr>
					</c:if>					
				</c:forEach>
				
				<tr>
					<td colspan="4" class="write-btn">
						<div style="margin-top: 28px;">
							<label class="input-button" for="input-write">글쓰기</label>
							<input type="button" id="input-write" name="btn" style="display:none;" onclick="location.href='${pageContext.request.contextPath}/board/galleryWrite.do';">
						</div>
					</td>
				</tr>
			</table>
		</div>
		<c:set var="keyword" value="&keyword=${pm.scri.keyword}"/>
		<div class="pagination-area">
			<table class="page-table">
				<tr>
					<c:if test="${pm.prev}">
						<td>
							<a class="page-num" href="${pageContext.request.contextPath}/board/galleryList.do?page=${pm.startPage - 1}<c:if test="${pm.scri.keyword ne ''}">${keyword}</c:if>">◀</a>
						</td>	
					</c:if>
					<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}" step="1">
						<c:choose>
							<c:when test="${pm.scri.page  == i}">			
								<td>
									<a class="page-num currentPageNum" href="${pageContext.request.contextPath}/board/galleryList.do?page=${i}<c:if test="${pm.scri.keyword ne ''}">${keyword}</c:if>">${i}</a>
								</td>
							</c:when>
							<c:otherwise>
								<td>
									<a class="page-num" href="${pageContext.request.contextPath}/board/galleryList.do?page=${i}<c:if test="${pm.scri.keyword ne ''}">${keyword}</c:if>">${i}</a>
								</td>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${pm.next && pm.endPage > 0}">
						<td>
							<a href="${pageContext.request.contextPath}/board/galleryList.do?page=${pm.endPage + 1}${keyword}">▶</a>
						</td>
					</c:if>
				</tr>
			</table>
		</div>
	</div>
	
	<!-- 모달 팝업 영역 -->
	<div id="modalWrap" class="modalWrap">
		<div id="modalBody">
			<span id="closeBtn">&times;</span>
			<div id="modal-include">
				
			</div>
		</div>
	</div>
	
	<jsp:include page="../source/include/footer.jsp"/>
	
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script type="text/javascript">

	/* 모달 팝업 스크립트 */
	const popup = document.querySelectorAll('.popupBtn');
	const modal = document.getElementById('modalWrap');
	const closeBtn = document.getElementById('closeBtn');
		
	//모달 영역 밖 클릭 시 모달 닫음
// 	window.onclick = function(e){
// 		if(e.target.className != "modalWrap"){
// 			document.querySelector("#modalWrap").style.display = "none";
// 		}
// 	}

	//모달 영역 밖 클릭 시 모달 닫음
// 	window.onclick = function(event) {
// 		if (event.target != modal) {
// 			modal.style.display = "none";
// 		}
// 	}
	
	//X버튼 클릭 시 모달 닫음
	closeBtn.onclick = function() {
		modal.style.display = 'none';
	}
	
	/* 슬라이드 */	
	var swiper = new Swiper(".mySwiper", {
		spaceBetween: 30,
		centeredSlides: true,
		autoHeight : true,
		slidesPerView: 1,
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
	});
	
	//제이쿼리 영역
	$(document).ready(function(){
		
		//글 클릭 시 상세보기 페이지 모달로 띄워주는 함수
		$(".popupBtn").on("click", function(){
			
			let bdno = $(this).val();
			
			$.ajax({
				type : "get",
				url : "${pageContext.request.contextPath}/board/galleryContentsInclude.do",
				data : {"bdno" : bdno},
				dataType : "html",
				cachce : false,
				success : function(data){
					$("#modal-include").html(data);
					$("#modalWrap").show();
					
				},
				error : function(){
					alert("popupBtn 에러");
				}
			});
		});
		
		//띄운 모달 안의 글 삭제 버튼
		$(".del-btn").on("click",function() {
			
			var password = prompt("비밀번호를 입력하세요:");
			var isConfirmed = confirm('정말 삭제하시겠습니까?');
			
			if(password === "1111"){
				
				if(isConfirmed){
					alert('삭제되었습니다.');
				}else{
					alert('삭제가 취소되었습니다.');
				}
			}else{
				alert('비밀번호가 올바르지 않습니다.');
			}
			
		});
		
		//띄운 모달 안의 글 좋아요 버튼
		$(".like-area").on("click",function() {
			
			let mbno = "${mbno}";
			
			if(!mbno){
				
				if(confirm("로그인이 필요한 기능입니다.\n\n로그인 하시겠습니까?")){
					location.href = "${pageContext.request.contextPath}/member/memberLogin.do";
				}else{
					return;
				}
				
			}else{
				let currentLike = $(this).children('span');
				let bdno = $(this).children('input').val();
				
				if(currentLike.text() === "♡") {
					
					$.ajax({
						type : "post",
						url : "${pageContext.request.contextPath}/board/boardLikeCntUpdate.do",
						data : {"bdno" : bdno},
						dataType : "json",
						cache : false,
						success : function(data){
							if(data.value == 1){
								currentLike.text("♥");
							}else{
								alert(data.value + "좋아요 추가 에러");
							}
							
						},
						error : function(data){
							alert("설정 에러");
						}
					});
					
				}else{
					
					$.ajax({
						type : "post",
						url : "${pageContext.request.contextPath}/board/boardLikeCntUpdateCancel.do",
						data : {"bdno" : bdno},
						dataType : "json",
						cache : false,
						success : function(data){
							if(data.value == 1){
								currentLike.text("♡");
							}else{
								alert(data.value + "좋아요 취소 에러");
							}							
						},
						error : function(){
							alert("취소 에러");
						}
					});					
				}
			}
			
			
		});	
		
	});
	//제이쿼리 영역 끝
	
</script>
</body>
</html>