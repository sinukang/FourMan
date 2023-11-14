<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/gallery/gallery.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
	
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
				<c:forEach var="list" begin="1" end="10" step="1">
					<c:if test="${list%4 == 1}">
						<tr>
					</c:if>
					<td>
					<div class="inner-table">
						<button type="button" class="popupBtn" id="popupBtn"> <!-- 모달팝업 버튼 -->
							<table class="table-cont" style=" cursor: pointer;">
								<tr>
									<td colspan="2" style="padding-left: 10px;">닉네임</td>
								</tr>
								<tr>
									<td colspan="2"><img src="../source/images/test2.jpg"></td>
									
								</tr>
								<tr>
									<td style="border-bottom:0; padding-left: 10px;">
										전주 한옥마을 야경
									</td>
									<td class="like" style="border-bottom:0; padding-right: 10px;">
									♥
									</td>
								</tr>
							</table>
						</button>
					</div>
					</td>
					<c:if test="${list == 1 && list%4 == 0}">
						</tr>
					</c:if>					
				</c:forEach>
					<%-- <td>
					<div class="inner-table">
						<button type="button" class="popupBtn" id="popupBtn"> <!-- 모달팝업 버튼 -->
							<table class="table-cont" style=" cursor: pointer;">
								<tr>
									<td colspan="2" style="padding-left: 10px;">닉네임</td>
								</tr>
								<tr>
									<td colspan="2"><img src="../source/images/testimg.png"></td>
									
								</tr>
								<tr>
									<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
									<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
								</tr>
							</table>
						</button>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<button type="button" class="popupBtn" id="popupBtn"> <!-- 모달팝업 버튼 -->
							<table class="table-cont" style=" cursor: pointer;">
								<tr>
									<td colspan="2" style="padding-left: 10px;">닉네임</td>
								</tr>
								<tr>
									<td colspan="2"><img src="../source/images/test3.jpg"></td>
									
								</tr>
								<tr>
									<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
									<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
								</tr>
							</table>
						</button>
					</div>
					</td>
					<td>
					<div class="inner-table">
						<button type="button" class="popupBtn" id="popupBtn"> <!-- 모달팝업 버튼 -->
							<table class="table-cont" style=" cursor: pointer;">
								<tr>
									<td colspan="2" style="padding-left: 10px;">닉네임</td>
								</tr>
								<tr>
									<td colspan="2"><img src="../source/images/testimg.png"></td>
									
								</tr>
								<tr>
									<td style="border-bottom:0; padding-left: 10px;">전주 한옥마을 야경</td>
									<td class="like" style="border-bottom:0; padding-right: 10px;">♥</td>
								</tr>
							</table>
						</button>
					</div>
					</td> --%>
				<!-- </tr> -->
				
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
		<div class="page">
			<table class="page-num">
				<tr>
				<td><a href="">◀</a></td>
				<td><a href="">1</a></td>
				<td><a href="">2</a></td>
				<td><a href="">3</a></td>
				<td><a href="">4</a></td>
				<td><a href="">5</a></td>
				<td><a href="">▶</a></td>
				</tr>
			</table>
		</div>
	</div>
	
	
	<!-- 모달 팝업 영역 -->

	<div id="modalWrap">
		<div id="modalBody">
			<span id="closeBtn">&times;</span>
			<div id="modal-include">
			<jsp:include page="../board/galleryContentsInclude.jsp"/>
			</div>
		</div>
	</div>
	<!-- 모달 팝업 영역 -->
	
	
	<jsp:include page="../source/include/footer.jsp"/>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	
	<script type="text/javascript">

		/* 모달 팝업 스크립트 */
		const popup = document.querySelectorAll('.popupBtn');
		const modal = document.getElementById('modalWrap');
		const closeBtn = document.getElementById('closeBtn');
		
		for(var i = 0; i < popup.length; i++) {
			popup[i].onclick = function() {
				modal.style.display='block';
			}
		}
	
		closeBtn.onclick = function() {
			modal.style.display = 'none';
		}
		
/* 		modal.onclick = function(e) {
			modal.style.display = 'none';
		} */

		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
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
		
		$("#del-btn").on("click",function() {
			var isConfirmed = confirm('정말 삭제하시겠습니까?');
			
			if (isConfirmed) {
				alert('삭제되었습니다.'); 
			} else {
				alert('삭제가 취소되었습니다.'); 
			}
		});
	
	</script>
	
</body>
</html>