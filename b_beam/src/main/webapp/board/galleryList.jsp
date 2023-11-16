<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../source/css/home.css" type="text/css" rel="stylesheet">
	<link href="../source/css/gallery/galleryList.css" type="text/css" rel="stylesheet">
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
				<c:forEach var="bv" items="${bv_alist}" varStatus="status">
				<%-- <c:out value="${status.index}"/> --%>
					<c:if test="${status.index % 4 == 0}">
						<tr>
					</c:if>
					<td>
					<div class="inner-table">
						<form id="modal-form${bv.bdno}" name="modal-form${bv.bdno}" class="modal-form" style="display: none;">
							<input type="hidden" name="bdno" value="${bv.bdno}">
						</form>
						<button type="button" class="popupBtn" id="popupBtn" onclick="modalPopUp(${bv.bdno})"> <!-- 모달팝업 버튼 -->
							<table class="table-cont" style=" cursor: pointer;">
								<tr>
									<td colspan="2" style="padding-left: 10px;">${bv.mbname}</td>
								</tr>
								<tr>
									<td colspan="2">
										<img src="${pageContext.request.contextPath}/source/galleryImages/${bv.bdFilename[0]}"/>
									</td>
								</tr>
								<tr>
									<td style="border-bottom:0; padding-left: 10px;">
										${bv.bdtitle}
									</td>
									<td class="like" style="border-bottom:0; padding-right: 10px;">
										<c:choose>
											<c:when test="${bv.bdLikeYN == 'Y'}">
												<span class="bdLikeY">♥</span>
											</c:when>
											<c:otherwise>
												<span class="bdLikeN">♡</span>
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</table>
						</button>
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
	<iframe name="testIframe" style="display: none;"></iframe>
	
	<jsp:include page="../source/include/footer.jsp"/>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
	
	<script type="text/javascript">

		/* 모달 팝업 스크립트 */
		const popup = document.querySelectorAll('.popupBtn');
		const modal = document.getElementById('modalWrap');
		const closeBtn = document.getElementById('closeBtn');
		
		/* for(var i = 0; i < popup.length; i++) {
			popup[i].onclick = function() {
				
				var form = document.querySelector("form-modal${bv.bdno}");
				
				modal.style.display='block';
			}
		} */
		
		function modalPopUp(idx){
			
			var mdform = document.querySelector("#modal-form"+idx);
			
			mdform.action = "${pageContext.request.contextPath}/board/galleryContentsInclude.do";
			mdform.method = "post";
			mdform.target = "testIframe";
			
			mdform.submit();
			
			modal.style.display = "block";
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
		
		$(".del-btn").on("click",function() {
		    var password = prompt("비밀번호를 입력하세요:");

		    if (password === "1111") {
		        var isConfirmed = confirm('정말 삭제하시겠습니까?');

		        if (isConfirmed) {
		            alert('삭제되었습니다.');
		        } else {
		            alert('삭제가 취소되었습니다.');
		        }
		    } else {
		        alert('비밀번호가 올바르지 않습니다.');
		    }
			
		});
		
		$(".like-button").on("click",function() {
			
			var currentlike = $(this).text();

	        if (currentlike === "♡") {
	            $(this).text("♥");
	        } else {
	            $(this).text("♡");
	        }
		});
		
		
		
	</script>
	
</body>
</html>