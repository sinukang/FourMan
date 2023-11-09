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
	
	<style type="text/css">
		/*모달팝업 */
		#btnWrap {
			width: 500px;
			margin: 100px auto;
			}
		#popupBtn {
			border: 0;
			font-family: Helvetica Neue,"Pretendard-Regular", Helvetica, Arial, sans-serif;
			font-size: 14px;
			font-weight: 600;
			text-align: left;
		}
		#modalWrap {
			position: fixed; /* Stay in place */
			z-index: 200; /* Sit on top */
			padding-top: 100px; /* Location of the box */
			left: 0;
			top: 0;
			width: 100%; /* Full width */
			height: 100%; /* Full height */
			overflow: auto; /* Enable scroll if needed */
			background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
			backdrop-filter: blur(1px);
			display: none;
		}
		
		#modalBody {
			display: flex;
			justify-content: center;
			flex-direction: row-reverse;
			margin: -40px 0 0 25px;
		}
		
		#closeBtn {
			float:right;
			font-weight: bold;
			color: white;
			font-size:40px;
			cursor: pointer;
		}
	</style>
	
</head>
<body>
	<jsp:include page="../source/include/header.jsp"/>
	<div class="wrap">
		<div class="gallery">
			<h1>GALLERY</h1>
		</div>
		<div class="container">
			<table class="wrap-table">
				<tr>
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
					</td>
				</tr>
				<tr>
					<td>
					<div class="inner-table">
						<button type="button" class="popupBtn" id="popupBtn"> <!-- 모달팝업 버튼 -->
							<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
								<tr>
									<td colspan="2" style="padding-left: 10px;">클릭시 모달 팝업창</td>
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
							<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
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
							<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
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
							<table class="table-cont" style=" cursor: pointer;" onclick="location.href='목적지 링크주소(URL);">
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
				</tr>
				<tr>
					<td colspan="4" class="write-btn">
						<label class="input-button" for="input-write">글쓰기</label>
						<input type="button" id="input-write" name="btn" style="display:none;" onclick="location.href='${pageContext.request.contextPath}/board/galleryWrite.do';">
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
	
	
	<!-- 모달 팝업 스크립트 -->
	<script type="text/javascript">

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
		
		modal.onclick = function(e) {
			modal.style.display = 'none';
		}

		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<!-- 모달 팝업 스크립트 -->
	
</body>
</html>